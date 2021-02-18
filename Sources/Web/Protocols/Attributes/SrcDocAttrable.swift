//
//  SrcDocAttrable.swift
//  Web
//
//  Created by Mihael Isaev on 19.12.2020.
//

import Foundation

public protocol SrcDocAttrable {
    @discardableResult
    func srcDoc(_ value: String) -> Self
    @discardableResult
    func srcDoc<S>(_ value: S) -> Self where S: StateConvertible, S.Value == String
}

protocol _SrcDocAttrable: _AnyElement, SrcDocAttrable {}

extension SrcDocAttrable {
    /// Assigns a slot in a shadow DOM shadow tree to an element.
    ///
    /// Points to slot name.
    ///
    /// [More info →](https://developer.mozilla.org/en-US/docs/Web/Web_Components/Using_templates_and_slots)
    @discardableResult
    public func srcDoc(_ value: String) -> Self {
        guard let s = self as? _SrcDocAttrable else { return self }
        s.setAttribute("srcdoc", value)
        return self
    }
    
    /// Assigns a slot in a shadow DOM shadow tree to an element.
    ///
    /// Points to slot name.
    ///
    /// [More info →](https://developer.mozilla.org/en-US/docs/Web/Web_Components/Using_templates_and_slots)
    @discardableResult
    public func srcDoc<S>(_ value: S) -> Self where S: StateConvertible, S.Value == String {
        srcDoc(value.stateValue.wrappedValue)
        value.stateValue.listen { self.srcDoc($0) }
        return self
    }
}

extension IFrame: _SrcDocAttrable {}