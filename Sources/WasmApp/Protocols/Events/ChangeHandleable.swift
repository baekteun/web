//
//  ChangeHandleable.swift
//  WasmApp
//
//  Created by Mihael Isaev on 29.11.2020.
//

import Foundation
import JavaScriptKit

public protocol ChangeHandleable {
    @discardableResult
    func onChange(_ handler: @escaping () -> Void) -> Self
}

protocol _ChangeHandleable: _AnyElement, ChangeHandleable {
    typealias ChangeClosure = JSClosure
    
    var changeClosure: ChangeClosure? { get set }
    var changeHandler: (HandledEvent) -> Void { get set }
}

extension ChangeHandleable {
    /// The onchange event occurs when the value of an element has been changed.
    ///
    /// Applicable to <input type="checkbox">, <input type="color">, <input type="date">,
    /// <input type="datetime">, <input type="email">, <input type="file">,
    /// <input type="month">, <input type="number">, <input type="password">,
    /// <input type="radio">, <input type="range">, <input type="search">,
    /// <input type="tel">, <input type="text">, <input type="time">,
    /// <input type="url">, <input type="week">, <select> and <textarea>
    ///
    /// [More info →](https://www.w3schools.com/jsref/event_onchange.asp)
    @discardableResult
    public func onChange(_ handler: @escaping (HandledEvent) -> Void) -> Self {
        guard let s = self as? _ChangeHandleable else { return self }
        s.changeClosure?.release()
        s.changeClosure = JSClosure { event in
            s.changeHandler(.init(event.jsValue()))
        }
        s.domElement.onchange = s.changeClosure.jsValue()
        s.changeHandler = handler
        return self
    }
    
    @discardableResult
    public func onChange(_ handler: @escaping () -> Void) -> Self {
        onChange { _ in handler() }
    }
}
