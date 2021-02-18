//
//  FormAttrable.swift
//  Web
//
//  Created by Mihael Isaev on 19.12.2020.
//

import Foundation

public protocol FormAttrable {
    @discardableResult
    func form(_ value: String) -> Self
    @discardableResult
    func form(_ value: BaseElement) -> Self
    @discardableResult
    func form<S>(_ value: S) -> Self where S: StateConvertible, S.Value == String
    @discardableResult
    func form<S>(_ value: S) -> Self where S: StateConvertible, S.Value == BaseElement
}

protocol _FormAttrable: _AnyElement, FormAttrable {}

extension FormAttrable {
    /// Defines the ID of form that is the owner of the element.
    ///
    /// Applicable to `<button>`, `<fieldset>`, `<input>`, `<label>`,
    /// `<meter>`, `<object>`, `<output>`, `<progress>`, `<select>`, `<textarea>`
    ///
    /// [More info →](https://www.w3schools.com/tags/att_form.asp)
    @discardableResult
    public func form(_ value: String) -> Self {
        guard let s = self as? _FormAttrable else { return self }
        s.setAttribute("form", value)
        return self
    }
    
    /// Defines the ID of form that is the owner of the element.
    ///
    /// Applicable to `<button>`, `<fieldset>`, `<input>`, `<label>`,
    /// `<meter>`, `<object>`, `<output>`, `<progress>`, `<select>`, `<textarea>`
    ///
    /// [More info →](https://www.w3schools.com/tags/att_form.asp)
    @discardableResult
    public func form(_ value: BaseElement) -> Self {
        form(value.uid)
    }
    
    /// Defines the ID of form that is the owner of the element.
    ///
    /// Applicable to `<button>`, `<fieldset>`, `<input>`, `<label>`,
    /// `<meter>`, `<object>`, `<output>`, `<progress>`, `<select>`, `<textarea>`
    ///
    /// [More info →](https://www.w3schools.com/tags/att_form.asp)
    @discardableResult
    public func form<S>(_ value: S) -> Self where S: StateConvertible, S.Value == String {
        form(value.stateValue.wrappedValue)
        value.stateValue.listen { self.form($0) }
        return self
    }
    
    /// Defines the ID of form that is the owner of the element.
    ///
    /// Applicable to `<button>`, `<fieldset>`, `<input>`, `<label>`,
    /// `<meter>`, `<object>`, `<output>`, `<progress>`, `<select>`, `<textarea>`
    ///
    /// [More info →](https://www.w3schools.com/tags/att_form.asp)
    @discardableResult
    public func form<S>(_ value: S) -> Self where S: StateConvertible, S.Value == BaseElement {
        form(value.stateValue.wrappedValue)
        value.stateValue.listen { self.form($0) }
        return self
    }
}

extension Button: _FormAttrable {}
extension FieldSet: _FormAttrable {}
extension InputText: _FormAttrable {}
extension InputTel: _FormAttrable {}
extension InputEmail: _FormAttrable {}
extension InputPassword: _FormAttrable {}
extension InputSearch: _FormAttrable {}
extension InputURL: _FormAttrable {}
extension InputNumber: _FormAttrable {}
extension InputRange: _FormAttrable {}
extension InputImage: _FormAttrable {}
extension InputButton: _FormAttrable {}
extension InputSubmit: _FormAttrable {}
extension InputReset: _FormAttrable {}
extension InputHidden: _FormAttrable {}
extension InputCheckbox: _FormAttrable {}
extension InputRadio: _FormAttrable {}
extension InputColor: _FormAttrable {}
extension InputDateTime: _FormAttrable {}
extension InputDate: _FormAttrable {}
extension InputTime: _FormAttrable {}
extension InputWeek: _FormAttrable {}
extension InputMonth: _FormAttrable {}
extension InputFile: _FormAttrable {}
extension Label: _FormAttrable {}
extension Meter: _FormAttrable {}
extension Object: _FormAttrable {}
extension Output: _FormAttrable {}
extension Progress: _FormAttrable {}
extension Select: _FormAttrable {}
extension TextArea: _FormAttrable {}