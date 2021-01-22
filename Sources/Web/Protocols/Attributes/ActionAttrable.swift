//
//  ActionAttrable.swift
//  Web
//
//  Created by Mihael Isaev on 18.12.2020.
//

import Foundation
import JavaScriptKit

public protocol ActionAttrable {
    @discardableResult
    func action<U: URLConformable>(_ value: U) -> Self
    @discardableResult
    func action<S>(_ value: S) -> Self where S: StateConvertible, S.Value: URLConformable
}

protocol _ActionAttrable: _AnyElement, ActionAttrable {}

extension ActionAttrable {
    /// Specifies where to send the form data when the form is submitted.
    ///
    /// Possible values:
    /// - An absolute URL - points to another web site (like action="http://www.example.com/example.htm")
    /// - A relative URL - points to a file within a web site (like action="example.htm")
    ///
    /// [More info →](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/action)
    @discardableResult
    public func action<U: URLConformable>(_ value: U) -> Self {
        guard let s = self as? _ActionAttrable else { return self }
        s.domElement.action = value.stringValue.jsValue()
        return self
    }
    
    /// Specifies where to send the form data when the form is submitted.
    ///
    /// Possible values:
    /// - An absolute URL - points to another web site (like action="http://www.example.com/example.htm")
    /// - A relative URL - points to a file within a web site (like action="example.htm")
    ///
    /// [More info →](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/action)
    @discardableResult
    public func action<S>(_ value: S) -> Self where S: StateConvertible, S.Value: URLConformable {
        action(value.stateValue.wrappedValue)
        value.stateValue.listen { self.action($0) }
        return self
    }
}

extension Form: _ActionAttrable {}
