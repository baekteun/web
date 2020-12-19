//
//  AcceptAttrable.swift
//  
//
//  Created by Mihael Isaev on 18.12.2020.
//

import Foundation
import JavaScriptKit

public protocol AcceptAttrable {
    @discardableResult
    func accept(_ value: String) -> Self
    @discardableResult
    func accept(_ value: [String]) -> Self
    @discardableResult
    func accept(_ value: String...) -> Self
    @discardableResult
    func accept(_ value: State<String>) -> Self
    @discardableResult
    func accept<V>(_ expressable: ExpressableState<V, String>) -> Self
    @discardableResult
    func accept(_ value: State<[String]>) -> Self
    @discardableResult
    func accept<V>(_ expressable: ExpressableState<V, [String]>) -> Self
}

protocol _AcceptAttrable: _AnyElement, AcceptAttrable {}

extension AcceptAttrable {
    /// List of types the server accepts, typically a file type.
    ///
    /// Applicable to <form> and <input>
    ///
    /// [More info →](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/accept)
    @discardableResult
    public func accept(_ value: String) -> Self {
        guard let s = self as? _AcceptAttrable else { return self }
        s.domElement.accept = value.jsValue()
        return self
    }
    
    /// List of types the server accepts, typically a file type.
    ///
    /// Applicable to <form> and <input>
    ///
    /// [More info →](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/accept)
    @discardableResult
    public func accept(_ value: [String]) -> Self {
        accept(value.joined(separator: ","))
    }
    
    /// List of types the server accepts, typically a file type.
    ///
    /// Applicable to <form> and <input>
    ///
    /// [More info →](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/accept)
    @discardableResult
    public func accept(_ value: String...) -> Self {
        accept(value)
    }
    
    /// List of types the server accepts, typically a file type.
    ///
    /// Applicable to <form> and <input>
    ///
    /// [More info →](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/accept)
    @discardableResult
    public func accept(_ value: State<String>) -> Self {
        value.listen { self.accept($0) }
        return self
    }
    
    /// List of types the server accepts, typically a file type.
    ///
    /// Applicable to <form> and <input>
    ///
    /// [More info →](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/accept)
    @discardableResult
    public func accept<V>(_ expressable: ExpressableState<V, String>) -> Self {
        accept(expressable.unwrap())
    }
    
    /// List of types the server accepts, typically a file type.
    ///
    /// Applicable to <form> and <input>
    ///
    /// [More info →](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/accept)
    @discardableResult
    public func accept(_ value: State<[String]>) -> Self {
        value.listen { self.accept($0) }
        return self
    }
    
    /// List of types the server accepts, typically a file type.
    ///
    /// Applicable to <form> and <input>
    ///
    /// [More info →](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/accept)
    @discardableResult
    public func accept<V>(_ expressable: ExpressableState<V, [String]>) -> Self {
        accept(expressable.unwrap())
    }
}

extension Form: _AcceptAttrable {}
extension Input: _AcceptAttrable {}