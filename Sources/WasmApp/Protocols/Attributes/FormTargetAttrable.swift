//
//  FormTargetAttrable.swift
//  WasmApp
//
//  Created by Mihael Isaev on 19.12.2020.
//

import Foundation
import JavaScriptKit

public protocol FormTargetAttrable {
    @discardableResult
    func formTarget(_ value: TargetType) -> Self
    @discardableResult
    func formTarget(_ value: State<TargetType>) -> Self
    @discardableResult
    func formTarget<V>(_ expressable: ExpressableState<V, TargetType>) -> Self
}

protocol _FormTargetAttrable: _AnyElement, FormTargetAttrable {}

extension FormTargetAttrable {
    /// If the button/input is a submit button (type="submit"),
    /// this attribute specifies the browsing context (for example, tab, window, or inline frame)
    /// in which to display the response that is received after submitting the form.
    /// If this attribute is specified, it overrides the target attribute of the button's form owner.
    ///
    /// Applicable to <button>, <input>
    ///
    /// [More info →](https://www.w3schools.com/tags/att_form_target.asp)
    @discardableResult
    public func formTarget(_ value: TargetType) -> Self {
        guard let s = self as? _FormTargetAttrable else { return self }
        s.domElement.formtarget = value.rawValue.jsValue()
        return self
    }
    
    /// If the button/input is a submit button (type="submit"),
    /// this attribute specifies the browsing context (for example, tab, window, or inline frame)
    /// in which to display the response that is received after submitting the form.
    /// If this attribute is specified, it overrides the target attribute of the button's form owner.
    ///
    /// Applicable to <button>, <input>
    ///
    /// [More info →](https://www.w3schools.com/tags/att_form_target.asp)
    @discardableResult
    public func formTarget(_ value: State<TargetType>) -> Self {
        value.listen { self.formTarget($0) }
        return self
    }
    
    /// If the button/input is a submit button (type="submit"),
    /// this attribute specifies the browsing context (for example, tab, window, or inline frame)
    /// in which to display the response that is received after submitting the form.
    /// If this attribute is specified, it overrides the target attribute of the button's form owner.
    ///
    /// Applicable to <button>, <input>
    ///
    /// [More info →](https://www.w3schools.com/tags/att_form_target.asp)
    @discardableResult
    public func formTarget<V>(_ expressable: ExpressableState<V, TargetType>) -> Self {
        formTarget(expressable.unwrap())
    }
}

extension Button: _FormTargetAttrable {}
extension Input: _FormTargetAttrable {}
