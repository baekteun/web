//
//  DOMElement.swift
//  DOM
//
//  Created by Mihael Isaev on 24.02.2021.
//

import WebFoundation

public protocol DOMElementable: Storageable {
    #if arch(wasm32)
    var domElement: JSValue { get set }
    #endif
}

public protocol DOMElement: DOMElementable, AnyElement {
    static var name: String { get }
    
    var properties: DOMElementProperties { get }
    
    func didAddToDOM()
    func didRemoveFromDOM()
    func appendChild(_ element: DOMElement)
    func shutdown()
}

extension DOMElement {
    var name: String { Self.name }
}

// TODO: https://developer.mozilla.org/en-US/docs/Web/API/Node
// TODO: https://developer.mozilla.org/en-US/docs/Web/API/Element
// TODO: https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement
extension DOMElement {
    // MARK: - Core Methods
    
    /// Adds the specified childNode argument as the last child to the current node.
    /// If the argument referenced an existing node on the DOM tree,
    /// the node will be detached from its current position and attached at the new position.
    ///
    /// [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/Node/appendChild)
    public func appendChild(_ element: DOMElement) {
        #if arch(wasm32)
        domElement.appendChild.function?.callAsFunction(optionalThis: domElement.object, element.domElement)
        properties.subElements.append(element)
        element.properties.parent = self
        Dispatch.async(element.didAddToDOM)
        #endif
        #if WEBPREVIEW
        properties.subElements.append(element)
        #endif
    }
    
    /// Removes the element from the children list of its parent.
    ///
    /// [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/Element/remove)
    @discardableResult
    public func remove() -> Self {
        #if arch(wasm32)
        domElement.remove.function?.callAsFunction(optionalThis: domElement.object)
        self.properties.removeSubelementsRecursively()
        self.properties.parent?.properties.subElements.removeAll(where: { subElement in
            return subElement.properties._id == self.properties._id
        })
        self.properties.parent = nil
        self.didRemoveFromDOM()
        #endif
        return self
    }
    
    // MARK: - Set Attribute

    #if arch(wasm32)
    private func _setAttribute(_ key: String, _ value: JSValue) {
        domElement[dynamicMember: "setAttribute"].function?.callAsFunction(optionalThis: domElement.object, key, value.jsValue)
    }
    #endif
    
    @discardableResult
    public func attribute(_ key: String, _ value: Bool, _ mode: AttributeBoolMode = .keyWithoutValue) -> Self {
        #if arch(wasm32)
        switch mode {
        case .trueFalse:
            domElement[dynamicMember: "setAttribute"].function?.callAsFunction(optionalThis: domElement.object, key, value.jsValue)
        case .keyAsValue:
            if value {
                domElement[dynamicMember: "setAttribute"].function?.callAsFunction(optionalThis: domElement.object, key, key.jsValue)
            } else {
                domElement[dynamicMember: "removeAttribute"].function?.callAsFunction(optionalThis: domElement.object, key)
            }
        case .yesNo:
            domElement[dynamicMember: "setAttribute"].function?.callAsFunction(optionalThis: domElement.object, key, (value ? "yes" : "no").jsValue)
        case .keyWithoutValue:
            domElement[dynamicMember: key] = value.jsValue()
        }
        #else
        #if WEBPREVIEW
        let stringValue: String?
        switch mode {
        case .trueFalse: stringValue = value ? "true" : "false"
        case .keyAsValue: stringValue = value ? key : nil
        case .yesNo: stringValue = value ? "yes" : "no"
        case .keyWithoutValue: stringValue = value ? "" : nil
        }
        if let value = stringValue {
            properties.attributes[key] = value
        } else {
            properties.attributes.removeValue(forKey: key)
        }
        #endif
        #endif
        return self
    }
    
    @discardableResult
    public func attribute(_ key: String, _ value: Double) -> Self {
        #if arch(wasm32)
        _setAttribute(key, value.jsValue)
        #else
        attribute(key, "\(value)")
        #endif
        return self
    }
    
    @discardableResult
    public func attribute(_ key: String, _ value: Int) -> Self {
        #if arch(wasm32)
        _setAttribute(key, value.jsValue)
        #else
        attribute(key, "\(value)")
        #endif
        return self
    }
    
    @discardableResult
    public func attribute(_ key: String, _ value: UInt) -> Self {
        attribute(key, Int(value))
    }
    
    @discardableResult
    public func attribute(_ key: String, _ value: String) -> Self {
        #if arch(wasm32)
        _setAttribute(key, value.jsValue)
        #else
        #if WEBPREVIEW
        properties.attributes[key] = value
        #endif
        #endif
        return self
    }
    
    func callFunction(_ name: String, this: Bool = true, args: WebJSValue...) {
        #if arch(wasm32)
        if this {
            domElement[dynamicMember: name].function?.callAsFunction(optionalThis: domElement.object, arguments: args.map { $0.webValue })
        } else {
            // TODO: implement global function calling?
//            domElement[dynamicMember: name].function?.callAsFunction(arguments: args.map { $0.webValue })
        }
        #endif
    }
}

extension DOMElement {
    public func shutdown() {
        storage.shutdown()
    }
}

public final class DOMElementProperties {
    let uid: String = .shuffledAlphabet(8, letters: "AaBbCcDdEeFfGgJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz")
    
    public lazy var _id = uid
    public lazy var _classes: Set<String> = []

    public internal(set) var parent: DOMElement? = nil
    public internal(set) var subElements: [DOMElement] = []
    public var positionChangeListeners: [() -> Void] = []
    #if !arch(wasm32)
    public var styles: [String: String] = [:]
    public var attributes: [String: String] = [:]
    #endif
    
    init () {}
    
    func removeSubelementsRecursively() {
        func removeSubElements(_ subElements: inout [DOMElement]) {
            while let subElement = subElements.popLast() {
                removeSubElements(&subElement.properties.subElements)
                subElement.properties.parent = nil
                subElement.didRemoveFromDOM()
            }
        }
        removeSubElements(&subElements)
    }
}

public enum AttributeBoolMode {
    /// like `<audio muted>`
    /// ```html
    /// <audio muted>
    /// ```
    case keyWithoutValue
    
    /// like **true/false**
    /// ```html
    /// <p spellcheck="true">Text</p>
    /// ```
    case trueFalse
    
    /// like **yes/no**
    /// ```html
    /// <span translate="no">BrandName</span>
    /// ```
    case yesNo
    
    /// like **checked="checked"**
    /// ```html
    /// <input checked="checked">
    /// ```
    case keyAsValue
}
