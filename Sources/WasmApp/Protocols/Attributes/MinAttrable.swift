//
//  MinAttrable.swift
//  WasmApp
//
//  Created by Mihael Isaev on 19.12.2020.
//

import Foundation
import JavaScriptKit

public protocol MinAttrable {
    @discardableResult
    func min(_ value: Double) -> Self
    @discardableResult
    func min(_ value: State<Double>) -> Self
    @discardableResult
    func min<V>(_ expressable: ExpressableState<V, Double>) -> Self
}

protocol _MinAttrable: _AnyElement, MinAttrable {}

extension MinAttrable {
    /// Indicates the minimum value allowed.
    ///
    /// Applicable to <input>, <meter>
    ///
    /// [More info →](https://www.w3schools.com/tags/att_min.asp)
    @discardableResult
    public func min(_ value: Double) -> Self {
        guard let s = self as? _MinAttrable else { return self }
        s.domElement.min = value.jsValue()
        return self
    }
    
    /// Indicates the minimum value allowed.
    ///
    /// Applicable to <input>, <meter>
    ///
    /// [More info →](https://www.w3schools.com/tags/att_min.asp)
    @discardableResult
    public func min(_ value: State<Double>) -> Self {
        value.listen { self.min($0) }
        return self
    }
    
    /// Indicates the minimum value allowed.
    ///
    /// Applicable to <input>, <meter>
    ///
    /// [More info →](https://www.w3schools.com/tags/att_min.asp)
    @discardableResult
    public func min<V>(_ expressable: ExpressableState<V, Double>) -> Self {
        min(expressable.unwrap())
    }
}
extension Meter: _MinAttrable {}
extension InputNumber: _MinAttrable {}
extension InputRange: _MinAttrable {}

public protocol MinDateAttrable {
    @discardableResult
    func min(_ value: String) -> Self
    @discardableResult
    func min(_ value: State<String>) -> Self
    @discardableResult
    func min<V>(_ expressable: ExpressableState<V, String>) -> Self
}

protocol _MinDateAttrable: _AnyElement, MinDateAttrable {}

extension MinDateAttrable {
    /// Indicates the minimum value allowed.
    ///
    /// Applicable to <input>, <meter>
    ///
    /// [More info →](https://www.w3schools.com/tags/att_min.asp)
    @discardableResult
    public func min(_ value: String) -> Self {
        guard let s = self as? _MinDateAttrable else { return self }
        s.domElement.min = value.jsValue()
        return self
    }
    
    /// Indicates the minimum value allowed.
    ///
    /// Applicable to <input>, <meter>
    ///
    /// [More info →](https://www.w3schools.com/tags/att_min.asp)
    @discardableResult
    public func min(_ value: State<String>) -> Self {
        value.listen { self.min($0) }
        return self
    }
    
    /// Indicates the minimum value allowed.
    ///
    /// Applicable to <input>, <meter>
    ///
    /// [More info →](https://www.w3schools.com/tags/att_min.asp)
    @discardableResult
    public func min<V>(_ expressable: ExpressableState<V, String>) -> Self {
        min(expressable.unwrap())
    }
}
extension InputDateTime: _MinDateAttrable {}
extension InputDate: _MinDateAttrable {}
extension InputTime: _MinDateAttrable {}
extension InputWeek: _MinDateAttrable {}
extension InputMonth: _MinDateAttrable {}
