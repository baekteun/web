//
//  GridTemplateRowsType.swift
//  SwifCSS
//
//  Created by Mihael Isaev on 09.07.2020.
//

public struct GridTemplateRowsType: Noneable, Autoable, Lengthable, CustomStringConvertible {
    public let value: String
    
    public init (_ value: String) { self.value = value }
    
    /// Sets the size of each row to depend on the largest item in the row
    public static var maxContent: Self { .init("max-content") }
    
    /// Sets the size of each row to depend on the largest item in the row
    public static var minContent: Self { .init("min-content") }
    
    public var description: String { value }
}
