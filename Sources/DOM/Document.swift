//
//  Document.swift
//  DOM
//
//  Created by Mihael Isaev on 16.11.2020.
//

import WebFoundation

public class Document: DOMElement, EventTarget {
    public lazy var storage: Storage = .init()
    public var jsValue: JSValue { domElement }
    
    public private(set) lazy var properties: DOMElementProperties = .init()
    
    public static var name: String { "\(Self.self)".lowercased() }
    
    public let window: Window
    
    public var domElement: JSValue
    
    var scripts: [(Script, JSValue)] = []
    
    @State public var title = ""
    @State public var metaDescription = ""
    @State public internal(set) var isVisible = false
    @State public internal(set) var isInForeground = false
    @State public internal(set) var isActive = false
    
    lazy var titleElement = Title(in: self)
    lazy var metaDescriptionElement = Meta(in: self)
    
    #if arch(wasm32)
    public lazy var head = Head(domElement.head)
    public lazy var body = Body(domElement.body)
    #else
    public lazy var head = Head(JSValue(""))
    public lazy var body = Body(JSValue(""))
    #endif
    
    func createElement(_ name: String) -> JSValue {
        #if arch(wasm32)
        return domElement.createElement(name)
        #else
        return JSValue.init(stringLiteral: "")
        #endif
    }
    
    init (_ window: Window) {
        #if arch(wasm32)
        domElement = JSObject.global.document
        // reset body
        domElement.body.object?.innerHTML = "";
        #else
        domElement = JSValue("")
        #endif
        self.window = window
        #if !WEBPREVIEW
        setupTitle()
        setupMetaDescription()
        window.$isInForeground.merge(with: $isInForeground)
        window.$isActive.merge(with: $isActive)
        $isVisible.listen { old, new in
            guard old != new else { return }
            self.isInForeground = new
        }
        #endif
    }
    
    private func setupTitle() {
        // remove already existing title node
        var predefinedTitle = ""
        if let titles = domElement.getElementsByTagName.function?.callAsFunction(optionalThis: domElement.object, "title") {
            if let existingTitle = titles.item.function?.callAsFunction(optionalThis: titles.object, 0),
               !existingTitle.isNull,
               !existingTitle.isUndefined {
                predefinedTitle = existingTitle.innerText.string ?? ""
                head.domElement.removeChild.function?.callAsFunction(optionalThis: head.domElement.object, existingTitle)
            }
        }
        // set same title in the new title node
        titleElement.value = predefinedTitle
        head.appendChild(titleElement)
        $title.listen { old, new in
            guard old != new else { return }
            Dispatch.async {
                self.titleElement.value = new
            }
        }
    }
    
    private func setupMetaDescription() {
        // remove already existing metaDescription node
        var predefinedMetaDescription = ""
        if let existingMetaDescription = domElement.querySelector.function?.callAsFunction(optionalThis: domElement.object, "meta[name=\"description\"]"),
           !existingMetaDescription.isNull,
           !existingMetaDescription.isUndefined {
            predefinedMetaDescription = existingMetaDescription.content.string ?? ""
            head.domElement.removeChild.function?.callAsFunction(optionalThis: head.domElement.object, existingMetaDescription)
        }
        // set same content in the new metaDescription node
        metaDescriptionElement.name = "description"
        metaDescriptionElement.content = predefinedMetaDescription
        head.appendChild(metaDescriptionElement)
        $metaDescription.listen { old, new in
            guard old != new else { return }
            Dispatch.async {
                self.metaDescriptionElement.content = new
            }
        }
    }
    
    func updateVisibility() {
        #if arch(wasm32)
        isVisible = domElement.visibilityState.string == "visible"
        #endif
    }
    
    public func didAddToDOM() {}
    public func didRemoveFromDOM() {}
    
    /// Returns the first Element within the document that matches the specified selector.
    ///
    /// [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector)
    public func querySelector(_ selector: String) -> BaseElement? {
        guard let element = domElement[dynamicMember: "querySelector"].function?.callAsFunction(optionalThis: domElement.object, selector) else { return nil }
        guard !element.isNull && !element.isUndefined else { return nil }
        return BaseElement(element)
    }
    
    /// Returns a list of the document's elements that match the specified group of selectors.
    ///
    /// [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelectorAll)
    public func querySelectorAll(_ selector: String) -> [BaseElement] {
		print("domElement.querySelector: \(domElement.querySelector.function?.callAsFunction(optionalThis: domElement.object, selector) ?? "n/a")")
//        if let iterator = domElement.querySelector.function?.callAsFunction(selector) {//.array?.makeIterator() {
//            print("iterator: \(iterator)")
//        } else {
//            print("not iterator")
//        }
        return []
    }
}
