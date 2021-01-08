//
//  Flex.swift
//  SwifCSS
//
//  Created by Mihael Isaev on 10.07.2020.
//

/// A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
///
/// ```html
/// -ms-flex: 1; /* IE 10 */
/// flex: 1;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_flex.asp)
public class FlexProperty: _Property {
    public class MS: _Property {
        public var propertyKey: PropertyKey<FlexValue> { .flex_ms }
        public var propertyValue: FlexValue
        var _content = _PropertyContent<FlexValue>()
        
        public init (_ value: FlexValue) {
            propertyValue = value
        }
    
        public init<U: UnitValuable>(grow: NumericValue, shrink: NumericValue, basis: U) {
            propertyValue = .init(grow: grow, shrink: shrink, basis: basis)
        }
    }
    
    public var propertyKey: PropertyKey<FlexValue> { .flex }
    public var propertyValue: FlexValue
    public var propertyAliases: [AnyProperty]
    var _content = _PropertyContent<FlexValue>()
    
    public init (_ value: FlexValue) {
        propertyValue = value
        propertyAliases = [MS(value)]
    }
    
    public init<U: UnitValuable>(grow: NumericValue, shrink: NumericValue, basis: U) {
        propertyValue = .init(grow: grow, shrink: shrink, basis: basis)
        propertyAliases = [MS(grow: grow, shrink: shrink, basis: basis)]
    }
}

extension PropertyKey {
    public static var flex_ms: PropertyKey<FlexValue> { "-ms-flex".propertyKey() }
    static var flex: PropertyKey<FlexValue> { "flex".propertyKey() }
}

public struct FlexValue: CustomStringConvertible {
    public let value: String
    
    public init<U: UnitValuable>(grow: NumericValue, shrink: NumericValue, basis: U) {
        value = [grow.numericValue, shrink.numericValue, basis.description].joined(separator: " ")
    }
    
    public var description: String { value }
}