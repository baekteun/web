//
//  OutlineColorProperty.swift
//  WasmApp
//
//  Created by Mihael Isaev on 06.01.2021.
//

/// Sets the color of an outline
///
/// ```html
/// outline-color: coral;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_outline-color.asp)
public class OutlineColorProperty: _Property {
    public var propertyKey: PropertyKey<Color> { .outlineColor }
    public var propertyValue: Color
    var _content = _PropertyContent<Color>()
    
    public init (_ color: Color) {
        propertyValue = color
    }
    
    public convenience init (_ color: State<Color>) {
        self.init(color.wrappedValue)
        color.listen {
            self.propertyValue = $0
            self._content._changeHandler($0)
        }
    }
    
    public convenience init<V>(_ color: ExpressableState<V, Color>) {
        self.init(color.unwrap())
    }
    
    public convenience init(_ hex: Int) {
        self.init(.hex(hex))
    }
    
    public convenience init(_ hex: State<Int>) {
        self.init(hex.wrappedValue)
        hex.listen { self.propertyValue = .hex($0) }
    }
    
    public convenience init<V>(_ hex: ExpressableState<V, Int>) {
        self.init(hex.unwrap())
    }
    
    public convenience init (r: Int, g: Int, b: Int, a: Double) {
        self.init(.rgba(r: r, g: g, b: b, a: a))
    }
    
    public convenience init (r: Int, g: Int, b: Int) {
        self.init(r: r, g:g, b: b, a: 1)
    }
    
    public convenience init (h: Int, s: Int, l: Int, a: Double) {
        self.init(.hsla(h: h, s: s, l: l, a: a))
    }
    
    public convenience init (h: Int, s: Int, l: Int) {
        self.init(h: h, s: s, l: l, a: 1)
    }
}

extension PropertyKey {
    /// Sets the color of an outline
    public static var outlineColor: PropertyKey<Color> { "outline-color".propertyKey() }
}

extension Stylesheet {
    /// Sets the color of an outline
    public typealias OutlineColor = OutlineColorProperty
}

extension CSSRulable {
    /// Sets the color of an outline
    public func outlineColor(_ type: Color) -> Self {
        s?._addProperty(.outlineColor, type)
        return self
    }

    /// Sets the color of an outline
    public func outlineColor(_ type: State<Color>) -> Self {
        s?._addProperty(OutlineColorProperty(type))
        return self
    }

    /// Sets the color of an outline
    public func outlineColor<V>(_ type: ExpressableState<V, Color>) -> Self {
        outlineColor(type.unwrap())
    }
}