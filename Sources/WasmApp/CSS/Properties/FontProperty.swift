//
//  Font.swift
//  SwifCSS
//
//  Created by Mihael Isaev on 10.07.2020.
//

/// A shorthand property for the font-style, font-variant, font-weight, font-size/line-height, and the font-family properties
///
/// ```html
/// font: 15px Arial, sans-serif;
/// font: italic small-caps bold 12px/30px Georgia, serif;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_font_font.asp)
public class FontProperty: _Property {
    public var propertyKey: PropertyKey<FontValue> { .font }
    public var propertyValue: FontValue
    var _content = _PropertyContent<FontValue>()
    
    public init (_ value: FontValue) {
        propertyValue = value
    }
    
    public init (_ type: FontType) {
        propertyValue = .init(type)
    }
    
    public init <F: UnitValuable, L: UnitValuable>(
        style: FontStyleType? = nil,
        variant: FontVariantType? = nil,
        weight: FontWeightType? = nil,
        fontSize: F? = nil,
        lineHeight: L? = nil,
        fontFamily: [FontFamilyType]? = nil) {
        propertyValue = .init(style: style, variant: variant, weight: weight, fontSize: fontSize, lineHeight: lineHeight, fontFamily: fontFamily)
    }
}

extension PropertyKey {
    public static var font: PropertyKey<FontValue> { "font".propertyKey() }
}

public struct FontValue: CustomStringConvertible {
    public let value: String
    
    public init (_ type: FontType) {
        value = type.value
    }
    
    public init <F: UnitValuable, L: UnitValuable>(
        style: FontStyleType? = nil,
        variant: FontVariantType? = nil,
        weight: FontWeightType? = nil,
        fontSize: F? = nil,
        lineHeight: L? = nil,
        fontFamily: [FontFamilyType]? = nil) {
        var value = ""
        if let style = style {
            value = style.value
        }
        if let variant = variant {
            if value.count > 0 {
                value += " "
            }
            value += variant.value
        }
        if let weight = weight {
            if value.count > 0 {
                value += " "
            }
            value += weight.value
        }
        if let fontSize = fontSize {
            if value.count > 0 {
                value += " "
            }
            value += fontSize.description
            if let lineHeight = lineHeight {
                value += "/" + lineHeight.description
            }
        }
        if let fontFamily = fontFamily, fontFamily.count > 0 {
            if value.count > 0 {
                value += " "
            }
            value = fontFamily.map { $0.value }.joined(separator: ", ")
        }
        self.value = value
    }
    
    public var description: String { value }
}