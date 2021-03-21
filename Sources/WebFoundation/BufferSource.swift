//
//  BufferSource.swift
//  WebFoundation
//
//  Created by Mihael Isaev on 20.03.2021.
//

import JavaScriptKit

public protocol BufferSource {
    var jsValue: JSValue { get }
}

extension Array: BufferSource where Element == UInt8 {
    public var jsValue: JSValue { jsValue() }
}
