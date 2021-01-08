//
//  BorderRadiusType.swift
//  SwifCSS
//
//  Created by Mihael Isaev on 10.07.2020.
//

public struct BorderRadiusType: Initialable, Inheritable, Lengthable, Percentable, CustomStringConvertible {
    public let value: String
    
    public init (_ value: String) { self.value = value }
    
    public var description: String { value }
}