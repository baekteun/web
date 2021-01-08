//
//  Background.swift
//  SwifCSS
//
//  Created by Mihael Isaev on 10.07.2020.
//

/// A shorthand property for all the background-* properties
///
/// ```html
/// background: lightblue url("img_tree.gif") no-repeat fixed center;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_background.asp)
public class BackgroundProperty: _Property {
    public var propertyKey: PropertyKey<BackgroundValue> { .background }
    public var propertyValue: BackgroundValue
    var _content = _PropertyContent<BackgroundValue>()
    
    public init (_ value: BackgroundValue) {
        propertyValue = value
    }
    
    public convenience init (_ type: State<BackgroundValue>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BackgroundValue>) {
        self.init(type.unwrap())
    }
    
    public init (
        color: ColorType? = nil,
        src: String? = nil,
        position: BackgroundPositionType? = nil,
        size: BackgroundSizeType? = nil,
        repeat: BackgroundRepeatType? = nil,
        origin: BackgroundOriginType? = nil,
        clip: BackgroundClipType? = nil,
        attachment: BackgroundAttachmentType? = nil
    ) {
        propertyValue = BackgroundValue(
            color: color,
            src: src,
            position: position,
            size: size,
            repeat: `repeat`,
            origin: origin,
            clip: clip,
            attachment: attachment
        )
    }
}

extension PropertyKey {
    /// A shorthand property for all the background-* properties
    public static var background: PropertyKey<BackgroundValue> { "background".propertyKey() }
}

public struct BackgroundValue: CustomStringConvertible {
    public let value: String
    
    public init (color: ColorType? = nil, src: String? = nil, position: BackgroundPositionType? = nil, size: BackgroundSizeType? = nil, repeat: BackgroundRepeatType? = nil, origin: BackgroundOriginType? = nil, clip: BackgroundClipType? = nil, attachment: BackgroundAttachmentType? = nil) {
        value = [color?.description, src, position?.value, size?.value, `repeat`?.value, origin?.value, clip?.value, attachment?.value].compactMap { $0 }.joined(separator: " ")
    }
    
    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for all the background-* properties
    public typealias Background = BackgroundProperty
}

extension CSSRulable {
    /// A shorthand property for all the background-* properties
    public func background(_ type: BackgroundValue) -> Self {
        s?._addProperty(.background, type)
        return self
    }

    /// A shorthand property for all the background-* properties
    public func background(_ type: State<BackgroundValue>) -> Self {
        s?._addProperty(BackgroundProperty(type))
        return self
    }

    /// A shorthand property for all the background-* properties
    public func background<V>(_ type: ExpressableState<V, BackgroundValue>) -> Self {
        background(type.unwrap())
    }
    
    /// A shorthand property for all the background-* properties
    public func background(
        color: ColorType? = nil,
        src: String? = nil,
        position: BackgroundPositionType? = nil,
        size: BackgroundSizeType? = nil,
        repeat: BackgroundRepeatType? = nil,
        origin: BackgroundOriginType? = nil,
        clip: BackgroundClipType? = nil,
        attachment: BackgroundAttachmentType? = nil
    ) -> Self {
        s?._addProperty(BackgroundProperty(
            color: color,
            src: src,
            position: position,
            size: size,
            repeat: `repeat`,
            origin: origin,
            clip: clip,
            attachment: attachment
        ))
        return self
    }
}