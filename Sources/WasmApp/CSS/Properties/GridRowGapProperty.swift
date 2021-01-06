//
//  GridRowGapProperty.swift
//  WasmApp
//
//  Created by Mihael Isaev on 06.01.2021.
//

/// Specifies the size of the gap between rows
///
/// ```html
/// grid-row-gap: 50px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-row-gap.asp)
public class GridRowGapProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .gridRowGap }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()
    
    public init<U: UnitValuable>(_ v: U) {
        propertyValue = UnitValue(v.value.doubleValue, v.unit)
    }
}

extension PropertyKey {
    public static var gridRowGap: PropertyKey<UnitValue> { "grid-row-gap".propertyKey() }
}
