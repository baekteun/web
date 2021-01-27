//
//  Selectable.swift
//  Web
//
//  Created by Mihael Isaev on 16.01.2021.
//

public protocol Selectable {}

protocol _Selectable: _AnyElement, Selectable {}

extension Selectable {
    /// The HTMLInputElement.select() method selects all the text
    /// in a `<textarea>` element or in an `<input>` element that includes a text field.
    public func select() {
        guard let s = self as? _Selectable else { return }
        s.callFunction("select")
    }
}
