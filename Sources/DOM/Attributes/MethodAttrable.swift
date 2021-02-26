//
//  MethodAttrable.swift
//  DOM
//
//  Created by Mihael Isaev on 19.12.2020.
//

import Foundation

public protocol MethodAttrable: DOMElement {
    @discardableResult
    func method(_ value: MethodType) -> Self
    @discardableResult
    func method<S>(_ value: S) -> Self where S: StateConvertible, S.Value == MethodType
}

extension MethodAttrable {
    /// Defines which HTTP method to use when submitting the form.
    /// Can be GET (default) or POST.
    ///
    /// Applicable to `<form>`
    ///
    /// [More info →](https://www.w3schools.com/tags/att_method.asp)
    @discardableResult
    public func method(_ value: MethodType) -> Self {
        setAttribute("method", value.value)
        return self
    }
    
    /// Defines which HTTP method to use when submitting the form.
    /// Can be GET (default) or POST.
    ///
    /// Applicable to `<form>`
    ///
    /// [More info →](https://www.w3schools.com/tags/att_method.asp)
    @discardableResult
    public func method<S>(_ value: S) -> Self where S: StateConvertible, S.Value == MethodType {
        method(value.stateValue.wrappedValue)
        value.stateValue.listen { self.method($0) }
        return self
    }
}

extension Form: MethodAttrable {}