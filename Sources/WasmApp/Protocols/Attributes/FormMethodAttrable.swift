//
//  FormMethodAttrable.swift
//  WasmApp
//
//  Created by Mihael Isaev on 19.12.2020.
//

import Foundation
import JavaScriptKit

public protocol FormMethodAttrable {
    @discardableResult
    func formMethod(_ value: MethodType) -> Self
    @discardableResult
    func formMethod(_ value: State<MethodType>) -> Self
    @discardableResult
    func formMethod<V>(_ expressable: ExpressableState<V, MethodType>) -> Self
}

protocol _FormMethodAttrable: _AnyElement, FormMethodAttrable {}

extension FormMethodAttrable {
    /// If the button/input is a submit button (type="submit"),
    /// this attribute sets the submission method to use during form submission (GET, POST, etc.).
    /// If this attribute is specified, it overrides the method attribute of the button's form owner.
    ///
    /// Applicable to <button>, <input>
    ///
    /// [More info →](https://www.w3schools.com/tags/att_form_method.asp)
    @discardableResult
    public func formMethod(_ value: MethodType) -> Self {
        guard let s = self as? _FormMethodAttrable else { return self }
        s.domElement.formmethod = value.value.jsValue()
        return self
    }
    
    /// If the button/input is a submit button (type="submit"),
    /// this attribute sets the submission method to use during form submission (GET, POST, etc.).
    /// If this attribute is specified, it overrides the method attribute of the button's form owner.
    ///
    /// Applicable to <button>, <input>
    ///
    /// [More info →](https://www.w3schools.com/tags/att_form_method.asp)
    @discardableResult
    public func formMethod(_ value: State<MethodType>) -> Self {
        value.listen { self.formMethod($0) }
        return self
    }
    
    /// If the button/input is a submit button (type="submit"),
    /// this attribute sets the submission method to use during form submission (GET, POST, etc.).
    /// If this attribute is specified, it overrides the method attribute of the button's form owner.
    ///
    /// Applicable to <button>, <input>
    ///
    /// [More info →](https://www.w3schools.com/tags/att_form_method.asp)
    @discardableResult
    public func formMethod<V>(_ expressable: ExpressableState<V, MethodType>) -> Self {
        formMethod(expressable.unwrap())
    }
}

extension Button: _FormMethodAttrable {}
extension Input: _FormMethodAttrable {}
