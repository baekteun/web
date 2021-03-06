//
//  CSSProperties.swift
//  CSS
//
//  Created by Mihael Isaev on 10.07.2020.
//

import Foundation
import WebFoundation

// MARK: - AlignContentProperty

/// Specifies the alignment between the lines inside a flexible container when the items do not use all available space
///
/// ```html
/// align-content: center;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_align-content.asp)
public class AlignContentProperty: _Property {
    public var propertyKey: PropertyKey<AlignContentType> { .alignContent }
    public var propertyValue: AlignContentType
    var _content = _PropertyContent<AlignContentType>()

    public init (_ type: AlignContentType) {
        propertyValue = type
    }

    public convenience init (_ type: State<AlignContentType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, AlignContentType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the alignment between the lines inside a flexible container when the items do not use all available space
    public static var alignContent: PropertyKey<AlignContentType> { "align-content".propertyKey() }
}

extension Stylesheet {
    /// Specifies the alignment between the lines inside a flexible container when the items do not use all available space
    public typealias AlignContent = AlignContentProperty
}

extension CSSRulable {
    /// Specifies the alignment between the lines inside a flexible container when the items do not use all available space
    public func alignContent(_ type: AlignContentType) -> Self {
        _addProperty(.alignContent, type)
        return self
    }

    /// Specifies the alignment between the lines inside a flexible container when the items do not use all available space
    public func alignContent(_ type: State<AlignContentType>) -> Self {
        _addProperty(AlignContentProperty(type))
        return self
    }

    /// Specifies the alignment between the lines inside a flexible container when the items do not use all available space
    public func alignContent<V>(_ type: ExpressableState<V, AlignContentType>) -> Self {
        alignContent(type.unwrap())
    }
}

// MARK: - AlignItemsProperty

/// Specifies the alignment for items inside a flexible container
///
/// ```html
/// align-items: center;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_align-items.asp)
public class AlignItemsProperty: _Property {
    public var propertyKey: PropertyKey<AlignItemsType> { .alignItems }
    public var propertyValue: AlignItemsType
    var _content = _PropertyContent<AlignItemsType>()

    public init (_ type: AlignItemsType) {
        propertyValue = type
    }

    public convenience init (_ type: State<AlignItemsType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, AlignItemsType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the alignment for items inside a flexible container
    public static var alignItems: PropertyKey<AlignItemsType> { "align-items".propertyKey() }
}

extension Stylesheet {
    /// Specifies the alignment for items inside a flexible container
    public typealias AlignItems = AlignItemsProperty
}

extension CSSRulable {
    /// Specifies the alignment for items inside a flexible container
    public func alignItems(_ type: AlignItemsType) -> Self {
        _addProperty(.alignItems, type)
        return self
    }

    /// Specifies the alignment for items inside a flexible container
    public func alignItems(_ type: State<AlignItemsType>) -> Self {
        _addProperty(AlignItemsProperty(type))
        return self
    }

    /// Specifies the alignment for items inside a flexible container
    public func alignItems<V>(_ type: ExpressableState<V, AlignItemsType>) -> Self {
        alignItems(type.unwrap())
    }
}

// MARK: - AlignSelfProperty

/// Specifies the alignment for selected items inside a flexible container
///
/// ```html
/// align-self: center;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_align-self.asp)
public class AlignSelfProperty: _Property {
    public var propertyKey: PropertyKey<AlignSelfType> { .alignSelf }
    public var propertyValue: AlignSelfType
    var _content = _PropertyContent<AlignSelfType>()

    public init (_ type: AlignSelfType) {
        propertyValue = type
    }

    public convenience init (_ type: State<AlignSelfType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, AlignSelfType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the alignment for selected items inside a flexible container
    public static var alignSelf: PropertyKey<AlignSelfType> { "align-self".propertyKey() }
}

extension Stylesheet {
    /// Specifies the alignment for selected items inside a flexible container
    public typealias AlignSelf = AlignSelfProperty
}

extension CSSRulable {
    /// Specifies the alignment for selected items inside a flexible container
    public func alignSelf(_ type: AlignSelfType) -> Self {
        _addProperty(.alignSelf, type)
        return self
    }

    /// Specifies the alignment for selected items inside a flexible container
    public func alignSelf(_ type: State<AlignSelfType>) -> Self {
        _addProperty(AlignSelfProperty(type))
        return self
    }

    /// Specifies the alignment for selected items inside a flexible container
    public func alignSelf<V>(_ type: ExpressableState<V, AlignSelfType>) -> Self {
        alignSelf(type.unwrap())
    }
}

// MARK: - AllProperty

/// Resets all properties (except unicode-bidi and direction)
///
/// ```html
/// all: initial;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_all.asp)
public class AllProperty: _Property {
    public var propertyKey: PropertyKey<AllType> { .all }
    public var propertyValue: AllType
    var _content = _PropertyContent<AllType>()

    public init (_ type: AllType) {
        propertyValue = type
    }

    public convenience init (_ type: State<AllType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, AllType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Resets all properties (except unicode-bidi and direction)
    public static var all: PropertyKey<AllType> { "all".propertyKey() }
}

extension Stylesheet {
    /// Resets all properties (except unicode-bidi and direction)
    public typealias All = AllProperty
}

extension CSSRulable {
    /// Resets all properties (except unicode-bidi and direction)
    public func all(_ type: AllType) -> Self {
        _addProperty(.all, type)
        return self
    }

    /// Resets all properties (except unicode-bidi and direction)
    public func all(_ type: State<AllType>) -> Self {
        _addProperty(AllProperty(type))
        return self
    }

    /// Resets all properties (except unicode-bidi and direction)
    public func all<V>(_ type: ExpressableState<V, AllType>) -> Self {
        all(type.unwrap())
    }
}

// MARK: - AnimationDelayProperty

/// Specifies a delay for the start of an animation
///
/// ```html
/// animation-delay: 2s;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_animation-delay.asp)
public class AnimationDelayProperty: _Property {
    public var propertyKey: PropertyKey<TimeUnitValueContainer> { .animationDelay }
    public var propertyValue: TimeUnitValueContainer
    var _content = _PropertyContent<TimeUnitValueContainer>()

    public init<U: TimeUnitValue>(_ value: U) {
        propertyValue = TimeUnitValueContainer(value.value.doubleValue, value.timeUnit)
    }

    public convenience init <U: TimeUnitValue>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: TimeUnitValueContainer($0.value.doubleValue, $0.timeUnit)) }
    }

    public convenience init <V, U: TimeUnitValue>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ timeUnit: TimeUnit) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init (_ value: State<Double>, _ timeUnit: TimeUnit) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init (_ value: Double, _ timeUnit: State<TimeUnit>) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ timeUnit: TimeUnit) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init <V>(_ value: Double, _ timeUnit: ExpressableState<V, TimeUnit>) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init <V>(_ value: State<Double>, _ timeUnit: ExpressableState<V, TimeUnit>) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ timeUnit: State<TimeUnit>) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init (_ value: State<Double>, _ timeUnit: State<TimeUnit>) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ timeUnit: ExpressableState<U, TimeUnit>) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }
}

extension PropertyKey {
    /// Specifies a delay for the start of an animation
    public static var animationDelay: PropertyKey<TimeUnitValueContainer> { "animation-delay".propertyKey() }
}

extension Stylesheet {
    /// Specifies a delay for the start of an animation
    public typealias AnimationDelay = AnimationDelayProperty
}

extension CSSRulable {
    /// Specifies a delay for the start of an animation
    public func animationDelay<U: TimeUnitValue>(_ value: U) -> Self {
        _addProperty(.animationDelay, TimeUnitValueContainer(value.value.doubleValue, value.timeUnit))
        return self
    }

    /// Specifies a delay for the start of an animation
    public func animationDelay<U: TimeUnitValue>(_ value: State<U>) -> Self {
        _addProperty(AnimationDelayProperty(value))
        return self
    }

    /// Specifies a delay for the start of an animation
    public func animationDelay<V, U: TimeUnitValue>(_ value: ExpressableState<V, U>) -> Self {
        animationDelay(value.unwrap())
    }

    // MARK: Extended

    /// Specifies a delay for the start of an animation
    public func animationDelay(_ value: Double, _ timeUnit: TimeUnit) -> Self {
        _addProperty(.animationDelay, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies a delay for the start of an animation
    public func animationDelay(_ value: State<Double>, _ timeUnit: TimeUnit) -> Self {
        _addProperty(.animationDelay, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies a delay for the start of an animation
    public func animationDelay(_ value: Double, _ timeUnit: State<TimeUnit>) -> Self {
        _addProperty(.animationDelay, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies a delay for the start of an animation
    public func animationDelay<V>(_ value: ExpressableState<V, Double>, _ timeUnit: TimeUnit) -> Self {
        _addProperty(.animationDelay, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies a delay for the start of an animation
    public func animationDelay<V>(_ value: Double, _ timeUnit: ExpressableState<V, TimeUnit>) -> Self {
        _addProperty(.animationDelay, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies a delay for the start of an animation
    public func animationDelay<V>(_ value: State<Double>, _ timeUnit: ExpressableState<V, TimeUnit>) -> Self {
        _addProperty(.animationDelay, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies a delay for the start of an animation
    public func animationDelay<V>(_ value: ExpressableState<V, Double>, _ timeUnit: State<TimeUnit>) -> Self {
        _addProperty(.animationDelay, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies a delay for the start of an animation
    public func animationDelay(_ value: State<Double>, _ timeUnit: State<TimeUnit>) -> Self {
        _addProperty(.animationDelay, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies a delay for the start of an animation
    public func animationDelay<V, U>(_ value: ExpressableState<V, Double>, _ timeUnit: ExpressableState<U, TimeUnit>) -> Self {
        _addProperty(.animationDelay, TimeUnitValueContainer(value, timeUnit))
        return self
    }
}

// MARK: - AnimationDirectionProperty

/// Specifies whether an animation should be played forwards, backwards or in alternate cycles
///
/// ```html
/// animation-direction: alternate;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_animation-direction.asp)
public class AnimationDirectionProperty: _Property {
    public var propertyKey: PropertyKey<AnimationDirectionType> { .animationDirection }
    public var propertyValue: AnimationDirectionType
    var _content = _PropertyContent<AnimationDirectionType>()

    public init (_ type: AnimationDirectionType) {
        propertyValue = type
    }

    public convenience init (_ type: State<AnimationDirectionType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, AnimationDirectionType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether an animation should be played forwards, backwards or in alternate cycles
    public static var animationDirection: PropertyKey<AnimationDirectionType> { "animation-direction".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether an animation should be played forwards, backwards or in alternate cycles
    public typealias AnimationDirection = AnimationDirectionProperty
}

extension CSSRulable {
    /// Specifies whether an animation should be played forwards, backwards or in alternate cycles
    public func animationDirection(_ type: AnimationDirectionType) -> Self {
        _addProperty(.animationDirection, type)
        return self
    }

    /// Specifies whether an animation should be played forwards, backwards or in alternate cycles
    public func animationDirection(_ type: State<AnimationDirectionType>) -> Self {
        _addProperty(AnimationDirectionProperty(type))
        return self
    }

    /// Specifies whether an animation should be played forwards, backwards or in alternate cycles
    public func animationDirection<V>(_ type: ExpressableState<V, AnimationDirectionType>) -> Self {
        animationDirection(type.unwrap())
    }
}

// MARK: - AnimationDurationProperty

/// Specifies how long an animation should take to complete one cycle
///
/// ```html
/// animation-duration: 3s;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_animation-duration.asp)
public class AnimationDurationProperty: _Property {
    public var propertyKey: PropertyKey<TimeUnitValueContainer> { .animationDuration }
    public var propertyValue: TimeUnitValueContainer
    var _content = _PropertyContent<TimeUnitValueContainer>()

    public init<U: TimeUnitValue>(_ value: U) {
        propertyValue = TimeUnitValueContainer(value.value.doubleValue, value.timeUnit)
    }

    public convenience init <U: TimeUnitValue>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: TimeUnitValueContainer($0.value.doubleValue, $0.timeUnit)) }
    }

    public convenience init <V, U: TimeUnitValue>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ timeUnit: TimeUnit) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init (_ value: State<Double>, _ timeUnit: TimeUnit) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init (_ value: Double, _ timeUnit: State<TimeUnit>) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ timeUnit: TimeUnit) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init <V>(_ value: Double, _ timeUnit: ExpressableState<V, TimeUnit>) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init <V>(_ value: State<Double>, _ timeUnit: ExpressableState<V, TimeUnit>) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ timeUnit: State<TimeUnit>) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init (_ value: State<Double>, _ timeUnit: State<TimeUnit>) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ timeUnit: ExpressableState<U, TimeUnit>) {
        self.init(TimeUnitValueContainer(value, timeUnit))
    }
}

extension PropertyKey {
    /// Specifies how long an animation should take to complete one cycle
    public static var animationDuration: PropertyKey<TimeUnitValueContainer> { "animation-duration".propertyKey() }
}

extension Stylesheet {
    /// Specifies how long an animation should take to complete one cycle
    public typealias AnimationDuration = AnimationDurationProperty
}

extension CSSRulable {
    /// Specifies how long an animation should take to complete one cycle
    public func animationDuration<U: TimeUnitValue>(_ value: U) -> Self {
        _addProperty(.animationDuration, TimeUnitValueContainer(value.value.doubleValue, value.timeUnit))
        return self
    }

    /// Specifies how long an animation should take to complete one cycle
    public func animationDuration<U: TimeUnitValue>(_ value: State<U>) -> Self {
        _addProperty(AnimationDurationProperty(value))
        return self
    }

    /// Specifies how long an animation should take to complete one cycle
    public func animationDuration<V, U: TimeUnitValue>(_ value: ExpressableState<V, U>) -> Self {
        animationDuration(value.unwrap())
    }

    // MARK: Extended

    /// Specifies how long an animation should take to complete one cycle
    public func animationDuration(_ value: Double, _ timeUnit: TimeUnit) -> Self {
        _addProperty(.animationDuration, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies how long an animation should take to complete one cycle
    public func animationDuration(_ value: State<Double>, _ timeUnit: TimeUnit) -> Self {
        _addProperty(.animationDuration, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies how long an animation should take to complete one cycle
    public func animationDuration(_ value: Double, _ timeUnit: State<TimeUnit>) -> Self {
        _addProperty(.animationDuration, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies how long an animation should take to complete one cycle
    public func animationDuration<V>(_ value: ExpressableState<V, Double>, _ timeUnit: TimeUnit) -> Self {
        _addProperty(.animationDuration, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies how long an animation should take to complete one cycle
    public func animationDuration<V>(_ value: Double, _ timeUnit: ExpressableState<V, TimeUnit>) -> Self {
        _addProperty(.animationDuration, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies how long an animation should take to complete one cycle
    public func animationDuration<V>(_ value: State<Double>, _ timeUnit: ExpressableState<V, TimeUnit>) -> Self {
        _addProperty(.animationDuration, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies how long an animation should take to complete one cycle
    public func animationDuration<V>(_ value: ExpressableState<V, Double>, _ timeUnit: State<TimeUnit>) -> Self {
        _addProperty(.animationDuration, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies how long an animation should take to complete one cycle
    public func animationDuration(_ value: State<Double>, _ timeUnit: State<TimeUnit>) -> Self {
        _addProperty(.animationDuration, TimeUnitValueContainer(value, timeUnit))
        return self
    }

    /// Specifies how long an animation should take to complete one cycle
    public func animationDuration<V, U>(_ value: ExpressableState<V, Double>, _ timeUnit: ExpressableState<U, TimeUnit>) -> Self {
        _addProperty(.animationDuration, TimeUnitValueContainer(value, timeUnit))
        return self
    }
}

// MARK: - AnimationFillModeProperty

/// Specifies a style for the element when the animation is not playing (before it starts, after it ends, or both)
///
/// ```html
/// animation-fill-mode: forwards;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_animation-fill-mode.asp)
public class AnimationFillModeProperty: _Property {
    public var propertyKey: PropertyKey<AnimationFillModeType> { .animationFillMode }
    public var propertyValue: AnimationFillModeType
    var _content = _PropertyContent<AnimationFillModeType>()

    public init (_ type: AnimationFillModeType) {
        propertyValue = type
    }

    public convenience init (_ type: State<AnimationFillModeType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, AnimationFillModeType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies a style for the element when the animation is not playing (before it starts, after it ends, or both)
    public static var animationFillMode: PropertyKey<AnimationFillModeType> { "animation-fill-mode".propertyKey() }
}

extension Stylesheet {
    /// Specifies a style for the element when the animation is not playing (before it starts, after it ends, or both)
    public typealias AnimationFillMode = AnimationFillModeProperty
}

extension CSSRulable {
    /// Specifies a style for the element when the animation is not playing (before it starts, after it ends, or both)
    public func animationFillMode(_ type: AnimationFillModeType) -> Self {
        _addProperty(.animationFillMode, type)
        return self
    }

    /// Specifies a style for the element when the animation is not playing (before it starts, after it ends, or both)
    public func animationFillMode(_ type: State<AnimationFillModeType>) -> Self {
        _addProperty(AnimationFillModeProperty(type))
        return self
    }

    /// Specifies a style for the element when the animation is not playing (before it starts, after it ends, or both)
    public func animationFillMode<V>(_ type: ExpressableState<V, AnimationFillModeType>) -> Self {
        animationFillMode(type.unwrap())
    }
}

// MARK: - AnimationIterationCountProperty

/// Specifies the number of times an animation should be played
///
/// ```html
/// animation-iteration-count: 2;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_animation-iteration-count.asp)
public class AnimationIterationCountProperty: _Property {
    public var propertyKey: PropertyKey<Int> { .animationIterationCount }
    public var propertyValue: Int
    var _content = _PropertyContent<Int>()

    public init (_ n: Int) {
        propertyValue = n
    }

    public convenience init (_ type: State<Int>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, Int>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the number of times an animation should be played
    public static var animationIterationCount: PropertyKey<Int> { "animation-iteration-count".propertyKey() }
}

extension Stylesheet {
    /// Specifies the number of times an animation should be played
    public typealias AnimationIterationCount = AnimationIterationCountProperty
}

extension CSSRulable {
    /// Specifies the number of times an animation should be played
    public func animationIterationCount(_ type: Int) -> Self {
        _addProperty(.animationIterationCount, type)
        return self
    }

    /// Specifies the number of times an animation should be played
    public func animationIterationCount(_ type: State<Int>) -> Self {
        _addProperty(AnimationIterationCountProperty(type))
        return self
    }

    /// Specifies the number of times an animation should be played
    public func animationIterationCount<V>(_ type: ExpressableState<V, Int>) -> Self {
        animationIterationCount(type.unwrap())
    }
}

// MARK: - AnimationNameProperty

/// Specifies a name for the @keyframes animation
///
/// ```html
/// animation-name: mymove;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_animation-name.asp)
public class AnimationNameProperty: _Property {
    public var propertyKey: PropertyKey<String> { .animationName }
    public var propertyValue: String
    var _content = _PropertyContent<String>()

    public init (_ name: String) {
        propertyValue = name
    }

    public convenience init (_ type: State<String>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, String>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies a name for the @keyframes animation
    public static var animationName: PropertyKey<String> { "animation-name".propertyKey() }
}

extension Stylesheet {
    /// Specifies a name for the @keyframes animation
    public typealias AnimationName = AnimationNameProperty
}

extension CSSRulable {
    /// Specifies a name for the @keyframes animation
    public func animationName(_ type: String) -> Self {
        _addProperty(.animationName, type)
        return self
    }

    /// Specifies a name for the @keyframes animation
    public func animationName(_ type: State<String>) -> Self {
        _addProperty(AnimationNameProperty(type))
        return self
    }

    /// Specifies a name for the @keyframes animation
    public func animationName<V>(_ type: ExpressableState<V, String>) -> Self {
        animationName(type.unwrap())
    }
}

// MARK: - AnimationPlayStateProperty

/// Specifies whether the animation is running or paused
///
/// ```html
/// animation-play-state: paused;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_animation-play-state.asp)
public class AnimationPlayStateProperty: _Property {
    public var propertyKey: PropertyKey<AnimationPlayStateType> { .animationPlayState }
    public var propertyValue: AnimationPlayStateType
    var _content = _PropertyContent<AnimationPlayStateType>()

    public init (_ type: AnimationPlayStateType) {
        propertyValue = type
    }

    public convenience init (_ type: State<AnimationPlayStateType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, AnimationPlayStateType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether the animation is running or paused
    public static var animationPlayState: PropertyKey<AnimationPlayStateType> { "animation-play-state".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether the animation is running or paused
    public typealias AnimationPlayState = AnimationPlayStateProperty
}

extension CSSRulable {
    /// Specifies whether the animation is running or paused
    public func animationPlayState(_ type: AnimationPlayStateType) -> Self {
        _addProperty(.animationPlayState, type)
        return self
    }

    /// Specifies whether the animation is running or paused
    public func animationPlayState(_ type: State<AnimationPlayStateType>) -> Self {
        _addProperty(AnimationPlayStateProperty(type))
        return self
    }

    /// Specifies whether the animation is running or paused
    public func animationPlayState<V>(_ type: ExpressableState<V, AnimationPlayStateType>) -> Self {
        animationPlayState(type.unwrap())
    }
}

// MARK: - AnimationProperty

/// A shorthand property for all the animation-* properties
///
/// ```html
/// animation: mymove 5s infinite;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_animation.asp)
public class AnimationProperty: _Property {
    public var propertyKey: PropertyKey<AnimationValue> { .animation }
    public var propertyValue: AnimationValue
    var _content = _PropertyContent<AnimationValue>()

    public init (_ value: AnimationValue) {
        propertyValue = value
    }

    public convenience init (_ type: State<AnimationValue>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, AnimationValue>) {
        self.init(type.unwrap())
    }

    public init<D1: TimeUnitValue, D2: TimeUnitValue>(
        name: String? = nil,
        duration: D1? = nil,
        timing: TransitionTimingFunctionType? = nil,
        delay: D2? = nil,
        iterationCount: Int? = nil,
        direction: AnimationDirectionType? = nil,
        fillMode: AnimationFillModeType? = nil,
        playState: AnimationPlayStateType? = nil
    ) {
        propertyValue = AnimationValue(
            name: name,
            duration: duration,
            timing: timing,
            delay: delay,
            iterationCount: iterationCount,
            direction: direction,
            fillMode: fillMode,
            playState: playState
        )
    }
}

extension PropertyKey {
    /// A shorthand property for all the animation-* properties
    public static var animation: PropertyKey<AnimationValue> { "animation".propertyKey() }
}

public struct AnimationValue: CustomStringConvertible {
    public let value: String

    public init<D1: TimeUnitValue, D2: TimeUnitValue>(
        name: String? = nil,
        duration: D1? = nil,
        timing: TransitionTimingFunctionType? = nil,
        delay: D2? = nil,
        iterationCount: Int? = nil,
        direction: AnimationDirectionType? = nil,
        fillMode: AnimationFillModeType? = nil,
        playState: AnimationPlayStateType? = nil
    ) {
        var ic: String?
        if let iterationCount = iterationCount {
            ic = "\(iterationCount)"
        }
        value = [
            name,
            duration?.description,
            timing?.value,
            delay?.description,
            ic,
            direction?.value,
            fillMode?.value,
            playState?.value
        ]
        .compactMap { $0 }
        .joined(separator: " ")
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for all the animation-* properties
    public typealias Animation = AnimationProperty
}

extension CSSRulable {
    /// A shorthand property for all the animation-* properties
    public func animation(_ type: AnimationValue) -> Self {
        _addProperty(.animation, type)
        return self
    }

    /// A shorthand property for all the animation-* properties
    public func animation(_ type: State<AnimationValue>) -> Self {
        _addProperty(AnimationProperty(type))
        return self
    }

    /// A shorthand property for all the animation-* properties
    public func animation<V>(_ type: ExpressableState<V, AnimationValue>) -> Self {
        animation(type.unwrap())
    }

    /// A shorthand property for all the animation-* properties
    public func animation<D1: TimeUnitValue, D2: TimeUnitValue>(
        name: String? = nil,
        duration: D1? = nil,
        timing: TransitionTimingFunctionType? = nil,
        delay: D2? = nil,
        iterationCount: Int? = nil,
        direction: AnimationDirectionType? = nil,
        fillMode: AnimationFillModeType? = nil,
        playState: AnimationPlayStateType? = nil
    ) -> Self {
        _addProperty(AnimationProperty(
            name: name,
            duration: duration,
            timing: timing,
            delay: delay,
            iterationCount: iterationCount,
            direction: direction,
            fillMode: fillMode,
            playState: playState
        ))
        return self
    }
}

// MARK: - AnimationTimingFunctionProperty

/// Specifies the speed curve of an animation
///
/// ```html
/// animation-timing-function: linear;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_animation-timing-function.asp)
public class AnimationTimingFunctionProperty: _Property {
    public var propertyKey: PropertyKey<TransitionTimingFunctionType> { .animationTimingFunction }
    public var propertyValue: TransitionTimingFunctionType
    var _content = _PropertyContent<TransitionTimingFunctionType>()

    public init (_ type: TransitionTimingFunctionType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TransitionTimingFunctionType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TransitionTimingFunctionType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the speed curve of an animation
    public static var animationTimingFunction: PropertyKey<TransitionTimingFunctionType> { "animation-timing-function".propertyKey() }
}

extension Stylesheet {
    /// Specifies the speed curve of an animation
    public typealias AnimationTimingFunction = AnimationTimingFunctionProperty
}

extension CSSRulable {
    /// Specifies the speed curve of an animation
    public func animationTimingFunction(_ type: TransitionTimingFunctionType) -> Self {
        _addProperty(.animationTimingFunction, type)
        return self
    }

    /// Specifies the speed curve of an animation
    public func animationTimingFunction(_ type: State<TransitionTimingFunctionType>) -> Self {
        _addProperty(AnimationTimingFunctionProperty(type))
        return self
    }

    /// Specifies the speed curve of an animation
    public func animationTimingFunction<V>(_ type: ExpressableState<V, TransitionTimingFunctionType>) -> Self {
        animationTimingFunction(type.unwrap())
    }
}

// MARK: - BackfaceVisibilityProperty

/// Defines whether or not the back face of an element should be visible when facing the user
///
/// ```html
/// backface-visibility: hidden;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_backface-visibility.asp)
public class BackfaceVisibilityProperty: _Property {
    public var propertyKey: PropertyKey<BackfaceVisibilityType> { .backfaceVisibility }
    public var propertyValue: BackfaceVisibilityType
    var _content = _PropertyContent<BackfaceVisibilityType>()

    public init (_ type: BackfaceVisibilityType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BackfaceVisibilityType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BackfaceVisibilityType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Defines whether or not the back face of an element should be visible when facing the user
    public static var backfaceVisibility: PropertyKey<BackfaceVisibilityType> { "backface-visibility".propertyKey() }
}

extension Stylesheet {
    /// Defines whether or not the back face of an element should be visible when facing the user
    public typealias BackfaceVisibility = BackfaceVisibilityProperty
}

extension CSSRulable {
    /// Defines whether or not the back face of an element should be visible when facing the user
    public func backfaceVisibility(_ type: BackfaceVisibilityType) -> Self {
        _addProperty(.backfaceVisibility, type)
        return self
    }

    /// Defines whether or not the back face of an element should be visible when facing the user
    public func backfaceVisibility(_ type: State<BackfaceVisibilityType>) -> Self {
        _addProperty(BackfaceVisibilityProperty(type))
        return self
    }

    /// Defines whether or not the back face of an element should be visible when facing the user
    public func backfaceVisibility<V>(_ type: ExpressableState<V, BackfaceVisibilityType>) -> Self {
        backfaceVisibility(type.unwrap())
    }
}

// MARK: - BackgroundAttachmentProperty

/// Sets whether a background image scrolls with the rest of the page, or is fixed
///
/// ```html
/// background-attachment: fixed;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_background-attachment.asp)
public class BackgroundAttachmentProperty: _Property {
    public var propertyKey: PropertyKey<BackgroundAttachmentType> { .backgroundAttachment }
    public var propertyValue: BackgroundAttachmentType
    var _content = _PropertyContent<BackgroundAttachmentType>()

    public init (_ type: BackgroundAttachmentType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BackgroundAttachmentType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BackgroundAttachmentType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets whether a background image scrolls with the rest of the page, or is fixed
    public static var backgroundAttachment: PropertyKey<BackgroundAttachmentType> { "background-attachment".propertyKey() }
}

extension Stylesheet {
    /// Sets whether a background image scrolls with the rest of the page, or is fixed
    public typealias BackgroundAttachment = BackgroundAttachmentProperty
}

extension CSSRulable {
    /// Sets whether a background image scrolls with the rest of the page, or is fixed
    public func backgroundAttachment(_ type: BackgroundAttachmentType) -> Self {
        _addProperty(.backgroundAttachment, type)
        return self
    }

    /// Sets whether a background image scrolls with the rest of the page, or is fixed
    public func backgroundAttachment(_ type: State<BackgroundAttachmentType>) -> Self {
        _addProperty(BackgroundAttachmentProperty(type))
        return self
    }

    /// Sets whether a background image scrolls with the rest of the page, or is fixed
    public func backgroundAttachment<V>(_ type: ExpressableState<V, BackgroundAttachmentType>) -> Self {
        backgroundAttachment(type.unwrap())
    }
}

// MARK: - BackgroundBlendModeProperty

/// Specifies the blending mode of each background layer (color/image)
///
/// ```html
/// background-blend-mode: lighten;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_background-blend-mode.asp)
public class BackgroundBlendModeProperty: _Property {
    public var propertyKey: PropertyKey<BackgroundBlendModeType> { .backgroundBlendMode }
    public var propertyValue: BackgroundBlendModeType
    var _content = _PropertyContent<BackgroundBlendModeType>()

    public init (_ type: BackgroundBlendModeType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BackgroundBlendModeType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BackgroundBlendModeType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the blending mode of each background layer (color/image)
    public static var backgroundBlendMode: PropertyKey<BackgroundBlendModeType> { "background-blend-mode".propertyKey() }
}

extension Stylesheet {
    /// Specifies the blending mode of each background layer (color/image)
    public typealias BackgroundBlendMode = BackgroundBlendModeProperty
}

extension CSSRulable {
    /// Specifies the blending mode of each background layer (color/image)
    public func backgroundBlendMode(_ type: BackgroundBlendModeType) -> Self {
        _addProperty(.backgroundBlendMode, type)
        return self
    }

    /// Specifies the blending mode of each background layer (color/image)
    public func backgroundBlendMode(_ type: State<BackgroundBlendModeType>) -> Self {
        _addProperty(BackgroundBlendModeProperty(type))
        return self
    }

    /// Specifies the blending mode of each background layer (color/image)
    public func backgroundBlendMode<V>(_ type: ExpressableState<V, BackgroundBlendModeType>) -> Self {
        backgroundBlendMode(type.unwrap())
    }
}

// MARK: - BackgroundClipProperty

/// Defines how far the background (color or image) should extend within an element
///
/// ```html
/// background-clip: padding-box;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_background-clip.asp)
public class BackgroundClipProperty: _Property {
    public var propertyKey: PropertyKey<BackgroundClipType> { .backgroundClip }
    public var propertyValue: BackgroundClipType
    var _content = _PropertyContent<BackgroundClipType>()

    public init (_ type: BackgroundClipType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BackgroundClipType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BackgroundClipType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Defines how far the background (color or image) should extend within an element
    public static var backgroundClip: PropertyKey<BackgroundClipType> { "background-clip".propertyKey() }
}

extension Stylesheet {
    /// Defines how far the background (color or image) should extend within an element
    public typealias BackgroundClip = BackgroundClipProperty
}

extension CSSRulable {
    /// Defines how far the background (color or image) should extend within an element
    public func backgroundClip(_ type: BackgroundClipType) -> Self {
        _addProperty(.backgroundClip, type)
        return self
    }

    /// Defines how far the background (color or image) should extend within an element
    public func backgroundClip(_ type: State<BackgroundClipType>) -> Self {
        _addProperty(BackgroundClipProperty(type))
        return self
    }

    /// Defines how far the background (color or image) should extend within an element
    public func backgroundClip<V>(_ type: ExpressableState<V, BackgroundClipType>) -> Self {
        backgroundClip(type.unwrap())
    }
}

// MARK: - BackgroundColorProperty

/// Specifies the background color of an element
///
/// ```html
/// background-color: coral;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_background-color.asp)
public class BackgroundColorProperty: _Property {
    public var propertyKey: PropertyKey<Color> { .backgroundColor }
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
    /// Specifies the background color of an element
    public static var backgroundColor: PropertyKey<Color> { "background-color".propertyKey() }
}

extension Stylesheet {
    /// Specifies the background color of an element
    public typealias BackgroundColor = BackgroundColorProperty
}

extension CSSRulable {
    /// Specifies the background color of an element
    public func backgroundColor(_ type: Color) -> Self {
        _addProperty(.backgroundColor, type)
        return self
    }

    /// Specifies the background color of an element
    public func backgroundColor<S>(_ type: S) -> Self where S: StateConvertible, S.Value == Color {
        _addProperty(BackgroundColorProperty(type.stateValue))
        return self
    }
}

// MARK: - BackgroundImageProperty

/// Specifies one or more background images for an element
///
/// ```html
/// background-image: url("paper.gif");
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_background-image.asp)
public class BackgroundImageProperty: _Property {
    public var propertyKey: PropertyKey<String> { .backgroundImage }
    public var propertyValue: String
    var _content = _PropertyContent<String>()

    public init (_ src: String) {
        propertyValue = "url(\(src)"
    }
    
    public convenience init (_ function: CSSFunction) {
        self.init(function.value)
    }

    public convenience init (_ type: State<String>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, String>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies one or more background images for an element
    public static var backgroundImage: PropertyKey<String> { "background-image".propertyKey() }
}

extension Stylesheet {
    /// Specifies one or more background images for an element
    public typealias BackgroundImage = BackgroundImageProperty
}

extension CSSRulable {
    /// Specifies one or more background images for an element
    public func backgroundImage(_ type: String) -> Self {
        _addProperty(.backgroundImage, type)
        return self
    }
    
    public func backgroundImage(_ function: CSSFunction) -> Self {
        backgroundImage(function.value)
    }

    /// Specifies one or more background images for an element
    public func backgroundImage(_ type: State<String>) -> Self {
        _addProperty(BackgroundImageProperty(type))
        return self
    }

    /// Specifies one or more background images for an element
    public func backgroundImage<V>(_ type: ExpressableState<V, String>) -> Self {
        backgroundImage(type.unwrap())
    }
}

// MARK: - BackgroundOriginProperty

/// Specifies the origin position of a background image
///
/// ```html
/// background-origin: content-box;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_background-origin.asp)
public class BackgroundOriginProperty: _Property {
    public var propertyKey: PropertyKey<BackgroundOriginType> { .backgroundOrigin }
    public var propertyValue: BackgroundOriginType
    var _content = _PropertyContent<BackgroundOriginType>()

    public init (_ type: BackgroundOriginType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BackgroundOriginType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BackgroundOriginType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the origin position of a background image
    public static var backgroundOrigin: PropertyKey<BackgroundOriginType> { "background-origin".propertyKey() }
}

extension Stylesheet {
    /// Specifies the origin position of a background image
    public typealias BackgroundOrigin = BackgroundOriginProperty
}

extension CSSRulable {
    /// Specifies the origin position of a background image
    public func backgroundOrigin(_ type: BackgroundOriginType) -> Self {
        _addProperty(.backgroundOrigin, type)
        return self
    }

    /// Specifies the origin position of a background image
    public func backgroundOrigin(_ type: State<BackgroundOriginType>) -> Self {
        _addProperty(BackgroundOriginProperty(type))
        return self
    }

    /// Specifies the origin position of a background image
    public func backgroundOrigin<V>(_ type: ExpressableState<V, BackgroundOriginType>) -> Self {
        backgroundOrigin(type.unwrap())
    }
}

// MARK: - BackgroundPositionProperty

/// Specifies the position of a background image
///
/// ```html
/// background-position: center;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_background-position.asp)
public class BackgroundPositionProperty: _Property {
    public var propertyKey: PropertyKey<BackgroundPositionType> { .backgroundPosition }
    public var propertyValue: BackgroundPositionType
    var _content = _PropertyContent<BackgroundPositionType>()

    public init (_ type: BackgroundPositionType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BackgroundPositionType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BackgroundPositionType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the position of a background image
    public static var backgroundPosition: PropertyKey<BackgroundPositionType> { "background-position".propertyKey() }
}

extension Stylesheet {
    /// Specifies the position of a background image
    public typealias BackgroundPosition = BackgroundPositionProperty
}

extension CSSRulable {
    /// Specifies the position of a background image
    public func backgroundPosition(_ type: BackgroundPositionType) -> Self {
        _addProperty(.backgroundPosition, type)
        return self
    }

    /// Specifies the position of a background image
    public func backgroundPosition(_ type: State<BackgroundPositionType>) -> Self {
        _addProperty(BackgroundPositionProperty(type))
        return self
    }

    /// Specifies the position of a background image
    public func backgroundPosition<V>(_ type: ExpressableState<V, BackgroundPositionType>) -> Self {
        backgroundPosition(type.unwrap())
    }
}

// MARK: - BackgroundProperty

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
        color: Color? = nil,
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
    
    public convenience init (_ src: String) {
        self.init(BackgroundValue(src))
    }
    
    public convenience init (_ function: CSSFunction) {
        self.init(function.value)
    }
}

extension PropertyKey {
    /// A shorthand property for all the background-* properties
    public static var background: PropertyKey<BackgroundValue> { "background".propertyKey() }
}

public struct BackgroundValue: CustomStringConvertible {
    public let value: String
    
    init(_ value: String) {
        self.value = value
    }

    public init (color: Color? = nil, src: String? = nil, position: BackgroundPositionType? = nil, size: BackgroundSizeType? = nil, repeat: BackgroundRepeatType? = nil, origin: BackgroundOriginType? = nil, clip: BackgroundClipType? = nil, attachment: BackgroundAttachmentType? = nil) {
        value = [
            color?.description,
            src,
            position?.value,
            size?.value,
            `repeat`?.value,
            origin?.value,
            clip?.value,
            attachment?.value
        ]
        .compactMap { $0 }
        .joined(separator: " ")
    }
    
    public init (_ function: CSSFunction) {
        self.init(function.value)
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
        _addProperty(.background, type)
        return self
    }

    /// A shorthand property for all the background-* properties
    public func background<S>(_ type: S) -> Self where S: StateConvertible, S.Value == BackgroundValue {
        _addProperty(BackgroundProperty(type.stateValue))
        return self
    }

    /// A shorthand property for all the background-* properties
    public func background(
        color: Color? = nil,
        src: String? = nil,
        position: BackgroundPositionType? = nil,
        size: BackgroundSizeType? = nil,
        repeat: BackgroundRepeatType? = nil,
        origin: BackgroundOriginType? = nil,
        clip: BackgroundClipType? = nil,
        attachment: BackgroundAttachmentType? = nil
    ) -> Self {
        background(.init(
            color: color,
            src: src,
            position: position,
            size: size,
            repeat: `repeat`,
            origin: origin,
            clip: clip,
            attachment: attachment
        ))
    }
    
    public func background(_ src: String) -> Self {
        background(BackgroundValue(src))
    }
    
    public func background(_ function: CSSFunction) -> Self {
        background(BackgroundValue(function.value))
    }
}

// MARK: - BackgroundRepeatProperty

/// Sets if/how a background image will be repeated
///
/// ```html
/// background-repeat: repeat-y;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_background-repeat.asp)
public class BackgroundRepeatProperty: _Property {
    public var propertyKey: PropertyKey<BackgroundRepeatType> { .backgroundRepeat }
    public var propertyValue: BackgroundRepeatType
    var _content = _PropertyContent<BackgroundRepeatType>()

    public init (_ type: BackgroundRepeatType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BackgroundRepeatType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BackgroundRepeatType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets if/how a background image will be repeated
    public static var backgroundRepeat: PropertyKey<BackgroundRepeatType> { "background-repeat".propertyKey() }
}

extension Stylesheet {
    /// Sets if/how a background image will be repeated
    public typealias BackgroundRepeat = BackgroundRepeatProperty
}

extension CSSRulable {
    /// Sets if/how a background image will be repeated
    public func backgroundRepeat(_ type: BackgroundRepeatType) -> Self {
        _addProperty(.backgroundRepeat, type)
        return self
    }

    /// Sets if/how a background image will be repeated
    public func backgroundRepeat(_ type: State<BackgroundRepeatType>) -> Self {
        _addProperty(BackgroundRepeatProperty(type))
        return self
    }

    /// Sets if/how a background image will be repeated
    public func backgroundRepeat<V>(_ type: ExpressableState<V, BackgroundRepeatType>) -> Self {
        backgroundRepeat(type.unwrap())
    }
}

// MARK: - BackgroundSizeProperty

/// Specifies the size of the background images
///
/// ```html
/// background-size: 300px 100px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_background-size.asp)
public class BackgroundSizeProperty: _Property {
    public var propertyKey: PropertyKey<BackgroundSizeValue> { .backgroundSize }
    public var propertyValue: BackgroundSizeValue
    var _content = _PropertyContent<BackgroundSizeValue>()

    // MARK: All

    public init (all: BackgroundSizeType) {
        propertyValue = BackgroundSizeValue(all: all)
    }

    public convenience init <A>(all type: A) where A: StateConvertible, A.Value == BackgroundSizeType {
        let state = type.stateValue
        self.init(all: state.wrappedValue)
        state.listen { self._changed(to: BackgroundSizeValue(all: $0)) }
    }

    // MARK: H/V

    public init (h: BackgroundSizeType, v: BackgroundSizeType) {
        propertyValue = BackgroundSizeValue(h: h, v: v)
    }

    public convenience init <A>(h: A, v: BackgroundSizeType) where A: StateConvertible, A.Value == BackgroundSizeType {
        let h = h.stateValue
        self.init(h: h.wrappedValue, v: v)
        h.listen { self._changed(to: BackgroundSizeValue(h: $0, v: v)) }
    }

    public convenience init <B>(h: BackgroundSizeType, v: B) where B: StateConvertible, B.Value == BackgroundSizeType {
        let v = v.stateValue
        self.init(h: h, v: v.wrappedValue)
        v.listen { self._changed(to: BackgroundSizeValue(h: h, v: $0)) }
    }

    public convenience init <A, B>(h: A, v: B) where A: StateConvertible, A.Value == BackgroundSizeType, B: StateConvertible, B.Value == BackgroundSizeType {
        let h = h.stateValue
        let v = v.stateValue
        self.init(h: h.wrappedValue, v: v.wrappedValue)
        h.listen { self._changed(to: BackgroundSizeValue(h: $0, v: v.wrappedValue)) }
        v.listen { self._changed(to: BackgroundSizeValue(h: h.wrappedValue, v: $0)) }
    }
}

extension PropertyKey {
    public static var backgroundSize: PropertyKey<BackgroundSizeValue> { "background-size".propertyKey() }
}

public class BackgroundSizeValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    @State public var value = ""

    var _changeHandler = {}

    public init (all: BackgroundSizeType) {
        value = all.value
        $value.listen {
            self._changeHandler()
        }
    }

    public init (h: BackgroundSizeType, v: BackgroundSizeType) {
        value = [h.value, v.value].joined(separator: " ")
        $value.listen {
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Specifies the size of the background images
    public typealias BackgroundSize = BackgroundSizeProperty
}

extension CSSRulable {
    // MARK: All

    /// Specifies the size of the background images
    public func backgroundSize(all: BackgroundSizeType) -> Self {
        _addProperty(.backgroundSize, .init(all: all))
        return self
    }

    /// Specifies the size of the background images
    public func backgroundSize<A>(all value: A) -> Self where A: StateConvertible, A.Value == BackgroundSizeType {
        _addProperty(BackgroundSizeProperty(all: value))
        return self
    }

    /// Specifies the size of the background images
    public func backgroundSize<L: UnitValuable>(all length: L) -> Self {
        backgroundSize(all: .length(length))
    }

    /// Specifies the size of the background images
    public func backgroundSize<L: UnitValuable>(all type: State<L>) -> Self {
        backgroundSize(all: type.map { .length($0) })
    }

    /// Specifies the size of the background images
    public func backgroundSize<V, L: UnitValuable>(all type: ExpressableState<V, L>) -> Self {
        backgroundSize(all: type.unwrap())
    }

    // MARK: H/V

    /// Specifies the size of the background images
    public func backgroundSize(h: BackgroundSizeType, v: BackgroundSizeType) -> Self {
        _addProperty(BackgroundSizeProperty(h: h, v: v))
        return self
    }

    /// Specifies the size of the background images
    public func backgroundSize<H: UnitValuable>(h: H, v: BackgroundSizeType) -> Self {
        backgroundSize(h: .length(h), v: v)
    }

    /// Specifies the size of the background images
    public func backgroundSize<V: UnitValuable>(h: BackgroundSizeType, v: V) -> Self {
        backgroundSize(h: h, v: .length(v))
    }

    /// Specifies the size of the background images
    public func backgroundSize<H: UnitValuable, V: UnitValuable>(h: H, v: V) -> Self {
        backgroundSize(h: .length(h), v: .length(v))
    }

    /// Specifies the size of the background images
    public func backgroundSize<A>(h: A, v: BackgroundSizeType) -> Self where A: StateConvertible, A.Value == BackgroundSizeType {
        _addProperty(BackgroundSizeProperty(h: h, v: v))
        return self
    }

    /// Specifies the size of the background images
    public func backgroundSize<A>(h: A, v: BackgroundSizeType) -> Self where A: StateConvertible, A.Value: UnitValuable {
        backgroundSize(h: h.stateValue.map { .length($0) }, v: v)
    }

    /// Specifies the size of the background images
    public func backgroundSize<A, V: UnitValuable>(h: A, v: V) -> Self where A: StateConvertible, A.Value: UnitValuable {
        backgroundSize(h: h.stateValue.map { .length($0) }, v: .length(v))
    }

    /// Specifies the size of the background images
    public func backgroundSize<B>(h: BackgroundSizeType, v: B) -> Self where B: StateConvertible, B.Value == BackgroundSizeType {
        _addProperty(BackgroundSizeProperty(h: h, v: v))
        return self
    }

    /// Specifies the size of the background images
    public func backgroundSize<B>(h: BackgroundSizeType, v: B) -> Self where B: StateConvertible, B.Value: UnitValuable {
        backgroundSize(h: h, v: v.stateValue.map { .length($0) })
    }

    /// Specifies the size of the background images
    public func backgroundSize<B, H: UnitValuable>(h: H, v: B) -> Self where B: StateConvertible, B.Value: UnitValuable {
        backgroundSize(h: .length(h), v: v.stateValue.map { .length($0) })
    }

    /// Specifies the size of the background images
    public func backgroundSize<A, B>(h: A, v: B) -> Self where A: StateConvertible, A.Value == BackgroundSizeType, B: StateConvertible, B.Value == BackgroundSizeType {
        _addProperty(BackgroundSizeProperty(h: h, v: v))
        return self
    }

    /// Specifies the size of the background images
    public func backgroundSize<A, B>(h: A, v: B) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value == BackgroundSizeType {
        backgroundSize(h: h.stateValue.map { .length($0) }, v: v)
    }

    /// Specifies the size of the background images
    public func backgroundSize<A, B>(h: A, v: B) -> Self where A: StateConvertible, A.Value == BackgroundSizeType, B: StateConvertible, B.Value: UnitValuable {
        backgroundSize(h: h, v: v.stateValue.map { .length($0) })
    }

    /// Specifies the size of the background images
    public func backgroundSize<A, B>(h: A, v: B) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        backgroundSize(h: h.stateValue.map { .length($0) }, v: v.stateValue.map { .length($0) })
    }
}

// MARK: - BorderBottomColorProperty

/// Sets the color of the bottom border
///
/// ```html
/// border-bottom-color: coral;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-bottom_color.asp)
public class BorderBottomColorProperty: _Property {
    public var propertyKey: PropertyKey<Color> { .borderBottomColor }
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
    /// Sets the color of the bottom border
    public static var borderBottomColor: PropertyKey<Color> { "border-bottom-color".propertyKey() }
}

extension Stylesheet {
    /// Sets the color of the bottom border
    public typealias BorderBottomColor = BorderBottomColorProperty
}

extension CSSRulable {
    /// Sets the color of the bottom border
    public func borderBottomColor(_ type: Color) -> Self {
        _addProperty(.borderBottomColor, type)
        return self
    }

    /// Sets the color of the bottom border
    public func borderBottomColor<S>(_ type: S) -> Self where S: StateConvertible, S.Value == Color {
        _addProperty(BorderBottomColorProperty(type.stateValue))
        return self
    }
}

// MARK: - BorderBottomLeftRadiusProperty

/// Defines the radius of the border of the bottom-left corner
///
/// ```html
/// border-bottom-left-radius: 25px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_border-bottom-left-radius.asp)
public class BorderBottomLeftRadiusProperty: _Property {
    public var propertyKey: PropertyKey<BorderRadiusType> { .borderBottomLeftRadius }
    public var propertyValue: BorderRadiusType
    var _content = _PropertyContent<BorderRadiusType>()

    public init (_ value: BorderRadiusType) {
        propertyValue = value
    }

    public convenience init (_ type: State<BorderRadiusType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderRadiusType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Defines the radius of the border of the bottom-left corner
    public static var borderBottomLeftRadius: PropertyKey<BorderRadiusType> { "border-bottom-left-radius".propertyKey() }
}

extension Stylesheet {
    /// Defines the radius of the border of the bottom-left corner
    public typealias BorderBottomLeftRadius = BorderBottomLeftRadiusProperty
}

extension CSSRulable {
    /// Defines the radius of the border of the bottom-left corner
    public func borderBottomLeftRadius(_ type: BorderRadiusType) -> Self {
        _addProperty(.borderBottomLeftRadius, type)
        return self
    }

    /// Defines the radius of the border of the bottom-left corner
    public func borderBottomLeftRadius(_ type: State<BorderRadiusType>) -> Self {
        _addProperty(BorderBottomLeftRadiusProperty(type))
        return self
    }

    /// Defines the radius of the border of the bottom-left corner
    public func borderBottomLeftRadius<V>(_ type: ExpressableState<V, BorderRadiusType>) -> Self {
        borderBottomLeftRadius(type.unwrap())
    }

    /// Defines the radius of the border of the bottom-left corner
    public func borderBottomLeftRadius<L: UnitValuable>(_ length: L) -> Self {
        borderBottomLeftRadius(.length(length))
    }

    /// Defines the radius of the border of the bottom-left corner
    public func borderBottomLeftRadius<L: UnitValuable>(_ type: State<L>) -> Self {
        borderBottomLeftRadius(type.map { .length($0) })
    }

    /// Defines the radius of the border of the bottom-left corner
    public func borderBottomLeftRadius<V, L: UnitValuable>(_ type: ExpressableState<V, L>) -> Self {
        borderBottomLeftRadius(type.unwrap())
    }
}

// MARK: - BorderBottomProperty

/// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
///
/// ```html
/// border-bottom: 5px solid red;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-bottom.asp)
public class BorderBottomProperty: _Property {
    public var propertyKey: PropertyKey<BorderValue> { .borderBottom }
    public var propertyValue: BorderValue
    var _content = _PropertyContent<BorderValue>()

    public init (width: BorderWidthType? = nil, style: BorderStyleType, color: Color? = nil) {
        propertyValue = BorderValue(width: width, style: style, color: color)
    }

    public convenience init <A>(width: A, style: BorderStyleType, color: Color? = nil) where A: StateConvertible, A.Value == Optional<BorderWidthType> {
        let width = width.stateValue
        self.init(width: width.wrappedValue, style: style, color: color)
        width.listen { self._changed(to: BorderValue(width: $0, style: style, color: color)) }
    }

    public convenience init <B>(width: BorderWidthType? = nil, style: B, color: Color? = nil) where B: StateConvertible, B.Value == BorderStyleType {
        let style = style.stateValue
        self.init(width: width, style: style.wrappedValue, color: color)
        style.listen { self._changed(to: BorderValue(width: width, style: $0, color: color)) }
    }

    public convenience init <C>(width: BorderWidthType? = nil, style: BorderStyleType, color: C) where C: StateConvertible, C.Value == Optional<Color> {
        let color = color.stateValue
        self.init(width: width, style: style, color: color.wrappedValue)
        color.listen { self._changed(to: BorderValue(width: width, style: style, color: $0)) }
    }

    public convenience init <A, B>(width: A, style: B, color: Color? = nil) where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType {
        let width = width.stateValue
        let style = style.stateValue
        self.init(width: width.wrappedValue, style: style.wrappedValue, color: color)
        width.listen { self._changed(to: BorderValue(width: $0, style: style.wrappedValue, color: color)) }
        style.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: $0, color: color)) }
    }

    public convenience init <A, C>(width: A, style: BorderStyleType, color: C) where A: StateConvertible, A.Value == BorderWidthType, C: StateConvertible, C.Value == Optional<Color> {
        let width = width.stateValue
        let color = color.stateValue
        self.init(width: width.wrappedValue, style: style, color: color.wrappedValue)
        width.listen { self._changed(to: BorderValue(width: $0, style: style, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: style, color: $0)) }
    }

    public convenience init <B, C>(width: BorderWidthType, style: B, color: C) where B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        let style = style.stateValue
        let color = color.stateValue
        self.init(width: width, style: style.wrappedValue, color: color.wrappedValue)
        style.listen { self._changed(to: BorderValue(width: width, style: $0, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width, style: style.wrappedValue, color: $0)) }
    }

    public convenience init <A, B, C>(width: A, style: B, color: C) where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        let width = width.stateValue
        let style = style.stateValue
        let color = color.stateValue
        self.init(width: width.wrappedValue, style: style.wrappedValue, color: color.wrappedValue)
        width.listen { self._changed(to: BorderValue(width: $0, style: style.wrappedValue, color: color.wrappedValue)) }
        style.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: $0, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: style.wrappedValue, color: $0)) }
    }
}

extension PropertyKey {
    /// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    public static var borderBottom: PropertyKey<BorderValue> { "border-bottom".propertyKey() }
}

extension Stylesheet {
    /// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    public typealias BorderBottom = BorderBottomProperty
}

extension CSSRulable {
    /// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    public func borderBottom(width: BorderWidthType? = nil, style: BorderStyleType, color: Color? = nil) -> Self {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    public func borderBottom<A>(width: A, style: BorderStyleType, color: Color? = nil) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    public func borderBottom<B>(width: BorderWidthType? = nil, style: B, color: Color? = nil) -> Self where B: StateConvertible, B.Value == BorderStyleType {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    public func borderBottom<C>(width: BorderWidthType? = nil, style: BorderStyleType, color: C) -> Self where C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    public func borderBottom<A, B>(width: A, style: B, color: Color? = nil) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    public func borderBottom<A, C>(width: A, style: BorderStyleType, color: C) -> Self where A: StateConvertible, A.Value == BorderWidthType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    public func borderBottom<B, C>(width: BorderWidthType, style: B, color: C) -> Self where B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    public func borderBottom<A, B, C>(width: A, style: B, color: C) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }
}

// MARK: - BorderBottomRightRadiusProperty

/// Defines the radius of the border of the bottom-right corner
///
/// ```html
/// border-bottom-right-radius: 25px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_border-bottom-right-radius.asp)
public class BorderBottomRightRadiusProperty: _Property {
    public var propertyKey: PropertyKey<BorderRadiusType> { .borderBottomRightRadius }
    public var propertyValue: BorderRadiusType
    var _content = _PropertyContent<BorderRadiusType>()

    public init (_ value: BorderRadiusType) {
        propertyValue = value
    }

    public convenience init (_ type: State<BorderRadiusType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderRadiusType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Defines the radius of the border of the bottom-right corner
    public static var borderBottomRightRadius: PropertyKey<BorderRadiusType> { "_border-bottom-right-radius__".propertyKey() }
}

extension Stylesheet {
    /// Defines the radius of the border of the bottom-right corner
    public typealias BorderBottomRightRadius = BorderBottomRightRadiusProperty
}

extension CSSRulable {
    /// Defines the radius of the border of the bottom-right corner
    public func borderBottomRightRadius(_ type: BorderRadiusType) -> Self {
        _addProperty(.borderBottomRightRadius, type)
        return self
    }

    /// Defines the radius of the border of the bottom-right corner
    public func borderBottomRightRadius(_ type: State<BorderRadiusType>) -> Self {
        _addProperty(BorderBottomRightRadiusProperty(type))
        return self
    }

    /// Defines the radius of the border of the bottom-right corner
    public func borderBottomRightRadius<V>(_ type: ExpressableState<V, BorderRadiusType>) -> Self {
        borderBottomRightRadius(type.unwrap())
    }

    /// Defines the radius of the border of the bottom-right corner
    public func borderBottomRightRadius<L: UnitValuable>(_ length: L) -> Self {
        borderBottomRightRadius(.length(length))
    }

    /// Defines the radius of the border of the bottom-right corner
    public func borderBottomRightRadius<L: UnitValuable>(_ type: State<L>) -> Self {
        borderBottomRightRadius(type.map { .length($0) })
    }

    /// Defines the radius of the border of the bottom-right corner
    public func borderBottomRightRadius<V, L: UnitValuable>(_ type: ExpressableState<V, L>) -> Self {
        borderBottomRightRadius(type.unwrap())
    }
}

// MARK: - BorderBottomStyleProperty

/// Sets the style of the bottom border
///
/// ```html
/// border-bottom-style: dotted;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-bottom_style.asp)
public class BorderBottomStyleProperty: _Property {
    public var propertyKey: PropertyKey<BorderStyleType> { .borderBottomStyle }
    public var propertyValue: BorderStyleType
    var _content = _PropertyContent<BorderStyleType>()

    public init (_ type: BorderStyleType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BorderStyleType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderStyleType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the style of the bottom border
    public static var borderBottomStyle: PropertyKey<BorderStyleType> { "border-bottom-style".propertyKey() }
}

extension Stylesheet {
    /// Sets the style of the bottom border
    public typealias BorderBottomStyle = BorderBottomStyleProperty
}

extension CSSRulable {
    /// Sets the style of the bottom border
    public func borderBottomStyle(_ type: BorderStyleType) -> Self {
        _addProperty(.borderBottomStyle, type)
        return self
    }

    /// Sets the style of the bottom border
    public func borderBottomStyle(_ type: State<BorderStyleType>) -> Self {
        _addProperty(BorderBottomStyleProperty(type))
        return self
    }

    /// Sets the style of the bottom border
    public func borderBottomStyle<V>(_ type: ExpressableState<V, BorderStyleType>) -> Self {
        borderBottomStyle(type.unwrap())
    }
}

// MARK: - BorderBottomWidthProperty

/// Sets the width of the bottom border
///
/// ```html
/// border-bottom-width: thin;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-bottom_width.asp)
public class BorderBottomWidthProperty: _Property {
    public var propertyKey: PropertyKey<BorderWidthType> { .borderBottomWidth }
    public var propertyValue: BorderWidthType
    var _content = _PropertyContent<BorderWidthType>()

    public init (_ type: BorderWidthType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BorderWidthType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderWidthType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the width of the bottom border
    public static var borderBottomWidth: PropertyKey<BorderWidthType> { "border-bottom-width".propertyKey() }
}

extension Stylesheet {
    /// Sets the width of the bottom border
    public typealias BorderBottomWidth = BorderBottomWidthProperty
}

extension CSSRulable {
    /// Sets the width of the bottom border
    public func borderBottomWidth(_ type: BorderWidthType) -> Self {
        _addProperty(.borderBottomWidth, type)
        return self
    }

    /// Sets the width of the bottom border
    public func borderBottomWidth(_ type: State<BorderWidthType>) -> Self {
        _addProperty(BorderBottomWidthProperty(type))
        return self
    }

    /// Sets the width of the bottom border
    public func borderBottomWidth<V>(_ type: ExpressableState<V, BorderWidthType>) -> Self {
        borderBottomWidth(type.unwrap())
    }

    /// Sets the width of the bottom border
    public func borderBottomWidth<L: UnitValuable>(_ length: L) -> Self {
        borderBottomWidth(.length(length))
    }

    /// Sets the width of the bottom border
    public func borderBottomWidth<L: UnitValuable>(_ type: State<L>) -> Self {
        borderBottomWidth(type.map { .length($0) })
    }

    /// Sets the width of the bottom border
    public func borderBottomWidth<V, L: UnitValuable>(_ type: ExpressableState<V, L>) -> Self {
        borderBottomWidth(type.unwrap())
    }
}

// MARK: - BorderCollapseProperty

/// Sets whether table borders should collapse into a single border or be separated
///
/// ```html
/// border-collapse: separate;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-collapse.asp)
public class BorderCollapseProperty: _Property {
    public var propertyKey: PropertyKey<BorderCollapseType> { .borderCollapse }
    public var propertyValue: BorderCollapseType
    var _content = _PropertyContent<BorderCollapseType>()

    public init (_ type: BorderCollapseType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BorderCollapseType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderCollapseType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets whether table borders should collapse into a single border or be separated
    public static var borderCollapse: PropertyKey<BorderCollapseType> { "border-collapse".propertyKey() }
}

extension Stylesheet {
    /// Sets whether table borders should collapse into a single border or be separated
    public typealias BorderCollapse = BorderCollapseProperty
}

extension CSSRulable {
    /// Sets whether table borders should collapse into a single border or be separated
    public func borderCollapse(_ type: BorderCollapseType) -> Self {
        _addProperty(.borderCollapse, type)
        return self
    }

    /// Sets whether table borders should collapse into a single border or be separated
    public func borderCollapse(_ type: State<BorderCollapseType>) -> Self {
        _addProperty(BorderCollapseProperty(type))
        return self
    }

    /// Sets whether table borders should collapse into a single border or be separated
    public func borderCollapse<V>(_ type: ExpressableState<V, BorderCollapseType>) -> Self {
        borderCollapse(type.unwrap())
    }
}

// MARK: - BorderColorProperty

/// Sets the color of the four borders
///
/// ```html
/// border-color: coral;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-color.asp)
public class BorderColorProperty: _Property {
    public var propertyKey: PropertyKey<Color> { .borderColor }
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
    /// Sets the color of the four borders
    public static var borderColor: PropertyKey<Color> { "border-color".propertyKey() }
}

extension Stylesheet {
    /// Sets the color of the four borders
    public typealias BorderColor = BorderColorProperty
}

extension CSSRulable {
    /// Sets the color of the four borders
    public func borderColor(_ type: Color) -> Self {
        _addProperty(.borderColor, type)
        return self
    }

    /// Sets the color of the four borders
    public func borderColor<S>(_ type: S) -> Self where S: StateConvertible, S.Value == Color {
        _addProperty(BorderColorProperty(type.stateValue))
        return self
    }
}

// MARK: - BorderImageOutsetProperty

/// Specifies the amount by which the border image area extends beyond the border box
///
/// ```html
/// border-image-outset: 10px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_border-image-outset.asp)
public class BorderImageOutsetProperty: _Property {
    public var propertyKey: PropertyKey<BorderImageOutsetType> { .borderImageOutset }
    public var propertyValue: BorderImageOutsetType
    var _content = _PropertyContent<BorderImageOutsetType>()

    public init (_ type: BorderImageOutsetType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BorderImageOutsetType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderImageOutsetType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the amount by which the border image area extends beyond the border box
    public static var borderImageOutset: PropertyKey<BorderImageOutsetType> { "border-image-outset".propertyKey() }
}

extension Stylesheet {
    /// Specifies the amount by which the border image area extends beyond the border box
    public typealias BorderImageOutset = BorderImageOutsetProperty
}

extension CSSRulable {
    /// Specifies the amount by which the border image area extends beyond the border box
    public func borderImageOutset(_ type: BorderImageOutsetType) -> Self {
        _addProperty(.borderImageOutset, type)
        return self
    }

    /// Specifies the amount by which the border image area extends beyond the border box
    public func borderImageOutset(_ type: State<BorderImageOutsetType>) -> Self {
        _addProperty(BorderImageOutsetProperty(type))
        return self
    }

    /// Specifies the amount by which the border image area extends beyond the border box
    public func borderImageOutset<V>(_ type: ExpressableState<V, BorderImageOutsetType>) -> Self {
        borderImageOutset(type.unwrap())
    }

    /// Specifies the amount by which the border image area extends beyond the border box
    public func borderImageOutset<L: UnitValuable>(_ length: L) -> Self {
        borderImageOutset(.length(length))
    }

    /// Specifies the amount by which the border image area extends beyond the border box
    public func borderImageOutset<L: UnitValuable>(_ type: State<L>) -> Self {
        borderImageOutset(type.map { .length($0) })
    }

    /// Specifies the amount by which the border image area extends beyond the border box
    public func borderImageOutset<V, L: UnitValuable>(_ type: ExpressableState<V, L>) -> Self {
        borderImageOutset(type.unwrap())
    }
}

// MARK: - BorderImageProperty

/// A shorthand property for all the border-image-* properties
///
/// ```html
/// border-image: url(border.png) 30 round;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_border-image.asp)
public class BorderImageProperty: _Property {
    public var propertyKey: PropertyKey<BorderImageValue> { .borderImage }
    public var propertyValue: BorderImageValue
    var _content = _PropertyContent<BorderImageValue>()

    public init (_ value: BorderImageValue) {
        propertyValue = value
    }

    public convenience init (_ type: State<BorderImageValue>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderImageValue>) {
        self.init(type.unwrap())
    }

    public init (
        source: String,
        slice: BorderImageSliceType? = nil,
        width: BorderWidthType? = nil,
        outset: BorderImageOutsetType? = nil,
        repeat: BorderImageRepeatType? = nil
    ) {
        propertyValue = BorderImageValue(source: source, slice: slice, width: width, outset: outset, repeat: `repeat`)
    }
}

extension PropertyKey {
    public static var borderImage: PropertyKey<BorderImageValue> { "border-image".propertyKey() }
}

public struct BorderImageValue: CustomStringConvertible {
    public let value: String

    public init (
        source: String,
        slice: BorderImageSliceType? = nil,
        width: BorderWidthType? = nil,
        outset: BorderImageOutsetType? = nil,
        repeat: BorderImageRepeatType? = nil
    ) {
        value = ["url(\(source)", slice?.value, width?.value, outset?.value, `repeat`?.value].compactMap { $0 }.joined(separator: " ")
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for all the border-image-* properties
    public typealias BorderImage = BorderImageProperty
}

extension CSSRulable {
    /// A shorthand property for all the border-image-* properties
    public func borderImage(_ type: BorderImageValue) -> Self {
        _addProperty(.borderImage, type)
        return self
    }

    /// A shorthand property for all the border-image-* properties
    public func borderImage(_ type: State<BorderImageValue>) -> Self {
        _addProperty(BorderImageProperty(type))
        return self
    }

    /// A shorthand property for all the border-image-* properties
    public func borderImage<V>(_ type: ExpressableState<V, BorderImageValue>) -> Self {
        borderImage(type.unwrap())
    }

    /// A shorthand property for all the border-image-* properties
    public func borderImage(
        source: String,
        slice: BorderImageSliceType? = nil,
        width: BorderWidthType? = nil,
        outset: BorderImageOutsetType? = nil,
        repeat: BorderImageRepeatType? = nil
    ) -> Self {
        _addProperty(BorderImageProperty(source: source, slice: slice, width: width, outset: outset, repeat: `repeat`))
        return self
    }
}

// MARK: - BorderImageRepeatProperty

/// Specifies whether the border image should be repeated, rounded or stretched
///
/// ```html
/// border-image-repeat: repeat;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_border-image-repeat.asp)
public class BorderImageRepeatProperty: _Property {
    public var propertyKey: PropertyKey<BorderImageRepeatType> { .borderImageRepeat }
    public var propertyValue: BorderImageRepeatType
    var _content = _PropertyContent<BorderImageRepeatType>()

    public init (_ type: BorderImageRepeatType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BorderImageRepeatType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderImageRepeatType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether the border image should be repeated, rounded or stretched
    public static var borderImageRepeat: PropertyKey<BorderImageRepeatType> { "border-image-repeat".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether the border image should be repeated, rounded or stretched
    public typealias BorderImageRepeat = BorderImageRepeatProperty
}

extension CSSRulable {
    /// Specifies whether the border image should be repeated, rounded or stretched
    public func borderImageRepeat(_ type: BorderImageRepeatType) -> Self {
        _addProperty(.borderImageRepeat, type)
        return self
    }

    /// Specifies whether the border image should be repeated, rounded or stretched
    public func borderImageRepeat(_ type: State<BorderImageRepeatType>) -> Self {
        _addProperty(BorderImageRepeatProperty(type))
        return self
    }

    /// Specifies whether the border image should be repeated, rounded or stretched
    public func borderImageRepeat<V>(_ type: ExpressableState<V, BorderImageRepeatType>) -> Self {
        borderImageRepeat(type.unwrap())
    }
}

// MARK: - BorderImageSliceProperty

/// Specifies how to slice the border image
///
/// ```html
/// border-image-slice: 30%;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_border-image-slice.asp)
public class BorderImageSliceProperty: _Property {
    public var propertyKey: PropertyKey<BorderImageSliceType> { .borderImageSlice }
    public var propertyValue: BorderImageSliceType
    var _content = _PropertyContent<BorderImageSliceType>()

    public init (_ type: BorderImageSliceType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BorderImageSliceType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderImageSliceType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies how to slice the border image
    public static var borderImageSlice: PropertyKey<BorderImageSliceType> { "border-image-slice".propertyKey() }
}

extension Stylesheet {
    /// Specifies how to slice the border image
    public typealias BorderImageSlice = BorderImageSliceProperty
}

extension CSSRulable {
    /// Specifies how to slice the border image
    public func borderImageSlice(_ type: BorderImageSliceType) -> Self {
        _addProperty(.borderImageSlice, type)
        return self
    }

    /// Specifies how to slice the border image
    public func borderImageSlice(_ type: State<BorderImageSliceType>) -> Self {
        _addProperty(BorderImageSliceProperty(type))
        return self
    }

    /// Specifies how to slice the border image
    public func borderImageSlice<V>(_ type: ExpressableState<V, BorderImageSliceType>) -> Self {
        borderImageSlice(type.unwrap())
    }
}

// MARK: - BorderImageSourceProperty

/// Specifies the path to the image to be used as a border
///
/// ```html
/// border-image-source: url(border.png);
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_border-image-source.asp)
public class BorderImageSourceProperty: _Property {
    public var propertyKey: PropertyKey<String> { .borderImageSource }
    public var propertyValue: String
    var _content = _PropertyContent<String>()

    public init (_ src: String) {
        propertyValue = "url(\(src)"
    }

    public convenience init (_ type: State<String>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, String>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the path to the image to be used as a border
    public static var borderImageSource: PropertyKey<String> { "border-image-source".propertyKey() }
}

extension Stylesheet {
    /// Specifies the path to the image to be used as a border
    public typealias BorderImageSource = BorderImageSourceProperty
}

extension CSSRulable {
    /// Specifies the path to the image to be used as a border
    public func borderImageSource(_ type: String) -> Self {
        _addProperty(.borderImageSource, type)
        return self
    }

    /// Specifies the path to the image to be used as a border
    public func borderImageSource(_ type: State<String>) -> Self {
        _addProperty(BorderImageSourceProperty(type))
        return self
    }

    /// Specifies the path to the image to be used as a border
    public func borderImageSource<V>(_ type: ExpressableState<V, String>) -> Self {
        borderImageSource(type.unwrap())
    }
}

// MARK: - BorderImageWidthProperty

/// Specifies the width of the border image
///
/// ```html
/// border-image-width: 10px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_border-image-width.asp)
public class BorderImageWidthProperty: _Property {
    public var propertyKey: PropertyKey<BorderWidthType> { .borderImageWidth }
    public var propertyValue: BorderWidthType
    var _content = _PropertyContent<BorderWidthType>()

    public init (_ type: BorderWidthType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BorderWidthType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderWidthType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the width of the border image
    public static var borderImageWidth: PropertyKey<BorderWidthType> { "border-image-width".propertyKey() }
}

extension Stylesheet {
    /// Specifies the width of the border image
    public typealias BorderImageWidth = BorderImageWidthProperty
}

extension CSSRulable {
    /// Specifies the width of the border image
    public func borderImageWidth(_ type: BorderWidthType) -> Self {
        _addProperty(.borderImageWidth, type)
        return self
    }

    /// Specifies the width of the border image
    public func borderImageWidth(_ type: State<BorderWidthType>) -> Self {
        _addProperty(BorderImageWidthProperty(type))
        return self
    }

    /// Specifies the width of the border image
    public func borderImageWidth<V>(_ type: ExpressableState<V, BorderWidthType>) -> Self {
        borderImageWidth(type.unwrap())
    }
}

// MARK: - BorderLeftColorProperty

/// Sets the color of the left border
///
/// ```html
/// border-left-color: coral;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-left_color.asp)
public class BorderLeftColorProperty: _Property {
    public var propertyKey: PropertyKey<Color> { .borderLeftColor }
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
    /// Sets the color of the left border
    public static var borderLeftColor: PropertyKey<Color> { "border-left-color".propertyKey() }
}

extension Stylesheet {
    /// Sets the color of the left border
    public typealias BorderLeftColor = BorderLeftColorProperty
}

extension CSSRulable {
    /// Sets the color of the left border
    public func borderLeftColor(_ type: Color) -> Self {
        _addProperty(.borderLeftColor, type)
        return self
    }

    /// Sets the color of the left border
    public func borderLeftColor<S>(_ type: S) -> Self where S: StateConvertible, S.Value == Color {
        _addProperty(BorderLeftColorProperty(type.stateValue))
        return self
    }
}

// MARK: - BorderLeftProperty

/// A shorthand property for all the border-left-* properties
///
/// ```html
/// border-left: 5px solid red;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-left.asp)
public class BorderLeftProperty: _Property {
    public var propertyKey: PropertyKey<BorderValue> { .borderLeft }
    public var propertyValue: BorderValue
    var _content = _PropertyContent<BorderValue>()

    public init (width: BorderWidthType? = nil, style: BorderStyleType, color: Color? = nil) {
        propertyValue = BorderValue(width: width, style: style, color: color)
    }

    public convenience init <A>(width: A, style: BorderStyleType, color: Color? = nil) where A: StateConvertible, A.Value == Optional<BorderWidthType> {
        let width = width.stateValue
        self.init(width: width.wrappedValue, style: style, color: color)
        width.listen { self._changed(to: BorderValue(width: $0, style: style, color: color)) }
    }

    public convenience init <B>(width: BorderWidthType? = nil, style: B, color: Color? = nil) where B: StateConvertible, B.Value == BorderStyleType {
        let style = style.stateValue
        self.init(width: width, style: style.wrappedValue, color: color)
        style.listen { self._changed(to: BorderValue(width: width, style: $0, color: color)) }
    }

    public convenience init <C>(width: BorderWidthType? = nil, style: BorderStyleType, color: C) where C: StateConvertible, C.Value == Optional<Color> {
        let color = color.stateValue
        self.init(width: width, style: style, color: color.wrappedValue)
        color.listen { self._changed(to: BorderValue(width: width, style: style, color: $0)) }
    }

    public convenience init <A, B>(width: A, style: B, color: Color? = nil) where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType {
        let width = width.stateValue
        let style = style.stateValue
        self.init(width: width.wrappedValue, style: style.wrappedValue, color: color)
        width.listen { self._changed(to: BorderValue(width: $0, style: style.wrappedValue, color: color)) }
        style.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: $0, color: color)) }
    }

    public convenience init <A, C>(width: A, style: BorderStyleType, color: C) where A: StateConvertible, A.Value == BorderWidthType, C: StateConvertible, C.Value == Optional<Color> {
        let width = width.stateValue
        let color = color.stateValue
        self.init(width: width.wrappedValue, style: style, color: color.wrappedValue)
        width.listen { self._changed(to: BorderValue(width: $0, style: style, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: style, color: $0)) }
    }

    public convenience init <B, C>(width: BorderWidthType, style: B, color: C) where B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        let style = style.stateValue
        let color = color.stateValue
        self.init(width: width, style: style.wrappedValue, color: color.wrappedValue)
        style.listen { self._changed(to: BorderValue(width: width, style: $0, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width, style: style.wrappedValue, color: $0)) }
    }

    public convenience init <A, B, C>(width: A, style: B, color: C) where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        let width = width.stateValue
        let style = style.stateValue
        let color = color.stateValue
        self.init(width: width.wrappedValue, style: style.wrappedValue, color: color.wrappedValue)
        width.listen { self._changed(to: BorderValue(width: $0, style: style.wrappedValue, color: color.wrappedValue)) }
        style.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: $0, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: style.wrappedValue, color: $0)) }
    }
}

extension PropertyKey {
    /// A shorthand property for all the border-left-* properties
    public static var borderLeft: PropertyKey<BorderValue> { "border-left".propertyKey() }
}

extension Stylesheet {
    /// A shorthand property for all the border-left-* properties
    public typealias BorderLeft = BorderLeftProperty
}

extension CSSRulable {
    /// A shorthand property for all the border-left-* properties
    public func borderLeft(width: BorderWidthType? = nil, style: BorderStyleType, color: Color? = nil) -> Self {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-left-* properties
    public func borderLeft<A>(width: A, style: BorderStyleType, color: Color? = nil) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-left-* properties
    public func borderLeft<B>(width: BorderWidthType? = nil, style: B, color: Color? = nil) -> Self where B: StateConvertible, B.Value == BorderStyleType {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-left-* properties
    public func borderLeft<C>(width: BorderWidthType? = nil, style: BorderStyleType, color: C) -> Self where C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-left-* properties
    public func borderLeft<A, B>(width: A, style: B, color: Color? = nil) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-left-* properties
    public func borderLeft<A, C>(width: A, style: BorderStyleType, color: C) -> Self where A: StateConvertible, A.Value == BorderWidthType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-left-* properties
    public func borderLeft<B, C>(width: BorderWidthType, style: B, color: C) -> Self where B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-left-* properties
    public func borderLeft<A, B, C>(width: A, style: B, color: C) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }
}

// MARK: - BorderLeftStyleProperty

/// Sets the style of the left border
///
/// ```html
/// border-left-style: dotted;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-left_style.asp)
public class BorderLeftStyleProperty: _Property {
    public var propertyKey: PropertyKey<BorderStyleType> { .borderLeftStyle }
    public var propertyValue: BorderStyleType
    var _content = _PropertyContent<BorderStyleType>()

    public init (_ type: BorderStyleType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BorderStyleType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderStyleType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the style of the left border
    public static var borderLeftStyle: PropertyKey<BorderStyleType> { "border-left-style".propertyKey() }
}

extension Stylesheet {
    /// Sets the style of the left border
    public typealias BorderLeftStyle = BorderLeftStyleProperty
}

extension CSSRulable {
    /// Sets the style of the left border
    public func borderLeftStyle(_ type: BorderStyleType) -> Self {
        _addProperty(.borderLeftStyle, type)
        return self
    }

    /// Sets the style of the left border
    public func borderLeftStyle(_ type: State<BorderStyleType>) -> Self {
        _addProperty(BorderLeftStyleProperty(type))
        return self
    }

    /// Sets the style of the left border
    public func borderLeftStyle<V>(_ type: ExpressableState<V, BorderStyleType>) -> Self {
        borderLeftStyle(type.unwrap())
    }
}

// MARK: - BorderLeftWidthProperty

/// Sets the width of the left border
///
/// ```html
/// border-left-width: thin;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-left_width.asp)
public class BorderLeftWidthProperty: _Property {
    public var propertyKey: PropertyKey<BorderWidthType> { .borderLeftWidth }
    public var propertyValue: BorderWidthType
    var _content = _PropertyContent<BorderWidthType>()

    public init (_ type: BorderWidthType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BorderWidthType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderWidthType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the width of the left border
    public static var borderLeftWidth: PropertyKey<BorderWidthType> { "border-left-width".propertyKey() }
}

extension Stylesheet {
    /// Sets the width of the left border
    public typealias BorderLeftWidth = BorderLeftWidthProperty
}

extension CSSRulable {
    /// Sets the width of the left border
    public func borderLeftWidth(_ type: BorderWidthType) -> Self {
        _addProperty(.borderLeftWidth, type)
        return self
    }

    /// Sets the width of the left border
    public func borderLeftWidth(_ type: State<BorderWidthType>) -> Self {
        _addProperty(BorderLeftWidthProperty(type))
        return self
    }

    /// Sets the width of the left border
    public func borderLeftWidth<V>(_ type: ExpressableState<V, BorderWidthType>) -> Self {
        borderLeftWidth(type.unwrap())
    }

    /// Sets the width of the left border
    public func borderLeftWidth<L: UnitValuable>(_ length: L) -> Self {
        borderLeftWidth(.length(length))
    }

    /// Sets the width of the left border
    public func borderLeftWidth<L: UnitValuable>(_ type: State<L>) -> Self {
        borderLeftWidth(type.map { .length($0) })
    }

    /// Sets the width of the left border
    public func borderLeftWidth<V, L: UnitValuable>(_ type: ExpressableState<V, L>) -> Self {
        borderLeftWidth(type.unwrap())
    }
}

// MARK: - BorderProperty

/// A shorthand property for border-width, border-style and border-color
///
/// ```html
/// border: 5px solid red;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border.asp)
public class BorderProperty: _Property {
    public var propertyKey: PropertyKey<BorderValue> { .border }
    public var propertyValue: BorderValue
    var _content = _PropertyContent<BorderValue>()

    public init (width: BorderWidthType? = nil, style: BorderStyleType, color: Color? = nil) {
        propertyValue = BorderValue(width: width, style: style, color: color)
    }

    public convenience init <A>(width: A, style: BorderStyleType, color: Color? = nil) where A: StateConvertible, A.Value == Optional<BorderWidthType> {
        let width = width.stateValue
        self.init(width: width.wrappedValue, style: style, color: color)
        width.listen { self._changed(to: BorderValue(width: $0, style: style, color: color)) }
    }

    public convenience init <B>(width: BorderWidthType? = nil, style: B, color: Color? = nil) where B: StateConvertible, B.Value == BorderStyleType {
        let style = style.stateValue
        self.init(width: width, style: style.wrappedValue, color: color)
        style.listen { self._changed(to: BorderValue(width: width, style: $0, color: color)) }
    }

    public convenience init <C>(width: BorderWidthType? = nil, style: BorderStyleType, color: C) where C: StateConvertible, C.Value == Optional<Color> {
        let color = color.stateValue
        self.init(width: width, style: style, color: color.wrappedValue)
        color.listen { self._changed(to: BorderValue(width: width, style: style, color: $0)) }
    }

    public convenience init <A, B>(width: A, style: B, color: Color? = nil) where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType {
        let width = width.stateValue
        let style = style.stateValue
        self.init(width: width.wrappedValue, style: style.wrappedValue, color: color)
        width.listen { self._changed(to: BorderValue(width: $0, style: style.wrappedValue, color: color)) }
        style.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: $0, color: color)) }
    }

    public convenience init <A, C>(width: A, style: BorderStyleType, color: C) where A: StateConvertible, A.Value == BorderWidthType, C: StateConvertible, C.Value == Optional<Color> {
        let width = width.stateValue
        let color = color.stateValue
        self.init(width: width.wrappedValue, style: style, color: color.wrappedValue)
        width.listen { self._changed(to: BorderValue(width: $0, style: style, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: style, color: $0)) }
    }

    public convenience init <B, C>(width: BorderWidthType, style: B, color: C) where B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        let style = style.stateValue
        let color = color.stateValue
        self.init(width: width, style: style.wrappedValue, color: color.wrappedValue)
        style.listen { self._changed(to: BorderValue(width: width, style: $0, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width, style: style.wrappedValue, color: $0)) }
    }

    public convenience init <A, B, C>(width: A, style: B, color: C) where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        let width = width.stateValue
        let style = style.stateValue
        let color = color.stateValue
        self.init(width: width.wrappedValue, style: style.wrappedValue, color: color.wrappedValue)
        width.listen { self._changed(to: BorderValue(width: $0, style: style.wrappedValue, color: color.wrappedValue)) }
        style.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: $0, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: style.wrappedValue, color: $0)) }
    }
}

extension PropertyKey {
    /// A shorthand property for border-width, border-style and border-color
    public static var border: PropertyKey<BorderValue> { "border".propertyKey() }
}

public struct BorderValue: CustomStringConvertible {
    public let value: String

    public init (width: BorderWidthType? = nil, style: BorderStyleType, color: Color? = nil) {
        value = [width?.value, style.value, color?.description].compactMap { $0 }.joined(separator: " ")
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for border-width, border-style and border-color
    public typealias Border = BorderProperty
}

extension CSSRulable {
    /// A shorthand property for border-width, border-style and border-color
    public func border(width: BorderWidthType? = nil, style: BorderStyleType, color: Color? = nil) -> Self {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-width, border-style and border-color
    public func border<A>(width: A, style: BorderStyleType, color: Color? = nil) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-width, border-style and border-color
    public func border<B>(width: BorderWidthType? = nil, style: B, color: Color? = nil) -> Self where B: StateConvertible, B.Value == BorderStyleType {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-width, border-style and border-color
    public func border<C>(width: BorderWidthType? = nil, style: BorderStyleType, color: C) -> Self where C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-width, border-style and border-color
    public func border<A, B>(width: A, style: B, color: Color? = nil) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-width, border-style and border-color
    public func border<A, C>(width: A, style: BorderStyleType, color: C) -> Self where A: StateConvertible, A.Value == BorderWidthType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-width, border-style and border-color
    public func border<B, C>(width: BorderWidthType, style: B, color: C) -> Self where B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-width, border-style and border-color
    public func border<A, B, C>(width: A, style: B, color: C) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }
}

// MARK: - BorderRadiusProperty

/// A shorthand property for the four border-*-radius properties
///
/// ```html
/// border-radius: 50px 20px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_border-radius.asp)
public class BorderRadiusProperty: _Property {
    public var propertyKey: PropertyKey<BorderRadiusValue> { .borderRadius }
    public var propertyValue: BorderRadiusValue
    var _content = _PropertyContent<BorderRadiusValue>()

    public init (all: BorderRadiusType) {
        propertyValue = BorderRadiusValue(all: all)
    }

    public convenience init <A>(all type: A) where A: StateConvertible, A.Value == BorderRadiusType {
        let state = type.stateValue
        self.init(all: state.wrappedValue)
        state.listen { self._changed(to: BorderRadiusValue(all: $0)) }
    }

    // MARK: TL/BR

    public init (topLeft: BorderRadiusType, bottomRight: BorderRadiusType) {
        propertyValue = BorderRadiusValue(topLeft: topLeft, bottomRight: bottomRight)
    }

    public convenience init <A>(topLeft: A, bottomRight: BorderRadiusType) where A: StateConvertible, A.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        self.init(topLeft: topLeft.wrappedValue, bottomRight: bottomRight)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, bottomRight: bottomRight)) }
    }

    public convenience init <B>(topLeft: BorderRadiusType, bottomRight: B) where B: StateConvertible, B.Value == BorderRadiusType {
        let bottomRight = bottomRight.stateValue
        self.init(topLeft: topLeft, bottomRight: bottomRight.wrappedValue)
        bottomRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, bottomRight: $0)) }
    }

    public convenience init <A, B>(topLeft: A, bottomRight: B) where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        let bottomRight = bottomRight.stateValue
        self.init(topLeft: topLeft.wrappedValue, bottomRight: bottomRight.wrappedValue)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, bottomRight: bottomRight.wrappedValue)) }
        bottomRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, bottomRight: $0)) }
    }

    // MARK: TL/TR/BL

    public init (topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomLeft: BorderRadiusType) {
        propertyValue = BorderRadiusValue(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft)
    }

    public convenience init <A>(topLeft: A, topRight: BorderRadiusType, bottomLeft: BorderRadiusType) where A: StateConvertible, A.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        self.init(topLeft: topLeft.wrappedValue, topRight: topRight, bottomLeft: bottomLeft)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, topRight: topRight, bottomLeft: bottomLeft)) }
    }

    public convenience init <B>(topLeft: BorderRadiusType, topRight: B, bottomLeft: BorderRadiusType) where B: StateConvertible, B.Value == BorderRadiusType {
        let topRight = topRight.stateValue
        self.init(topLeft: topLeft, topRight: topRight.wrappedValue, bottomLeft: bottomLeft)
        topRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: $0, bottomLeft: bottomLeft)) }
    }

    public convenience init <C>(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomLeft: C) where C: StateConvertible, C.Value == BorderRadiusType {
        let bottomLeft = bottomLeft.stateValue
        self.init(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft.wrappedValue)
        bottomLeft.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: topRight, bottomLeft: $0)) }
    }

    public convenience init <A, B>(topLeft: A, topRight: B, bottomLeft: BorderRadiusType) where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        let topRight = topRight.stateValue
        self.init(topLeft: topLeft.wrappedValue, topRight: topRight.wrappedValue, bottomLeft: bottomLeft)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, topRight: topRight.wrappedValue, bottomLeft: bottomLeft)) }
        topRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: $0, bottomLeft: bottomLeft)) }
    }

    public convenience init <A, C>(topLeft: A, topRight: BorderRadiusType, bottomLeft: C) where A: StateConvertible, A.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        let bottomLeft = bottomLeft.stateValue
        self.init(topLeft: topLeft.wrappedValue, topRight: topRight, bottomLeft: bottomLeft.wrappedValue)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, topRight: topRight, bottomLeft: bottomLeft.wrappedValue)) }
        bottomLeft.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: topRight, bottomLeft: $0)) }
    }

    public convenience init <B, C>(topLeft: BorderRadiusType, topRight: B, bottomLeft: C) where B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        let topRight = topRight.stateValue
        let bottomLeft = bottomLeft.stateValue
        self.init(topLeft: topLeft, topRight: topRight.wrappedValue, bottomLeft: bottomLeft.wrappedValue)
        topRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: $0, bottomLeft: bottomLeft.wrappedValue)) }
        bottomLeft.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: topRight.wrappedValue, bottomLeft: $0)) }
    }

    public convenience init <A, B, C>(topLeft: A, topRight: B, bottomLeft: C) where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        let topRight = topRight.stateValue
        let bottomLeft = bottomLeft.stateValue
        self.init(topLeft: topLeft.wrappedValue, topRight: topRight.wrappedValue, bottomLeft: bottomLeft.wrappedValue)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, topRight: topRight.wrappedValue, bottomLeft: bottomLeft.wrappedValue)) }
        topRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: $0, bottomLeft: bottomLeft.wrappedValue)) }
        bottomLeft.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: topRight.wrappedValue, bottomLeft: $0)) }
    }

    // MARK: TL/TR/BR/BL

    public init (topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomRight: BorderRadiusType, bottomLeft: BorderRadiusType) {
        propertyValue = BorderRadiusValue(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft)
    }

    public convenience init <A>(topLeft: A, topRight: BorderRadiusType, bottomRight: BorderRadiusType, bottomLeft: BorderRadiusType) where A: StateConvertible, A.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        self.init(topLeft: topLeft.wrappedValue, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft)) }
    }

    public convenience init <B>(topLeft: BorderRadiusType, topRight: B, bottomRight: BorderRadiusType, bottomLeft: BorderRadiusType) where B: StateConvertible, B.Value == BorderRadiusType {
        let topRight = topRight.stateValue
        self.init(topLeft: topLeft, topRight: topRight.wrappedValue, bottomRight: bottomRight, bottomLeft: bottomLeft)
        topRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: $0, bottomRight: bottomRight, bottomLeft: bottomLeft)) }
    }

    public convenience init <C>(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomRight: C, bottomLeft: BorderRadiusType) where C: StateConvertible, C.Value == BorderRadiusType {
        let bottomRight = bottomRight.stateValue
        self.init(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft)
        bottomRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: topRight, bottomRight: $0, bottomLeft: bottomLeft)) }
    }

    public convenience init <D>(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomRight: BorderRadiusType, bottomLeft: D) where D: StateConvertible, D.Value == BorderRadiusType {
        let bottomLeft = bottomLeft.stateValue
        self.init(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft.wrappedValue)
        bottomLeft.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: $0)) }
    }

    public convenience init <A, B>(topLeft: A, topRight: B, bottomRight: BorderRadiusType, bottomLeft: BorderRadiusType) where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        let topRight = topRight.stateValue
        self.init(topLeft: topLeft.wrappedValue, topRight: topRight.wrappedValue, bottomRight: bottomRight, bottomLeft: bottomLeft)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, topRight: topRight.wrappedValue, bottomRight: bottomRight, bottomLeft: bottomLeft)) }
        topRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: $0, bottomRight: bottomRight, bottomLeft: bottomLeft)) }
    }

    public convenience init <A, C>(topLeft: A, topRight: BorderRadiusType, bottomRight: C, bottomLeft: BorderRadiusType) where A: StateConvertible, A.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        let bottomRight = bottomRight.stateValue
        self.init(topLeft: topLeft.wrappedValue, topRight: topRight, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, topRight: topRight, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft)) }
        bottomRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: topRight, bottomRight: $0, bottomLeft: bottomLeft)) }
    }

    public convenience init <A, D>(topLeft: A, topRight: BorderRadiusType, bottomRight: BorderRadiusType, bottomLeft: D) where A: StateConvertible, A.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        let bottomLeft = bottomLeft.stateValue
        self.init(topLeft: topLeft.wrappedValue, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft.wrappedValue)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft.wrappedValue)) }
        bottomLeft.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: topRight, bottomRight: bottomRight, bottomLeft: $0)) }
    }

    public convenience init <B, C>(topLeft: BorderRadiusType, topRight: B, bottomRight: C, bottomLeft: BorderRadiusType) where B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        let topRight = topRight.stateValue
        let bottomRight = bottomRight.stateValue
        self.init(topLeft: topLeft, topRight: topRight.wrappedValue, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft)
        topRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: $0, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft)) }
        bottomRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: topRight.wrappedValue, bottomRight: $0, bottomLeft: bottomLeft)) }
    }

    public convenience init <B, D>(topLeft: BorderRadiusType, topRight: B, bottomRight: BorderRadiusType, bottomLeft: D) where B: StateConvertible, B.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        let topRight = topRight.stateValue
        let bottomLeft = bottomLeft.stateValue
        self.init(topLeft: topLeft, topRight: topRight.wrappedValue, bottomRight: bottomRight, bottomLeft: bottomLeft.wrappedValue)
        topRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: $0, bottomRight: bottomRight, bottomLeft: bottomLeft.wrappedValue)) }
        bottomLeft.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: topRight.wrappedValue, bottomRight: bottomRight, bottomLeft: $0)) }
    }

    public convenience init <C, D>(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomRight: C, bottomLeft: D) where C: StateConvertible, C.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        let bottomRight = bottomRight.stateValue
        let bottomLeft = bottomLeft.stateValue
        self.init(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft.wrappedValue)
        bottomRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: topRight, bottomRight: $0, bottomLeft: bottomLeft.wrappedValue)) }
        bottomLeft.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight.wrappedValue, bottomLeft: $0)) }
    }

    public convenience init <A, B, C>(topLeft: A, topRight: B, bottomRight: C, bottomLeft: BorderRadiusType) where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        let topRight = topRight.stateValue
        let bottomRight = bottomRight.stateValue
        self.init(topLeft: topLeft.wrappedValue, topRight: topRight.wrappedValue, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, topRight: topRight.wrappedValue, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft)) }
        topRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: $0, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft)) }
        bottomRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: topRight.wrappedValue, bottomRight: $0, bottomLeft: bottomLeft)) }
    }

    public convenience init <A, B, D>(topLeft: A, topRight: B, bottomRight: BorderRadiusType, bottomLeft: D) where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        let topRight = topRight.stateValue
        let bottomLeft = bottomLeft.stateValue
        self.init(topLeft: topLeft.wrappedValue, topRight: topRight.wrappedValue, bottomRight: bottomRight, bottomLeft: bottomLeft.wrappedValue)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, topRight: topRight.wrappedValue, bottomRight: bottomRight, bottomLeft: bottomLeft.wrappedValue)) }
        topRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: $0, bottomRight: bottomRight, bottomLeft: bottomLeft.wrappedValue)) }
        bottomLeft.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: topRight.wrappedValue, bottomRight: bottomRight, bottomLeft: $0)) }
    }

    public convenience init <A, C, D>(topLeft: A, topRight: BorderRadiusType, bottomRight: C, bottomLeft: D) where A: StateConvertible, A.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        let bottomRight = bottomRight.stateValue
        let bottomLeft = bottomLeft.stateValue
        self.init(topLeft: topLeft.wrappedValue, topRight: topRight, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft.wrappedValue)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, topRight: topRight, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft.wrappedValue)) }
        bottomRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: topRight, bottomRight: $0, bottomLeft: bottomLeft.wrappedValue)) }
        bottomLeft.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: topRight, bottomRight: bottomRight.wrappedValue, bottomLeft: $0)) }
    }

    public convenience init <B, C, D>(topLeft: BorderRadiusType, topRight: B, bottomRight: C, bottomLeft: D) where B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        let topRight = topRight.stateValue
        let bottomRight = bottomRight.stateValue
        let bottomLeft = bottomLeft.stateValue
        self.init(topLeft: topLeft, topRight: topRight.wrappedValue, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft.wrappedValue)
        topRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: $0, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft.wrappedValue)) }
        bottomRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: topRight.wrappedValue, bottomRight: $0, bottomLeft: bottomLeft.wrappedValue)) }
        bottomLeft.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft, topRight: topRight.wrappedValue, bottomRight: bottomRight.wrappedValue, bottomLeft: $0)) }
    }

    public convenience init <A, B, C, D>(topLeft: A, topRight: B, bottomRight: C, bottomLeft: D) where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        let topLeft = topLeft.stateValue
        let topRight = topRight.stateValue
        let bottomRight = bottomRight.stateValue
        let bottomLeft = bottomLeft.stateValue
        self.init(topLeft: topLeft.wrappedValue, topRight: topRight.wrappedValue, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft.wrappedValue)
        topLeft.listen { self._changed(to: BorderRadiusValue(topLeft: $0, topRight: topRight.wrappedValue, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft.wrappedValue)) }
        topRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: $0, bottomRight: bottomRight.wrappedValue, bottomLeft: bottomLeft.wrappedValue)) }
        bottomRight.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: topRight.wrappedValue, bottomRight: $0, bottomLeft: bottomLeft.wrappedValue)) }
        bottomLeft.listen { self._changed(to: BorderRadiusValue(topLeft: topLeft.wrappedValue, topRight: topRight.wrappedValue, bottomRight: bottomRight.wrappedValue, bottomLeft: $0)) }
    }
}

extension PropertyKey {
    /// A shorthand property for the four border-*-radius properties
    public static var borderRadius: PropertyKey<BorderRadiusValue> { "border-radius".propertyKey() }
}

public class BorderRadiusValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    @State public var value = ""

    var _changeHandler = {}

    public init (all: BorderRadiusType) {
        value = all.description
        $value.listen {
            self._changeHandler()
        }
    }

    public convenience init (all: State<BorderRadiusType>) {
        self.init(all: all.wrappedValue)
        all.listen {
            self.value = all.wrappedValue.description
        }
    }

    public convenience init <V>(all: ExpressableState<V, BorderRadiusType>) {
        self.init(all: all.unwrap())
    }

    private static func values(_ values: BorderRadiusType...) -> String {
        self.values(values)
    }

    private static func values(_ values: [BorderRadiusType]) -> String {
        values.map { $0.description }.joined(separator: " ")
    }

    // MARK: TL/BR

    public init (topLeft: BorderRadiusType, bottomRight: BorderRadiusType) {
        value = Self.values(topLeft, bottomRight)
        $value.listen {
            self._changeHandler()
        }
    }

    public convenience init (topLeft: State<BorderRadiusType>, bottomRight: BorderRadiusType) {
        self.init(topLeft: topLeft.wrappedValue, bottomRight: bottomRight)
        topLeft.listen {
            self.value = Self.values($0, bottomRight)
        }
    }

    public convenience init <V>(topLeft: ExpressableState<V, BorderRadiusType>, bottomRight: BorderRadiusType) {
        self.init(topLeft: topLeft.unwrap(), bottomRight: bottomRight)
    }

    public convenience init <V>(topLeft: ExpressableState<V, BorderRadiusType>, bottomRight: State<BorderRadiusType>) {
        self.init(topLeft: topLeft.unwrap(), bottomRight: bottomRight)
    }

    public convenience init <V>(topLeft: BorderRadiusType, bottomRight: ExpressableState<V, BorderRadiusType>) {
        self.init(topLeft: topLeft, bottomRight: bottomRight.unwrap())
    }

    public convenience init <V>(topLeft: State<BorderRadiusType>, bottomRight: ExpressableState<V, BorderRadiusType>) {
        self.init(topLeft: topLeft, bottomRight: bottomRight.unwrap())
    }

    public convenience init <V1, V2>(topLeft: ExpressableState<V1, BorderRadiusType>, bottomRight: ExpressableState<V2, BorderRadiusType>) {
        self.init(topLeft: topLeft.unwrap(), bottomRight: bottomRight.unwrap())
    }

    public convenience init (topLeft: BorderRadiusType, bottomRight: State<BorderRadiusType>) {
        self.init(topLeft: topLeft, bottomRight: bottomRight.wrappedValue)
        bottomRight.listen {
            self.value = Self.values(topLeft, $0)
        }
    }

    public convenience init (topLeft: State<BorderRadiusType>, bottomRight: State<BorderRadiusType>) {
        self.init(topLeft: topLeft.wrappedValue, bottomRight: bottomRight.wrappedValue)
        topLeft.listen {
            self.value = Self.values($0, bottomRight.wrappedValue)
        }
        bottomRight.listen {
            self.value = Self.values(topLeft.wrappedValue, $0)
        }
    }

    // MARK: Other

    public init (topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomLeft: BorderRadiusType) {
        value = Self.values(topLeft, topRight, bottomLeft)
        $value.listen {
            self._changeHandler()
        }
    }

    public init (topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomRight: BorderRadiusType, bottomLeft: BorderRadiusType) {
        value = Self.values(topLeft, topRight, bottomRight, bottomLeft)
        $value.listen {
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for the four border-*-radius properties
    public typealias BorderRadius = BorderRadiusProperty
}

extension CSSRulable {
    /// A shorthand property for the four border-*-radius properties
    public func borderRadius(all: BorderRadiusType) -> Self {
        _addProperty(BorderRadiusProperty(all: all))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A>(all type: A) -> Self where A: StateConvertible, A.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(all: type))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<L: UnitValuable>(all: L) -> Self {
        borderRadius(all: .length(all))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A>(all type: A) -> Self where A: StateConvertible, A.Value: UnitValuable {
        borderRadius(all: type.stateValue.map { .length($0) })
    }

    // MARK: TL/BR

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius(topLeft: BorderRadiusType, bottomRight: BorderRadiusType) -> Self {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, bottomRight: bottomRight))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<L: UnitValuable>(topLeft: L, bottomRight: BorderRadiusType) -> Self {
        borderRadius(topLeft: .length(topLeft), bottomRight: bottomRight)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<L: UnitValuable>(topLeft: BorderRadiusType, bottomRight: L) -> Self {
        borderRadius(topLeft: topLeft, bottomRight: .length(bottomRight))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A>(topLeft: A, bottomRight: BorderRadiusType) -> Self where A: StateConvertible, A.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, bottomRight: bottomRight))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A>(topLeft: A, bottomRight: BorderRadiusType) -> Self where A: StateConvertible, A.Value: UnitValuable {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, bottomRight: bottomRight)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, L: UnitValuable>(topLeft: A, bottomRight: L) -> Self where A: StateConvertible, A.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft, bottomRight: .length(bottomRight))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, L: UnitValuable>(topLeft: A, bottomRight: L) -> Self where A: StateConvertible, A.Value: UnitValuable {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, bottomRight: .length(bottomRight))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B>(topLeft: BorderRadiusType, bottomRight: B) -> Self where B: StateConvertible, B.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, bottomRight: bottomRight))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B>(topLeft: BorderRadiusType, bottomRight: B) -> Self where B: StateConvertible, B.Value: UnitValuable {
        borderRadius(topLeft: topLeft, bottomRight: bottomRight.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, L: UnitValuable>(topLeft: L, bottomRight: B) -> Self where B: StateConvertible, B.Value == BorderRadiusType {
        borderRadius(topLeft: .length(topLeft), bottomRight: bottomRight)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, L: UnitValuable>(topLeft: L, bottomRight: B) -> Self where B: StateConvertible, B.Value: UnitValuable {
        borderRadius(topLeft: .length(topLeft), bottomRight: bottomRight.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B>(topLeft: A, bottomRight: B) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, bottomRight: bottomRight))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B>(topLeft: A, bottomRight: B) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, bottomRight: bottomRight)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B>(topLeft: A, bottomRight: B) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value: UnitValuable {
        borderRadius(topLeft: topLeft, bottomRight: bottomRight.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B>(topLeft: A, bottomRight: B) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, bottomRight: bottomRight.stateValue.map { .length($0) })
    }

    // MARK: TL/TR/BL

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomLeft: BorderRadiusType) -> Self {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<L: UnitValuable>(topLeft: L, topRight: BorderRadiusType, bottomLeft: BorderRadiusType) -> Self {
        borderRadius(topLeft: .length(topLeft), topRight: topRight, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<L: UnitValuable>(topLeft: BorderRadiusType, topRight: L, bottomLeft: BorderRadiusType) -> Self {
        borderRadius(topLeft: topLeft, topRight: .length(topRight), bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<L: UnitValuable>(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomLeft: L) -> Self {
        borderRadius(topLeft: topLeft, topRight: topRight, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<L1: UnitValuable, L2: UnitValuable>(topLeft: L1, topRight: BorderRadiusType, bottomLeft: L2) -> Self {
        borderRadius(topLeft: .length(topLeft), topRight: topRight, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<L1: UnitValuable, L2: UnitValuable>(topLeft: L1, topRight: L2, bottomLeft: BorderRadiusType) -> Self {
        borderRadius(topLeft: .length(topLeft), topRight: .length(topRight), bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<L1: UnitValuable, L2: UnitValuable>(topLeft: BorderRadiusType, topRight: L1, bottomLeft: L2) -> Self {
        borderRadius(topLeft: topLeft, topRight: .length(topRight), bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<L1: UnitValuable, L2: UnitValuable, L3: UnitValuable>(topLeft: L1, topRight: L2, bottomLeft: L3) -> Self {
        borderRadius(topLeft: .length(topLeft), topRight: .length(topRight), bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A>(topLeft: A, topRight: BorderRadiusType, bottomLeft: BorderRadiusType) -> Self where A: StateConvertible, A.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, L: UnitValuable>(topLeft: A, topRight: L, bottomLeft: BorderRadiusType) -> Self where A: StateConvertible, A.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft, topRight: .length(topRight), bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, L: UnitValuable>(topLeft: A, topRight: BorderRadiusType, bottomLeft: L) -> Self where A: StateConvertible, A.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft, topRight: topRight, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, L1: UnitValuable, L2: UnitValuable>(topLeft: A, topRight: L1, bottomLeft: L2) -> Self where A: StateConvertible, A.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft, topRight: .length(topRight), bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A>(topLeft: A, topRight: BorderRadiusType, bottomLeft: BorderRadiusType) -> Self where A: StateConvertible, A.Value: UnitValuable {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, topRight: topRight, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, L: UnitValuable>(topLeft: A, topRight: L, bottomLeft: BorderRadiusType) -> Self where A: StateConvertible, A.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: .length(topRight), bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, L: UnitValuable>(topLeft: A, topRight: BorderRadiusType, bottomLeft: L) -> Self where A: StateConvertible, A.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: topRight, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, L1: UnitValuable, L2: UnitValuable>(topLeft: A, topRight: L1, bottomLeft: L2) -> Self where A: StateConvertible, A.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: .length(topRight), bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B>(topLeft: BorderRadiusType, topRight: B, bottomLeft: BorderRadiusType) -> Self where B: StateConvertible, B.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, L: UnitValuable>(topLeft: L, topRight: B, bottomLeft: BorderRadiusType) -> Self where B: StateConvertible, B.Value == BorderRadiusType {
        borderRadius(topLeft: .length(topLeft), topRight: topRight, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, L: UnitValuable>(topLeft: BorderRadiusType, topRight: B, bottomLeft: L) -> Self where B: StateConvertible, B.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft, topRight: topRight, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, L1: UnitValuable, L2: UnitValuable>(topLeft: L1, topRight: B, bottomLeft: L2) -> Self where B: StateConvertible, B.Value == BorderRadiusType {
        borderRadius(topLeft: .length(topLeft), topRight: topRight, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B>(topLeft: BorderRadiusType, topRight: B, bottomLeft: BorderRadiusType) -> Self where B: StateConvertible, B.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: topRight.stateValue.map { .length($0) }, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, L: UnitValuable>(topLeft: L, topRight: B, bottomLeft: BorderRadiusType) -> Self where B: StateConvertible, B.Value: UnitValuable {
        borderRadius(topLeft: .length(topLeft), topRight: topRight, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, L: UnitValuable>(topLeft: BorderRadiusType, topRight: B, bottomLeft: L) -> Self where B: StateConvertible, B.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: topRight, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, L1: UnitValuable, L2: UnitValuable>(topLeft: L1, topRight: B, bottomLeft: L2) -> Self where B: StateConvertible, B.Value: UnitValuable {
        borderRadius(topLeft: .length(topLeft), topRight: topRight, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<C>(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomLeft: C) -> Self where C: StateConvertible, C.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<C, L: UnitValuable>(topLeft: L, topRight: BorderRadiusType, bottomLeft: C) -> Self where C: StateConvertible, C.Value == BorderRadiusType {
        borderRadius(topLeft: .length(topLeft), topRight: topRight, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<C, L: UnitValuable>(topLeft: BorderRadiusType, topRight: L, bottomLeft: C) -> Self where C: StateConvertible, C.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft, topRight: .length(topRight), bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<C, L1: UnitValuable, L2: UnitValuable>(topLeft: L1, topRight: L2, bottomLeft: C) -> Self where C: StateConvertible, C.Value == BorderRadiusType {
        borderRadius(topLeft: .length(topLeft), topRight: .length(topRight), bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<C>(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomLeft: C) -> Self where C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<C, L: UnitValuable>(topLeft: L, topRight: BorderRadiusType, bottomLeft: C) -> Self where C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: .length(topLeft), topRight: topRight, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<C, L: UnitValuable>(topLeft: BorderRadiusType, topRight: L, bottomLeft: C) -> Self where C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: .length(topRight), bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<C, L1: UnitValuable, L2: UnitValuable>(topLeft: L1, topRight: L2, bottomLeft: C) -> Self where C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: .length(topLeft), topRight: .length(topRight), bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B>(topLeft: A, topRight: B, bottomLeft: BorderRadiusType) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B>(topLeft: A, topRight: B, bottomLeft: BorderRadiusType) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, topRight: topRight, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B>(topLeft: A, topRight: B, bottomLeft: BorderRadiusType) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: topRight.stateValue.map { .length($0) }, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B>(topLeft: A, topRight: B, bottomLeft: BorderRadiusType) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, topRight: topRight.stateValue.map { .length($0) }, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, L: UnitValuable>(topLeft: A, topRight: B, bottomLeft: L) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft, topRight: topRight, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, L: UnitValuable>(topLeft: A, topRight: B, bottomLeft: L) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, topRight: topRight, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, L: UnitValuable>(topLeft: A, topRight: B, bottomLeft: L) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: topRight.stateValue.map { .length($0) }, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, L: UnitValuable>(topLeft: A, topRight: B, bottomLeft: L) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, topRight: topRight.stateValue.map { .length($0) }, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, C>(topLeft: A, topRight: BorderRadiusType, bottomLeft: C) -> Self where A: StateConvertible, A.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, C>(topLeft: A, topRight: BorderRadiusType, bottomLeft: C) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, topRight: topRight, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, C>(topLeft: A, topRight: BorderRadiusType, bottomLeft: C) -> Self where A: StateConvertible, A.Value == BorderRadiusType, C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, C>(topLeft: A, topRight: BorderRadiusType, bottomLeft: C) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, topRight: topRight, bottomLeft: bottomLeft.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, C, L: UnitValuable>(topLeft: A, topRight: L, bottomLeft: C) -> Self where A: StateConvertible, A.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft, topRight: .length(topRight), bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, C, L: UnitValuable>(topLeft: A, topRight: L, bottomLeft: C) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, topRight: .length(topRight), bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, C, L: UnitValuable>(topLeft: A, topRight: L, bottomLeft: C) -> Self where A: StateConvertible, A.Value == BorderRadiusType, C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: .length(topRight), bottomLeft: bottomLeft.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, C, L: UnitValuable>(topLeft: A, topRight: L, bottomLeft: C) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, topRight: .length(topRight), bottomLeft: bottomLeft.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, C>(topLeft: BorderRadiusType, topRight: B, bottomLeft: C) -> Self where B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, C>(topLeft: BorderRadiusType, topRight: B, bottomLeft: C) -> Self where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft, topRight: topRight.stateValue.map { .length($0) }, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, C>(topLeft: BorderRadiusType, topRight: B, bottomLeft: C) -> Self where B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, C>(topLeft: BorderRadiusType, topRight: B, bottomLeft: C) -> Self where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: topRight.stateValue.map { .length($0) }, bottomLeft: bottomLeft.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, C, L: UnitValuable>(topLeft: L, topRight: B, bottomLeft: C) -> Self where B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        borderRadius(topLeft: .length(topLeft), topRight: topRight, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, C, L: UnitValuable>(topLeft: L, topRight: B, bottomLeft: C) -> Self where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value == BorderRadiusType {
        borderRadius(topLeft: .length(topLeft), topRight: topRight.stateValue.map { .length($0) }, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, C, L: UnitValuable>(topLeft: L, topRight: B, bottomLeft: C) -> Self where B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: .length(topLeft), topRight: topRight, bottomLeft: bottomLeft.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, C, L: UnitValuable>(topLeft: L, topRight: B, bottomLeft: C) -> Self where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: .length(topLeft), topRight: topRight.stateValue.map { .length($0) }, bottomLeft: bottomLeft.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, C>(topLeft: A, topRight: B, bottomLeft: C) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, C>(topLeft: A, topRight: B, bottomLeft: C) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, topRight: topRight, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, C>(topLeft: A, topRight: B, bottomLeft: C) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft, topRight: topRight.stateValue.map { .length($0) }, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, C>(topLeft: A, topRight: B, bottomLeft: C) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, C>(topLeft: A, topRight: B, bottomLeft: C) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value == BorderRadiusType {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, topRight: topRight.stateValue.map { .length($0) }, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, C>(topLeft: A, topRight: B, bottomLeft: C) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: topLeft, topRight: topRight.stateValue.map { .length($0) }, bottomLeft: bottomLeft.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, C>(topLeft: A, topRight: B, bottomLeft: C) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, topRight: topRight, bottomLeft: bottomLeft.stateValue.map { .length($0) })
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, C>(topLeft: A, topRight: B, bottomLeft: C) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        borderRadius(topLeft: topLeft.stateValue.map { .length($0) }, topRight: topRight.stateValue.map { .length($0) }, bottomLeft: bottomLeft.stateValue.map { .length($0) })
    }

    // MARK: TL/TR/BR/BL

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomRight: BorderRadiusType, bottomLeft: BorderRadiusType) -> Self {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A: UnitValuable>(topLeft: A, topRight: BorderRadiusType, bottomRight: BorderRadiusType, bottomLeft: BorderRadiusType) -> Self {
        borderRadius(topLeft: .length(topLeft), topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B: UnitValuable>(topLeft: BorderRadiusType, topRight: B, bottomRight: BorderRadiusType, bottomLeft: BorderRadiusType) -> Self {
        borderRadius(topLeft: topLeft, topRight: .length(topRight), bottomRight: bottomRight, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<C: UnitValuable>(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomRight: C, bottomLeft: BorderRadiusType) -> Self {
        borderRadius(topLeft: topLeft, topRight: topRight, bottomRight: .length(bottomRight), bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<D: UnitValuable>(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomRight: BorderRadiusType, bottomLeft: D) -> Self {
        borderRadius(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A: UnitValuable, B: UnitValuable>(topLeft: A, topRight: B, bottomRight: BorderRadiusType, bottomLeft: BorderRadiusType) -> Self {
        borderRadius(topLeft: .length(topLeft), topRight: .length(topRight), bottomRight: bottomRight, bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A: UnitValuable, C: UnitValuable>(topLeft: A, topRight: BorderRadiusType, bottomRight: C, bottomLeft: BorderRadiusType) -> Self {
        borderRadius(topLeft: .length(topLeft), topRight: topRight, bottomRight: .length(bottomRight), bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A: UnitValuable, D: UnitValuable>(topLeft: A, topRight: BorderRadiusType, bottomRight: BorderRadiusType, bottomLeft: D) -> Self {
        borderRadius(topLeft: .length(topLeft), topRight: topRight, bottomRight: bottomRight, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B: UnitValuable, C: UnitValuable>(topLeft: BorderRadiusType, topRight: B, bottomRight: C, bottomLeft: BorderRadiusType) -> Self {
        borderRadius(topLeft: topLeft, topRight: .length(topRight), bottomRight: .length(bottomRight), bottomLeft: bottomLeft)
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B: UnitValuable, D: UnitValuable>(topLeft: BorderRadiusType, topRight: B, bottomRight: BorderRadiusType, bottomLeft: D) -> Self {
        borderRadius(topLeft: topLeft, topRight: .length(topRight), bottomRight: bottomRight, bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<C: UnitValuable, D: UnitValuable>(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomRight: C, bottomLeft: D) -> Self {
        borderRadius(topLeft: topLeft, topRight: topRight, bottomRight: .length(bottomRight), bottomLeft: .length(bottomLeft))
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A>(topLeft: A, topRight: BorderRadiusType, bottomRight: BorderRadiusType, bottomLeft: BorderRadiusType) -> Self where A: StateConvertible, A.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    // TODO: more variants? or how to escape that hell 😅

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B>(topLeft: BorderRadiusType, topRight: B, bottomRight: BorderRadiusType, bottomLeft: BorderRadiusType) -> Self where B: StateConvertible, B.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<C>(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomRight: C, bottomLeft: BorderRadiusType) -> Self where C: StateConvertible, C.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<D>(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomRight: BorderRadiusType, bottomLeft: D) -> Self where D: StateConvertible, D.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B>(topLeft: A, topRight: B, bottomRight: BorderRadiusType, bottomLeft: BorderRadiusType) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, C>(topLeft: A, topRight: BorderRadiusType, bottomRight: C, bottomLeft: BorderRadiusType) -> Self where A: StateConvertible, A.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, D>(topLeft: A, topRight: BorderRadiusType, bottomRight: BorderRadiusType, bottomLeft: D) -> Self where A: StateConvertible, A.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, C>(topLeft: BorderRadiusType, topRight: B, bottomRight: C, bottomLeft: BorderRadiusType) -> Self where B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, D>(topLeft: BorderRadiusType, topRight: B, bottomRight: BorderRadiusType, bottomLeft: D) -> Self where B: StateConvertible, B.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<C, D>(topLeft: BorderRadiusType, topRight: BorderRadiusType, bottomRight: C, bottomLeft: D) -> Self where C: StateConvertible, C.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, C>(topLeft: A, topRight: B, bottomRight: C, bottomLeft: BorderRadiusType) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, D>(topLeft: A, topRight: B, bottomRight: BorderRadiusType, bottomLeft: D) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, C, D>(topLeft: A, topRight: BorderRadiusType, bottomRight: C, bottomLeft: D) -> Self where A: StateConvertible, A.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<B, C, D>(topLeft: BorderRadiusType, topRight: B, bottomRight: C, bottomLeft: D) -> Self where B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }

    /// A shorthand property for the four border-*-radius properties
    public func borderRadius<A, B, C, D>(topLeft: A, topRight: B, bottomRight: C, bottomLeft: D) -> Self where A: StateConvertible, A.Value == BorderRadiusType, B: StateConvertible, B.Value == BorderRadiusType, C: StateConvertible, C.Value == BorderRadiusType, D: StateConvertible, D.Value == BorderRadiusType {
        _addProperty(BorderRadiusProperty(topLeft: topLeft, topRight: topRight, bottomRight: bottomRight, bottomLeft: bottomLeft))
        return self
    }
}

// MARK: - BorderRightColorProperty

/// Sets the color of the right border
///
/// ```html
/// border-right-color: coral;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-right_color.asp)
public class BorderRightColorProperty: _Property {
    public var propertyKey: PropertyKey<Color> { .borderRightColor }
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
    /// Sets the color of the right border
    public static var borderRightColor: PropertyKey<Color> { "border-right-color".propertyKey() }
}

extension Stylesheet {
    /// Sets the color of the right border
    public typealias BorderRightColor = BorderRightColorProperty
}

extension CSSRulable {
    /// Sets the color of the right border
    public func borderRightColor(_ type: Color) -> Self {
        _addProperty(.borderRightColor, type)
        return self
    }

    /// Sets the color of the right border
    public func borderRightColor<S>(_ type: S) -> Self where S: StateConvertible, S.Value == Color {
        _addProperty(BorderRightColorProperty(type.stateValue))
        return self
    }
}

// MARK: - BorderRightProperty

/// A shorthand property for all the border-right-* properties
///
/// ```html
/// border-right: 5px solid red;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-right.asp)
public class BorderRightProperty: _Property {
    public var propertyKey: PropertyKey<BorderValue> { .borderRight }
    public var propertyValue: BorderValue
    var _content = _PropertyContent<BorderValue>()

    public init (width: BorderWidthType? = nil, style: BorderStyleType, color: Color? = nil) {
        propertyValue = BorderValue(width: width, style: style, color: color)
    }

    public convenience init <A>(width: A, style: BorderStyleType, color: Color? = nil) where A: StateConvertible, A.Value == Optional<BorderWidthType> {
        let width = width.stateValue
        self.init(width: width.wrappedValue, style: style, color: color)
        width.listen { self._changed(to: BorderValue(width: $0, style: style, color: color)) }
    }

    public convenience init <B>(width: BorderWidthType? = nil, style: B, color: Color? = nil) where B: StateConvertible, B.Value == BorderStyleType {
        let style = style.stateValue
        self.init(width: width, style: style.wrappedValue, color: color)
        style.listen { self._changed(to: BorderValue(width: width, style: $0, color: color)) }
    }

    public convenience init <C>(width: BorderWidthType? = nil, style: BorderStyleType, color: C) where C: StateConvertible, C.Value == Optional<Color> {
        let color = color.stateValue
        self.init(width: width, style: style, color: color.wrappedValue)
        color.listen { self._changed(to: BorderValue(width: width, style: style, color: $0)) }
    }

    public convenience init <A, B>(width: A, style: B, color: Color? = nil) where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType {
        let width = width.stateValue
        let style = style.stateValue
        self.init(width: width.wrappedValue, style: style.wrappedValue, color: color)
        width.listen { self._changed(to: BorderValue(width: $0, style: style.wrappedValue, color: color)) }
        style.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: $0, color: color)) }
    }

    public convenience init <A, C>(width: A, style: BorderStyleType, color: C) where A: StateConvertible, A.Value == BorderWidthType, C: StateConvertible, C.Value == Optional<Color> {
        let width = width.stateValue
        let color = color.stateValue
        self.init(width: width.wrappedValue, style: style, color: color.wrappedValue)
        width.listen { self._changed(to: BorderValue(width: $0, style: style, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: style, color: $0)) }
    }

    public convenience init <B, C>(width: BorderWidthType, style: B, color: C) where B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        let style = style.stateValue
        let color = color.stateValue
        self.init(width: width, style: style.wrappedValue, color: color.wrappedValue)
        style.listen { self._changed(to: BorderValue(width: width, style: $0, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width, style: style.wrappedValue, color: $0)) }
    }

    public convenience init <A, B, C>(width: A, style: B, color: C) where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        let width = width.stateValue
        let style = style.stateValue
        let color = color.stateValue
        self.init(width: width.wrappedValue, style: style.wrappedValue, color: color.wrappedValue)
        width.listen { self._changed(to: BorderValue(width: $0, style: style.wrappedValue, color: color.wrappedValue)) }
        style.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: $0, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: style.wrappedValue, color: $0)) }
    }
}

extension PropertyKey {
    /// A shorthand property for all the border-right-* properties
    public static var borderRight: PropertyKey<BorderValue> { "border-right".propertyKey() }
}

extension Stylesheet {
    /// A shorthand property for all the border-right-* properties
    public typealias BorderRight = BorderRightProperty
}

extension CSSRulable {
    /// A shorthand property for all the border-right-* properties
    public func borderRight(width: BorderWidthType? = nil, style: BorderStyleType, color: Color? = nil) -> Self {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-right-* properties
    public func borderRight<A>(width: A, style: BorderStyleType, color: Color? = nil) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-right-* properties
    public func borderRight<B>(width: BorderWidthType? = nil, style: B, color: Color? = nil) -> Self where B: StateConvertible, B.Value == BorderStyleType {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-right-* properties
    public func borderRight<C>(width: BorderWidthType? = nil, style: BorderStyleType, color: C) -> Self where C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-right-* properties
    public func borderRight<A, B>(width: A, style: B, color: Color? = nil) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-right-* properties
    public func borderRight<A, C>(width: A, style: BorderStyleType, color: C) -> Self where A: StateConvertible, A.Value == BorderWidthType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-right-* properties
    public func borderRight<B, C>(width: BorderWidthType, style: B, color: C) -> Self where B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the border-right-* properties
    public func borderRight<A, B, C>(width: A, style: B, color: C) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }
}

// MARK: - BorderRightStyleProperty

/// Sets the style of the right border
///
/// ```html
/// border-right-style: dotted;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-right_style.asp)
public class BorderRightStyleProperty: _Property {
    public var propertyKey: PropertyKey<BorderStyleType> { .borderRightStyle }
    public var propertyValue: BorderStyleType
    var _content = _PropertyContent<BorderStyleType>()

    public init (_ type: BorderStyleType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BorderStyleType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderStyleType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the style of the right border
    public static var borderRightStyle: PropertyKey<BorderStyleType> { "border-right-style".propertyKey() }
}

extension Stylesheet {
    /// Sets the style of the right border
    public typealias BorderRightStyle = BorderRightStyleProperty
}

extension CSSRulable {
    /// Sets the style of the right border
    public func borderRightStyle(_ type: BorderStyleType) -> Self {
        _addProperty(.borderRightStyle, type)
        return self
    }

    /// Sets the style of the right border
    public func borderRightStyle(_ type: State<BorderStyleType>) -> Self {
        _addProperty(BorderRightStyleProperty(type))
        return self
    }

    /// Sets the style of the right border
    public func borderRightStyle<V>(_ type: ExpressableState<V, BorderStyleType>) -> Self {
        borderRightStyle(type.unwrap())
    }
}

// MARK: - BorderRightWidthProperty

/// Sets the width of the right border
///
/// ```html
/// border-right-width: thin;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-right_width.asp)
public class BorderRightWidthProperty: _Property {
    public var propertyKey: PropertyKey<BorderWidthType> { .borderRightWidth }
    public var propertyValue: BorderWidthType
    var _content = _PropertyContent<BorderWidthType>()

    public init (_ type: BorderWidthType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BorderWidthType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderWidthType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the width of the right border
    public static var borderRightWidth: PropertyKey<BorderWidthType> { "border-right-width".propertyKey() }
}

extension Stylesheet {
    /// Sets the width of the right border
    public typealias BorderRightWidth = BorderRightWidthProperty
}

extension CSSRulable {
    /// Sets the width of the right border
    public func borderRightWidth(_ type: BorderWidthType) -> Self {
        _addProperty(.borderRightWidth, type)
        return self
    }

    /// Sets the width of the right border
    public func borderRightWidth(_ type: State<BorderWidthType>) -> Self {
        _addProperty(BorderRightWidthProperty(type))
        return self
    }

    /// Sets the width of the right border
    public func borderRightWidth<V>(_ type: ExpressableState<V, BorderWidthType>) -> Self {
        borderRightWidth(type.unwrap())
    }

    /// Sets the width of the right border
    public func borderRightWidth<L: UnitValuable>(_ length: L) -> Self {
        borderRightWidth(.length(length))
    }

    /// Sets the width of the right border
    public func borderRightWidth<L: UnitValuable>(_ type: State<L>) -> Self {
        borderRightWidth(type.map { .length($0) })
    }

    /// Sets the width of the right border
    public func borderRightWidth<V, L: UnitValuable>(_ type: ExpressableState<V, L>) -> Self {
        borderRightWidth(type.unwrap())
    }
}

// MARK: - BorderSpacingProperty

/// Sets the distance between the borders of adjacent cells
///
/// ```html
/// border-spacing: 15px;
/// border-spacing: 15px 15px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-spacing.asp)
public class BorderSpacingProperty: _Property {
    public var propertyKey: PropertyKey<BorderSpacingValue> { .borderSpacing }
    public var propertyValue: BorderSpacingValue
    var _content = _PropertyContent<BorderSpacingValue>()

    // MARK: All

    public init <A: UnitValuable>(all: A) {
        propertyValue = BorderSpacingValue(all: all)
    }

    public convenience init <A>(all type: A) where A: StateConvertible, A.Value: UnitValuable {
        let state = type.stateValue
        self.init(all: state.wrappedValue)
        state.listen { self._changed(to: BorderSpacingValue(all: $0)) }
    }

    // MARK: H/V

    public init <A: UnitValuable, B: UnitValuable>(h: A, v: B) {
        propertyValue = BorderSpacingValue(h: h, v: v)
    }

    public convenience init <A, B: UnitValuable>(h: A, v: B) where A: StateConvertible, A.Value: UnitValuable {
        let h = h.stateValue
        self.init(h: h.wrappedValue, v: v)
        h.listen { self._changed(to: BorderSpacingValue(h: $0, v: v)) }
    }

    public convenience init <A: UnitValuable, B>(h: A, v: B) where B: StateConvertible, B.Value: UnitValuable {
        let v = v.stateValue
        self.init(h: h, v: v.wrappedValue)
        v.listen { self._changed(to: BorderSpacingValue(h: h, v: $0)) }
    }

    public convenience init <A, B>(h: A, v: B) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        let h = h.stateValue
        let v = v.stateValue
        self.init(h: h.wrappedValue, v: v.wrappedValue)
        h.listen { self._changed(to: BorderSpacingValue(h: $0, v: v.wrappedValue)) }
        v.listen { self._changed(to: BorderSpacingValue(h: h.wrappedValue, v: $0)) }
    }
}

extension PropertyKey {
    /// Sets the distance between the borders of adjacent cells
    public static var borderSpacing: PropertyKey<BorderSpacingValue> { "border-spacing".propertyKey() }
}

public class BorderSpacingValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    @State public var value = ""

    var _changeHandler = {}

    public init<U: UnitValuable>(all: U) {
        value = all.description
        $value.listen {
            self._changeHandler()
        }
    }

    public init<H: UnitValuable, V: UnitValuable>(h: H, v: V) {
        value = [h.description, v.description].joined(separator: " ")
        $value.listen {
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Sets the distance between the borders of adjacent cells
    public typealias BorderSpacing = BorderSpacingProperty
}

extension CSSRulable {
    // MARK: All

    /// Sets the distance between the borders of adjacent cells
    public func borderSpacing<A: UnitValuable>(all value: A) -> Self {
        _addProperty(BorderSpacingProperty(all: value))
        return self
    }

    /// Sets the distance between the borders of adjacent cells
    public func borderSpacing<A>(all value: A) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(BorderSpacingProperty(all: value))
        return self
    }

    // MARK: H/V

    /// Sets the distance between the borders of adjacent cells
    public func borderSpacing<A: UnitValuable, B: UnitValuable>(h: A, v: B) -> Self {
        _addProperty(BorderSpacingProperty(h: h, v: v))
        return self
    }

    /// Sets the distance between the borders of adjacent cells
    public func borderSpacing<A, B: UnitValuable>(h: A, v: B) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(BorderSpacingProperty(h: h, v: v))
        return self
    }

    /// Sets the distance between the borders of adjacent cells
    public func borderSpacing<A: UnitValuable, B>(h: A, v: B) -> Self where B: StateConvertible, B.Value: UnitValuable {
        _addProperty(BorderSpacingProperty(h: h, v: v))
        return self
    }

    /// Sets the distance between the borders of adjacent cells
    public func borderSpacing<A, B>(h: A, v: B) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        _addProperty(BorderSpacingProperty(h: h, v: v))
        return self
    }
}

// MARK: - BorderStyleProperty

/// Sets the style of the four borders
///
/// ```html
/// border-style: dotted;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-style.asp)
public class BorderStyleProperty: _Property {
    public var propertyKey: PropertyKey<BorderStyleValue> { .borderStyle }
    public var propertyValue: BorderStyleValue
    var _content = _PropertyContent<BorderStyleValue>()

    public init (_ type: BorderStyleType...) {
        propertyValue = BorderStyleValue(type)
    }

    public init (_ type: [BorderStyleType]) {
        propertyValue = BorderStyleValue(type)
    }

    public convenience init <A>(_ type: A) where A: StateConvertible, A.Value == [BorderStyleType] {
        let state = type.stateValue
        self.init(state.wrappedValue)
        state.listen { self._changed(to: BorderStyleValue($0)) }
    }

    public convenience init <A>(_ type: A) where A: StateConvertible, A.Value == BorderStyleType {
        let state = type.stateValue
        self.init(state.wrappedValue)
        state.listen { self._changed(to: BorderStyleValue($0)) }
    }
}

extension PropertyKey {
    public static var borderStyle: PropertyKey<BorderStyleValue> { "border-style".propertyKey() }
}

public struct BorderStyleValue: CustomStringConvertible {
    public let value: String

    public init (_ type: BorderStyleType...) {
        value = type.map { $0.value }.joined(separator: " ")
    }

    public init (_ type: [BorderStyleType]) {
        value = type.map { $0.value }.joined(separator: " ")
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Sets the style of the four borders
    public typealias BorderStyle = BorderStyleProperty
}

extension CSSRulable {
    /// Sets the style of the four borders
    public func borderStyle(_ type: BorderStyleType...) -> Self {
        borderStyle(type)
    }

    /// Sets the style of the four borders
    public func borderStyle(_ type: [BorderStyleType]) -> Self {
        _addProperty(BorderStyleProperty(type))
        return self
    }

    /// Sets the style of the four borders
    public func borderStyle<A>(_ type: A) -> Self where A: StateConvertible, A.Value == [BorderStyleType] {
        _addProperty(BorderStyleProperty(type))
        return self
    }

    /// Sets the style of the four borders
    public func borderStyle<A>(_ type: A) -> Self where A: StateConvertible, A.Value == BorderStyleType {
        _addProperty(BorderStyleProperty(type))
        return self
    }
}

// MARK: - BorderTopColorProperty

/// Sets the color of the top border
///
/// ```html
/// border-top-color: coral;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-top_color.asp)
public class BorderTopColorProperty: _Property {
    public var propertyKey: PropertyKey<Color> { .borderTopColor }
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
    /// Sets the color of the top border
    public static var borderTopColor: PropertyKey<Color> { "border-top-color".propertyKey() }
}

extension Stylesheet {
    /// Sets the color of the top border
    public typealias BorderTopColor = BorderTopColorProperty
}

extension CSSRulable {
    /// Sets the color of the top border
    public func borderTopColor(_ type: Color) -> Self {
        _addProperty(.borderTopColor, type)
        return self
    }

    /// Sets the color of the top border
    public func borderTopColor<S>(_ type: S) -> Self where S: StateConvertible, S.Value == Color {
        _addProperty(BorderTopColorProperty(type.stateValue))
        return self
    }
}

// MARK: - BorderTopLeftRadiusProperty

/// Defines the radius of the border of the top-left corner
///
/// ```html
/// border-top-left-radius: 25px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_border-top-left-radius.asp)
public class BorderTopLeftRadiusProperty: _Property {
    public var propertyKey: PropertyKey<BorderRadiusType> { .borderTopLeftRadius }
    public var propertyValue: BorderRadiusType
    var _content = _PropertyContent<BorderRadiusType>()

    public init (_ value: BorderRadiusType) {
        propertyValue = value
    }

    public convenience init (_ type: State<BorderRadiusType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderRadiusType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Defines the radius of the border of the top-left corner
    public static var borderTopLeftRadius: PropertyKey<BorderRadiusType> { "border-top-left-radius".propertyKey() }
}

extension Stylesheet {
    /// Defines the radius of the border of the top-left corner
    public typealias BorderTopLeftRadius = BorderTopLeftRadiusProperty
}

extension CSSRulable {
    /// Defines the radius of the border of the top-left corner
    public func borderTopLeftRadius(_ type: BorderRadiusType) -> Self {
        _addProperty(.borderTopLeftRadius, type)
        return self
    }

    /// Defines the radius of the border of the top-left corner
    public func borderTopLeftRadius(_ type: State<BorderRadiusType>) -> Self {
        _addProperty(BorderTopLeftRadiusProperty(type))
        return self
    }

    /// Defines the radius of the border of the top-left corner
    public func borderTopLeftRadius<V>(_ type: ExpressableState<V, BorderRadiusType>) -> Self {
        borderTopLeftRadius(type.unwrap())
    }

    /// Defines the radius of the border of the top-left corner
    public func borderTopLeftRadius<L: UnitValuable>(_ length: L) -> Self {
        borderTopLeftRadius(.length(length))
    }

    /// Defines the radius of the border of the top-left corner
    public func borderTopLeftRadius<L: UnitValuable>(_ type: State<L>) -> Self {
        borderTopLeftRadius(type.map { .length($0) })
    }

    /// Defines the radius of the border of the top-left corner
    public func borderTopLeftRadius<V, L: UnitValuable>(_ type: ExpressableState<V, L>) -> Self {
        borderTopLeftRadius(type.unwrap())
    }
}

// MARK: - BorderTopProperty

/// A shorthand property for border-top-width, border-top-style and border-top-color
///
/// ```html
/// border-top: 5px solid red;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-top.asp)
public class BorderTopProperty: _Property {
    public var propertyKey: PropertyKey<BorderValue> { .borderTop }
    public var propertyValue: BorderValue
    var _content = _PropertyContent<BorderValue>()

    public init (width: BorderWidthType? = nil, style: BorderStyleType, color: Color? = nil) {
        propertyValue = BorderValue(width: width, style: style, color: color)
    }

    public convenience init <A>(width: A, style: BorderStyleType, color: Color? = nil) where A: StateConvertible, A.Value == Optional<BorderWidthType> {
        let width = width.stateValue
        self.init(width: width.wrappedValue, style: style, color: color)
        width.listen { self._changed(to: BorderValue(width: $0, style: style, color: color)) }
    }

    public convenience init <B>(width: BorderWidthType? = nil, style: B, color: Color? = nil) where B: StateConvertible, B.Value == BorderStyleType {
        let style = style.stateValue
        self.init(width: width, style: style.wrappedValue, color: color)
        style.listen { self._changed(to: BorderValue(width: width, style: $0, color: color)) }
    }

    public convenience init <C>(width: BorderWidthType? = nil, style: BorderStyleType, color: C) where C: StateConvertible, C.Value == Optional<Color> {
        let color = color.stateValue
        self.init(width: width, style: style, color: color.wrappedValue)
        color.listen { self._changed(to: BorderValue(width: width, style: style, color: $0)) }
    }

    public convenience init <A, B>(width: A, style: B, color: Color? = nil) where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType {
        let width = width.stateValue
        let style = style.stateValue
        self.init(width: width.wrappedValue, style: style.wrappedValue, color: color)
        width.listen { self._changed(to: BorderValue(width: $0, style: style.wrappedValue, color: color)) }
        style.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: $0, color: color)) }
    }

    public convenience init <A, C>(width: A, style: BorderStyleType, color: C) where A: StateConvertible, A.Value == BorderWidthType, C: StateConvertible, C.Value == Optional<Color> {
        let width = width.stateValue
        let color = color.stateValue
        self.init(width: width.wrappedValue, style: style, color: color.wrappedValue)
        width.listen { self._changed(to: BorderValue(width: $0, style: style, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: style, color: $0)) }
    }

    public convenience init <B, C>(width: BorderWidthType, style: B, color: C) where B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        let style = style.stateValue
        let color = color.stateValue
        self.init(width: width, style: style.wrappedValue, color: color.wrappedValue)
        style.listen { self._changed(to: BorderValue(width: width, style: $0, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width, style: style.wrappedValue, color: $0)) }
    }

    public convenience init <A, B, C>(width: A, style: B, color: C) where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        let width = width.stateValue
        let style = style.stateValue
        let color = color.stateValue
        self.init(width: width.wrappedValue, style: style.wrappedValue, color: color.wrappedValue)
        width.listen { self._changed(to: BorderValue(width: $0, style: style.wrappedValue, color: color.wrappedValue)) }
        style.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: $0, color: color.wrappedValue)) }
        color.listen { self._changed(to: BorderValue(width: width.wrappedValue, style: style.wrappedValue, color: $0)) }
    }
}

extension PropertyKey {
    /// A shorthand property for border-top-width, border-top-style and border-top-color
    public static var borderTop: PropertyKey<BorderValue> { "border-top".propertyKey() }
}

extension Stylesheet {
    /// A shorthand property for border-top-width, border-top-style and border-top-color
    public typealias BorderTop = BorderTopProperty
}

extension CSSRulable {
    /// A shorthand property for border-top-width, border-top-style and border-top-color
    public func borderTop(width: BorderWidthType? = nil, style: BorderStyleType, color: Color? = nil) -> Self {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-top-width, border-top-style and border-top-color
    public func borderTop<A>(width: A, style: BorderStyleType, color: Color? = nil) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-top-width, border-top-style and border-top-color
    public func borderTop<B>(width: BorderWidthType? = nil, style: B, color: Color? = nil) -> Self where B: StateConvertible, B.Value == BorderStyleType {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-top-width, border-top-style and border-top-color
    public func borderTop<C>(width: BorderWidthType? = nil, style: BorderStyleType, color: C) -> Self where C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-top-width, border-top-style and border-top-color
    public func borderTop<A, B>(width: A, style: B, color: Color? = nil) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-top-width, border-top-style and border-top-color
    public func borderTop<A, C>(width: A, style: BorderStyleType, color: C) -> Self where A: StateConvertible, A.Value == BorderWidthType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-top-width, border-top-style and border-top-color
    public func borderTop<B, C>(width: BorderWidthType, style: B, color: C) -> Self where B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for border-top-width, border-top-style and border-top-color
    public func borderTop<A, B, C>(width: A, style: B, color: C) -> Self where A: StateConvertible, A.Value == Optional<BorderWidthType>, B: StateConvertible, B.Value == BorderStyleType, C: StateConvertible, C.Value == Optional<Color> {
        _addProperty(BorderTopProperty(width: width, style: style, color: color))
        return self
    }
}

// MARK: - BorderTopRightRadiusProperty

/// Defines the radius of the border of the top-right corner
///
/// ```html
/// border-top-right-radius: 25px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_border-top-right-radius.asp)
public class BorderTopRightRadiusProperty: _Property {
    public var propertyKey: PropertyKey<BorderRadiusType> { .borderTopRightRadius }
    public var propertyValue: BorderRadiusType
    var _content = _PropertyContent<BorderRadiusType>()

    public init (_ value: BorderRadiusType) {
        propertyValue = value
    }

    public convenience init (_ type: State<BorderRadiusType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderRadiusType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Defines the radius of the border of the top-right corner
    public static var borderTopRightRadius: PropertyKey<BorderRadiusType> { "border-top-right-radius".propertyKey() }
}

extension Stylesheet {
    /// Defines the radius of the border of the top-right corner
    public typealias BorderTopRightRadius = BorderTopRightRadiusProperty
}

extension CSSRulable {
    /// Defines the radius of the border of the top-right corner
    public func borderTopRightRadius(_ type: BorderRadiusType) -> Self {
        _addProperty(.borderTopRightRadius, type)
        return self
    }

    /// Defines the radius of the border of the top-right corner
    public func borderTopRightRadius(_ type: State<BorderRadiusType>) -> Self {
        _addProperty(BorderTopRightRadiusProperty(type))
        return self
    }

    /// Defines the radius of the border of the top-right corner
    public func borderTopRightRadius<V>(_ type: ExpressableState<V, BorderRadiusType>) -> Self {
        borderTopRightRadius(type.unwrap())
    }

    /// Defines the radius of the border of the top-right corner
    public func borderTopRightRadius<L: UnitValuable>(_ length: L) -> Self {
        borderTopRightRadius(.length(length))
    }

    /// Defines the radius of the border of the top-right corner
    public func borderTopRightRadius<L: UnitValuable>(_ type: State<L>) -> Self {
        borderTopRightRadius(type.map { .length($0) })
    }

    /// Defines the radius of the border of the top-right corner
    public func borderTopRightRadius<V, L: UnitValuable>(_ type: ExpressableState<V, L>) -> Self {
        borderTopRightRadius(type.unwrap())
    }
}

// MARK: - BorderTopStyleProperty

/// Sets the style of the top border
///
/// ```html
/// border-top-style: dotted;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-top_style.asp)
public class BorderTopStyleProperty: _Property {
    public var propertyKey: PropertyKey<BorderStyleType> { .borderTopStyle }
    public var propertyValue: BorderStyleType
    var _content = _PropertyContent<BorderStyleType>()

    public init (_ type: BorderStyleType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BorderStyleType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderStyleType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the style of the top border
    public static var borderTopStyle: PropertyKey<BorderStyleType> { "border-top-style".propertyKey() }
}

extension Stylesheet {
    /// Sets the style of the top border
    public typealias BorderTopStyle = BorderTopStyleProperty
}

extension CSSRulable {
    /// Sets the style of the top border
    public func borderTopStyle(_ type: BorderStyleType) -> Self {
        _addProperty(.borderTopStyle, type)
        return self
    }

    /// Sets the style of the top border
    public func borderTopStyle(_ type: State<BorderStyleType>) -> Self {
        _addProperty(BorderTopStyleProperty(type))
        return self
    }

    /// Sets the style of the top border
    public func borderTopStyle<V>(_ type: ExpressableState<V, BorderStyleType>) -> Self {
        borderTopStyle(type.unwrap())
    }
}

// MARK: - BorderTopWidthProperty

/// Sets the width of the top border
///
/// ```html
/// border-top-width: thin;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-top_width.asp)
public class BorderTopWidthProperty: _Property {
    public var propertyKey: PropertyKey<BorderWidthType> { .borderTopWidth }
    public var propertyValue: BorderWidthType
    var _content = _PropertyContent<BorderWidthType>()

    public init (_ type: BorderWidthType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BorderWidthType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BorderWidthType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the width of the top border
    public static var borderTopWidth: PropertyKey<BorderWidthType> { "border-top-width".propertyKey() }
}

extension Stylesheet {
    /// Sets the width of the top border
    public typealias BorderTopWidth = BorderTopWidthProperty
}

extension CSSRulable {
    /// Sets the width of the top border
    public func borderTopWidth(_ type: BorderWidthType) -> Self {
        _addProperty(.borderTopWidth, type)
        return self
    }

    /// Sets the width of the top border
    public func borderTopWidth(_ type: State<BorderWidthType>) -> Self {
        _addProperty(BorderTopWidthProperty(type))
        return self
    }

    /// Sets the width of the top border
    public func borderTopWidth<V>(_ type: ExpressableState<V, BorderWidthType>) -> Self {
        borderTopWidth(type.unwrap())
    }

    /// Sets the width of the top border
    public func borderTopWidth<L: UnitValuable>(_ length: L) -> Self {
        borderTopWidth(.length(length))
    }

    /// Sets the width of the top border
    public func borderTopWidth<L: UnitValuable>(_ type: State<L>) -> Self {
        borderTopWidth(type.map { .length($0) })
    }

    /// Sets the width of the top border
    public func borderTopWidth<V, L: UnitValuable>(_ type: ExpressableState<V, L>) -> Self {
        borderTopWidth(type.unwrap())
    }
}

// MARK: - BorderWidthProperty

/// Sets the width of the four borders
///
/// ```html
/// border-width: thin;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_border-width.asp)
public class BorderWidthProperty: _Property {
    public var propertyKey: PropertyKey<BorderWidthValue> { .borderWidth }
    public var propertyValue: BorderWidthValue
    var _content = _PropertyContent<BorderWidthValue>()

    public init (_ type: BorderWidthType...) {
        propertyValue = BorderWidthValue(type)
    }

    public init (_ type: [BorderWidthType]) {
        propertyValue = BorderWidthValue(type)
    }

    public convenience init <A>(_ type: A) where A: StateConvertible, A.Value == [BorderWidthType] {
        let state = type.stateValue
        self.init(state.wrappedValue)
        state.listen { self._changed(to: BorderWidthValue($0)) }
    }

    public convenience init <A>(_ type: A) where A: StateConvertible, A.Value == BorderWidthType {
        let state = type.stateValue
        self.init(state.wrappedValue)
        state.listen { self._changed(to: BorderWidthValue($0)) }
    }
}

extension PropertyKey {
    /// Sets the width of the four borders
    public static var borderWidth: PropertyKey<BorderWidthValue> { "border-width".propertyKey() }
}

public struct BorderWidthValue: CustomStringConvertible {
    public let value: String

    public init (_ type: BorderWidthType...) {
        value = type.map { $0.value }.joined(separator: " ")
    }

    public init (_ type: [BorderWidthType]) {
        value = type.map { $0.value }.joined(separator: " ")
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Sets the width of the four borders
    public typealias BorderWidth = BorderWidthProperty
}

extension CSSRulable {
    /// Sets the width of the four borders
    public func borderWidth(_ type: BorderWidthType...) -> Self {
        borderWidth(type)
    }

    /// Sets the width of the four borders
    public func borderWidth(_ type: [BorderWidthType]) -> Self {
        _addProperty(BorderWidthProperty(type))
        return self
    }

    /// Sets the width of the four borders
    public func borderWidth<A>(_ type: A) -> Self where A: StateConvertible, A.Value == [BorderWidthType] {
        _addProperty(BorderWidthProperty(type))
        return self
    }

    /// Sets the width of the four borders
    public func borderWidth<A>(_ type: A) -> Self where A: StateConvertible, A.Value == BorderWidthType {
        _addProperty(BorderWidthProperty(type))
        return self
    }
}

// MARK: - BottomProperty

/// Sets the elements position, from the bottom of its parent element
///
/// ```html
/// bottom: 10px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_pos_bottom.asp)
public class BottomProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .bottom }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Sets the elements position, from the bottom of its parent element
    public static var bottom: PropertyKey<UnitValue> { "bottom".propertyKey() }
}

extension Stylesheet {
    /// Sets the elements position, from the bottom of its parent element
    public typealias Bottom = BottomProperty
}

extension CSSRulable {
    /// Sets the elements position, from the bottom of its parent element
    public func bottom<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.bottom, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Sets the elements position, from the bottom of its parent element
    public func bottom<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(BottomProperty(value))
        return self
    }

    /// Sets the elements position, from the bottom of its parent element
    public func bottom<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        bottom(value.unwrap())
    }

    // MARK: Extended

    /// Sets the elements position, from the bottom of its parent element
    public func bottom(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.bottom, UnitValue(value, unit))
        return self
    }

    /// Sets the elements position, from the bottom of its parent element
    public func bottom(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.bottom, UnitValue(value, unit))
        return self
    }

    /// Sets the elements position, from the bottom of its parent element
    public func bottom(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.bottom, UnitValue(value, unit))
        return self
    }

    /// Sets the elements position, from the bottom of its parent element
    public func bottom<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.bottom, UnitValue(value, unit))
        return self
    }

    /// Sets the elements position, from the bottom of its parent element
    public func bottom<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.bottom, UnitValue(value, unit))
        return self
    }

    /// Sets the elements position, from the bottom of its parent element
    public func bottom<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.bottom, UnitValue(value, unit))
        return self
    }

    /// Sets the elements position, from the bottom of its parent element
    public func bottom<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.bottom, UnitValue(value, unit))
        return self
    }

    /// Sets the elements position, from the bottom of its parent element
    public func bottom(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.bottom, UnitValue(value, unit))
        return self
    }

    /// Sets the elements position, from the bottom of its parent element
    public func bottom<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.bottom, UnitValue(value, unit))
        return self
    }
}

// MARK: - BoxDecorationBreakProperty

/// Sets the behavior of the background and border of an element at page-break, or, for in-line elements, at line-break.
///
/// ```html
/// box-decoration-break: clone;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_box-decoration-break.asp)
public class BoxDecorationBreakProperty: _Property {
    public var propertyKey: PropertyKey<BoxDecorationBreakType> { .boxDecorationBreak }
    public var propertyValue: BoxDecorationBreakType
    public var propertyAliases: [AnyProperty]
    var _content = _PropertyContent<BoxDecorationBreakType>()

    public init (_ type: BoxDecorationBreakType) {
        propertyValue = type
        propertyAliases = [Webkit(type), O(type)]
    }

    public convenience init (_ type: State<BoxDecorationBreakType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BoxDecorationBreakType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the behavior of the background and border of an element at page-break, or, for in-line elements, at line-break.
    public static var boxDecorationBreak: PropertyKey<BoxDecorationBreakType> { "box-decoration-break".propertyKey() }
}

extension Stylesheet {
    /// Sets the behavior of the background and border of an element at page-break, or, for in-line elements, at line-break.
    public typealias BoxDecorationBreak = BoxDecorationBreakProperty
}

extension CSSRulable {
    /// Sets the behavior of the background and border of an element at page-break, or, for in-line elements, at line-break.
    public func boxDecorationBreak(_ type: BoxDecorationBreakType) -> Self {
        _addProperty(.boxDecorationBreak, type)
        return self
    }

    /// Sets the behavior of the background and border of an element at page-break, or, for in-line elements, at line-break.
    public func boxDecorationBreak(_ type: State<BoxDecorationBreakType>) -> Self {
        _addProperty(BoxDecorationBreakProperty(type))
        return self
    }

    /// Sets the behavior of the background and border of an element at page-break, or, for in-line elements, at line-break.
    public func boxDecorationBreak<V>(_ type: ExpressableState<V, BoxDecorationBreakType>) -> Self {
        boxDecorationBreak(type.unwrap())
    }
}

// MARK: Opera prefix

extension BoxDecorationBreakProperty {
    public class O: _Property {
        public var propertyKey: PropertyKey<BoxDecorationBreakType> { .boxDecorationBreak_o }
        public var propertyValue: BoxDecorationBreakType
        var _content = _PropertyContent<BoxDecorationBreakType>()

        public init (_ type: BoxDecorationBreakType) {
            propertyValue = type
        }

        public convenience init (_ type: State<BoxDecorationBreakType>) {
            self.init(type.wrappedValue)
            type.listen { self._changed(to: $0) }
        }

        public convenience init <V>(_ type: ExpressableState<V, BoxDecorationBreakType>) {
            self.init(type.unwrap())
        }
    }
}

extension PropertyKey {
    public static var boxDecorationBreak_o: PropertyKey<BoxDecorationBreakType> { "-o-box-decoration-break".propertyKey() }
}

// MARK: Webkit prefix

extension BoxDecorationBreakProperty {
    public class Webkit: _Property {
        public var propertyKey: PropertyKey<BoxDecorationBreakType> { .boxDecorationBreak_webKit }
        public var propertyValue: BoxDecorationBreakType
        var _content = _PropertyContent<BoxDecorationBreakType>()

        public init (_ type: BoxDecorationBreakType) {
            propertyValue = type
        }

        public convenience init (_ type: State<BoxDecorationBreakType>) {
            self.init(type.wrappedValue)
            type.listen { self._changed(to: $0) }
        }

        public convenience init <V>(_ type: ExpressableState<V, BoxDecorationBreakType>) {
            self.init(type.unwrap())
        }
    }
}

extension PropertyKey {
    public static var boxDecorationBreak_webKit: PropertyKey<BoxDecorationBreakType> { "-webkit-box-decoration-break".propertyKey() }
}

// MARK: - BoxShadowProperty

/// Attaches one or more shadows to an element
///
/// ```html
/// box-shadow: 5px 10px #888888;
/// box-shadow: 5px 5px blue, 10px 10px red, 15px 15px green;
/// box-shadow: 5px 10px inset;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_box-shadow.asp)
public class BoxShadowProperty: _Property {
    public var propertyKey: PropertyKey<BoxShadowValue> { .boxShadow }
    public var propertyValue: BoxShadowValue
    var _content = _PropertyContent<BoxShadowValue>()

    /// Use it for multiple shadows
    public init <U>(_ values: [U]) where U: UniValue, U.UniValue == BoxShadowValue {
        propertyValue = BoxShadowValue(values)
    }

    public init <U>(_ values: U...) where U: UniValue, U.UniValue == BoxShadowValue {
        propertyValue = BoxShadowValue(values)
    }
    
    public init<H, V, I>(h: H, v: V, inset: I)
    where H: UniValue, V: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, I.UniValue == Bool {
        propertyValue = BoxShadowValue(h: h, v: v, inset: inset)
    }
    
    public convenience init<H, V>(h: H, v: V)
    where H: UniValue, V: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable {
        self.init(h: h, v: v, inset: false)
    }
    
    public init<H, V, B, I>(h: H, v: V, blur: B, inset: I)
    where H: UniValue, V: UniValue, B: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable, I.UniValue == Bool {
        propertyValue = BoxShadowValue(h: h, v: v, blur: blur, inset: inset)
    }
    
    public convenience init<H, V, B>(h: H, v: V, blur: B)
    where H: UniValue, V: UniValue, B: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable {
        self.init(h: h, v: v, blur: blur, inset: false)
    }
    
    public init<H, V, B, S, I>(h: H, v: V, blur: B, spread: S, inset: I)
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable, I.UniValue == Bool {
        propertyValue = BoxShadowValue(h: h, v: v, blur: blur, spread: spread, inset: inset)
    }
    
    public convenience init<H, V, B, S>(h: H, v: V, blur: B, spread: S)
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable {
        self.init(h: h, v: v, blur: blur, spread: spread, inset: false)
    }
    
    public init<H, V, B, S, I>(h: H, v: V, blur: B, spread: S, color: Color, inset: I)
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable, I.UniValue == Bool {
        propertyValue = BoxShadowValue(h: h, v: v, blur: blur, spread: spread, color: color, inset: inset)
    }
    
    public convenience init<H, V, B, S>(h: H, v: V, blur: B, spread: S, color: Color)
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable {
        self.init(h: h, v: v, blur: blur, spread: spread, color: color, inset: false)
    }
    
    public init<H, V, B, S, C, I>(h: H, v: V, blur: B, spread: S, color: C, inset: I)
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue, C: StateConvertible, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable, C.Value == Color, I.UniValue == Bool {
        propertyValue = BoxShadowValue(h: h, v: v, blur: blur, spread: spread, color: color, inset: inset)
    }
    
    public convenience init<H, V, B, S, C>(h: H, v: V, blur: B, spread: S, color: C)
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue, C: StateConvertible,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable, C.Value == Color {
        self.init(h: h, v: v, blur: blur, spread: spread, color: color, inset: false)
    }
    
    public init<H, V, S, I>(h: H, v: V, spread: S, color: Color, inset: I)
    where H: UniValue, V: UniValue, S: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              S.UniValue: UnitValuable, I.UniValue == Bool {
        propertyValue = BoxShadowValue(h: h, v: v, spread: spread, color: color, inset: inset)
    }
    
    public convenience init<H, V, S>(h: H, v: V, spread: S, color: Color)
    where H: UniValue, V: UniValue, S: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              S.UniValue: UnitValuable {
        self.init(h: h, v: v, spread: spread, color: color, inset: false)
    }
    
    public init<H, V, S, C, I>(h: H, v: V, spread: S, color: C, inset: I)
    where H: UniValue, V: UniValue, S: UniValue, C: StateConvertible, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              S.UniValue: UnitValuable, C.Value == Color, I.UniValue == Bool {
        propertyValue = BoxShadowValue(h: h, v: v, spread: spread, color: color, inset: inset)
    }
    
    public convenience init<H, V, S, C>(h: H, v: V, spread: S, color: C)
    where H: UniValue, V: UniValue, S: UniValue, C: StateConvertible,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              S.UniValue: UnitValuable, C.Value == Color {
        self.init(h: h, v: v, spread: spread, color: color, inset: false)
    }
    
    public init<H, V, B, I>(h: H, v: V, blur: B, color: Color, inset: I)
    where H: UniValue, V: UniValue, B: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              B.UniValue: UnitValuable, I.UniValue == Bool {
        propertyValue = BoxShadowValue(h: h, v: v, blur: blur, color: color, inset: inset)
    }
    
    public convenience init<H, V, B>(h: H, v: V, blur: B, color: Color)
    where H: UniValue, V: UniValue, B: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              B.UniValue: UnitValuable {
        self.init(h: h, v: v, blur: blur, color: color, inset: false)
    }
    
    public init<H, V, B, C, I>(h: H, v: V, blur: B, color: C, inset: I)
    where H: UniValue, V: UniValue, B: UniValue, C: StateConvertible, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              B.UniValue: UnitValuable, C.Value == Color, I.UniValue == Bool {
        propertyValue = BoxShadowValue(h: h, v: v, blur: blur, color: color, inset: inset)
    }
    
    public convenience init<H, V, B, C>(h: H, v: V, blur: B, color: C)
    where H: UniValue, V: UniValue, B: UniValue, C: StateConvertible,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              B.UniValue: UnitValuable, C.Value == Color {
        self.init(h: h, v: v, blur: blur, color: color, inset: false)
    }
    
    public init<H, V, I>(h: H, v: V, color: Color, inset: I)
    where H: UniValue, V: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, I.UniValue == Bool {
        propertyValue = BoxShadowValue(h: h, v: v, color: color, inset: inset)
    }
    
    public convenience init<H, V>(h: H, v: V, color: Color)
    where H: UniValue, V: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable {
        self.init(h: h, v: v, color: color, inset: false)
    }
    
    public init<H, V, C, I>(h: H, v: V, color: C, inset: I)
    where H: UniValue, V: UniValue, C: StateConvertible, I: UniValue,
          H.UniValue: UnitValuable, V.UniValue: UnitValuable, C.Value == Color, I.UniValue == Bool {
        propertyValue = BoxShadowValue(h: h, v: v, color: color, inset: inset)
    }
    
    public convenience init<H, V, C>(h: H, v: V, color: C)
    where H: UniValue, V: UniValue, C: StateConvertible,
          H.UniValue: UnitValuable, V.UniValue: UnitValuable, C.Value == Color {
        self.init(h: h, v: v, color: color, inset: false)
    }
}

extension PropertyKey {
    /// Attaches one or more shadows to an element
    public static var boxShadow: PropertyKey<BoxShadowValue> { "box-shadow".propertyKey() }
}

public class BoxShadowValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}
    
    private static func makeValue(h: String, v: String, blur: String? = nil, spread: String? = nil, color: Color? = nil, inset: Bool) -> String {
        var elements: [String] = [h, v]
        if let blur = blur {
            elements.append(blur)
        }
        if let spread = spread {
            elements.append(spread)
        }
        if let color = color {
            elements.append(color.description)
        }
        if inset {
            elements.append("inset")
        }
        return elements.joined(separator: " ")
    }

    private static func makeMultiple(_ values: [BoxShadowValue]) -> String {
        values.map { $0.value }.joined(separator: ", ")
    }

    /// Use it for multiple shadows
    public init <U>(_ values: [U]) where U: UniValue, U.UniValue == BoxShadowValue {
        let unwrappedValues = values.map { $0.uniValue }
        self.value = Self.makeMultiple(unwrappedValues)
        values.compactMap { $0.uniStateValue }.forEach {
            $0.listen {
                self.value = Self.makeMultiple(unwrappedValues)
                self._changeHandler()
            }
        }
    }
    
    /// Use it for multiple shadows
    public init <U>(_ values: U...) where U: UniValue, U.UniValue == BoxShadowValue {
        let unwrappedValues = values.map { $0.uniValue }
        self.value = Self.makeMultiple(unwrappedValues)
        values.forEach {
            $0.uniStateValue?.listen {
                self.value = Self.makeMultiple(unwrappedValues)
                self._changeHandler()
            }
            $0.uniValue._changeHandler = {
                self.value = Self.makeMultiple(unwrappedValues)
                self._changeHandler()
            }
        }
    }
    
    public init<H, V, I>(h: H, v: V, inset: I)
    where H: UniValue, V: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, I.UniValue == Bool {
        value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, inset: inset.uniValue)
        h.uniStateValue?.listen {
            self.value = Self.makeValue(h: $0.description, v: v.uniValue.description, inset: inset.uniValue)
            self._changeHandler()
        }
        v.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: $0.description, inset: inset.uniValue)
            self._changeHandler()
        }
        inset.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, inset: $0)
            self._changeHandler()
        }
    }
    
    public convenience init<H, V>(h: H, v: V)
    where H: UniValue, V: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable {
        self.init(h: h, v: v, inset: false)
    }
    
    public init<H, V, B, I>(h: H, v: V, blur: B, inset: I)
    where H: UniValue, V: UniValue, B: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable, I.UniValue == Bool {
        value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, inset: inset.uniValue)
        h.uniStateValue?.listen {
            self.value = Self.makeValue(h: $0.description, v: v.uniValue.description, blur: blur.uniValue.description, inset: inset.uniValue)
            self._changeHandler()
        }
        v.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: $0.description, blur: blur.uniValue.description, inset: inset.uniValue)
            self._changeHandler()
        }
        blur.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: $0.description, inset: inset.uniValue)
            self._changeHandler()
        }
        inset.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, inset: $0)
            self._changeHandler()
        }
    }
    
    public convenience init<H, V, B>(h: H, v: V, blur: B)
    where H: UniValue, V: UniValue, B: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable {
        self.init(h: h, v: v, blur: blur, inset: false)
    }
    
    public init<H, V, B, S, I>(h: H, v: V, blur: B, spread: S, inset: I)
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable, I.UniValue == Bool {
        value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, spread: spread.uniValue.description, inset: inset.uniValue)
        h.uniStateValue?.listen {
            self.value = Self.makeValue(h: $0.description, v: v.uniValue.description, blur: blur.uniValue.description, spread: spread.uniValue.description, inset: inset.uniValue)
            self._changeHandler()
        }
        v.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: $0.description, blur: blur.uniValue.description, spread: spread.uniValue.description, inset: inset.uniValue)
            self._changeHandler()
        }
        blur.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: $0.description, spread: spread.uniValue.description, inset: inset.uniValue)
            self._changeHandler()
        }
        spread.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, spread: $0.description, inset: inset.uniValue)
            self._changeHandler()
        }
        inset.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, spread: spread.uniValue.description, inset: $0)
            self._changeHandler()
        }
    }
    
    public convenience init<H, V, B, S>(h: H, v: V, blur: B, spread: S)
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable {
        self.init(h: h, v: v, blur: blur, spread: spread, inset: false)
    }
    
    public init<H, V, B, S, I>(h: H, v: V, blur: B, spread: S, color: Color, inset: I)
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable, I.UniValue == Bool {
        value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, spread: spread.uniValue.description, color: color, inset: inset.uniValue)
        h.uniStateValue?.listen {
            self.value = Self.makeValue(h: $0.description, v: v.uniValue.description, blur: blur.uniValue.description, spread: spread.uniValue.description, color: color, inset: inset.uniValue)
            self._changeHandler()
        }
        v.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: $0.description, blur: blur.uniValue.description, spread: spread.uniValue.description, color: color, inset: inset.uniValue)
            self._changeHandler()
        }
        blur.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: $0.description, spread: spread.uniValue.description, color: color, inset: inset.uniValue)
            self._changeHandler()
        }
        spread.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, spread: $0.description, color: color, inset: inset.uniValue)
            self._changeHandler()
        }
        inset.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, spread: spread.uniValue.description, color: color, inset: $0)
            self._changeHandler()
        }
    }
    
    public convenience init<H, V, B, S>(h: H, v: V, blur: B, spread: S, color: Color)
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable {
        self.init(h: h, v: v, blur: blur, spread: spread, color: color, inset: false)
    }
    
    public init<H, V, B, S, C, I>(h: H, v: V, blur: B, spread: S, color: C, inset: I)
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue, C: StateConvertible, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable, C.Value == Color, I.UniValue == Bool {
        let colorState = color.stateValue
        value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, spread: spread.uniValue.description, color: colorState.wrappedValue, inset: inset.uniValue)
        h.uniStateValue?.listen {
            self.value = Self.makeValue(h: $0.description, v: v.uniValue.description, blur: blur.uniValue.description, spread: spread.uniValue.description, color: colorState.wrappedValue, inset: inset.uniValue)
            self._changeHandler()
        }
        v.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: $0.description, blur: blur.uniValue.description, spread: spread.uniValue.description, color: colorState.wrappedValue, inset: inset.uniValue)
            self._changeHandler()
        }
        blur.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: $0.description, spread: spread.uniValue.description, color: colorState.wrappedValue, inset: inset.uniValue)
            self._changeHandler()
        }
        spread.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, spread: $0.description, color: colorState.wrappedValue, inset: inset.uniValue)
            self._changeHandler()
        }
        colorState.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, spread: spread.uniValue.description, color: $0, inset: inset.uniValue)
            self._changeHandler()
        }
        inset.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, spread: spread.uniValue.description, color: colorState.wrappedValue, inset: $0)
            self._changeHandler()
        }
    }
    
    public convenience init<H, V, B, S, C>(h: H, v: V, blur: B, spread: S, color: C)
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue, C: StateConvertible,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable, C.Value == Color {
        self.init(h: h, v: v, blur: blur, spread: spread, color: color, inset: false)
    }
    
    public init<H, V, S, I>(h: H, v: V, spread: S, color: Color, inset: I)
    where H: UniValue, V: UniValue, S: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              S.UniValue: UnitValuable, I.UniValue == Bool {
        value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, spread: spread.uniValue.description, color: color, inset: inset.uniValue)
        h.uniStateValue?.listen {
            self.value = Self.makeValue(h: $0.description, v: v.uniValue.description, spread: spread.uniValue.description, color: color, inset: inset.uniValue)
            self._changeHandler()
        }
        v.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: $0.description, spread: spread.uniValue.description, color: color, inset: inset.uniValue)
            self._changeHandler()
        }
        spread.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, spread: $0.description, color: color, inset: inset.uniValue)
            self._changeHandler()
        }
        inset.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, spread: spread.uniValue.description, color: color, inset: $0)
            self._changeHandler()
        }
    }
    
    public convenience init<H, V, S>(h: H, v: V, spread: S, color: Color)
    where H: UniValue, V: UniValue, S: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              S.UniValue: UnitValuable {
        self.init(h: h, v: v, spread: spread, color: color, inset: false)
    }
    
    public init<H, V, S, C, I>(h: H, v: V, spread: S, color: C, inset: I)
    where H: UniValue, V: UniValue, S: UniValue, C: StateConvertible, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              S.UniValue: UnitValuable, C.Value == Color, I.UniValue == Bool {
        let colorState = color.stateValue
        value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, spread: spread.uniValue.description, color: colorState.wrappedValue, inset: inset.uniValue)
        h.uniStateValue?.listen {
            self.value = Self.makeValue(h: $0.description, v: v.uniValue.description, spread: spread.uniValue.description, color: colorState.wrappedValue, inset: inset.uniValue)
            self._changeHandler()
        }
        v.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: $0.description, spread: spread.uniValue.description, color: colorState.wrappedValue, inset: inset.uniValue)
            self._changeHandler()
        }
        spread.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, spread: $0.description, color: colorState.wrappedValue, inset: inset.uniValue)
            self._changeHandler()
        }
        colorState.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, spread: spread.uniValue.description, color: $0, inset: inset.uniValue)
            self._changeHandler()
        }
        inset.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, spread: spread.uniValue.description, color: colorState.wrappedValue, inset: $0)
            self._changeHandler()
        }
    }
    
    public convenience init<H, V, S, C>(h: H, v: V, spread: S, color: C)
    where H: UniValue, V: UniValue, S: UniValue, C: StateConvertible,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              S.UniValue: UnitValuable, C.Value == Color {
        self.init(h: h, v: v, spread: spread, color: color, inset: false)
    }
    
    public init<H, V, B, I>(h: H, v: V, blur: B, color: Color, inset: I)
    where H: UniValue, V: UniValue, B: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              B.UniValue: UnitValuable, I.UniValue == Bool {
        value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, color: color, inset: inset.uniValue)
        h.uniStateValue?.listen {
            self.value = Self.makeValue(h: $0.description, v: v.uniValue.description, blur: blur.uniValue.description, color: color, inset: inset.uniValue)
            self._changeHandler()
        }
        v.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: $0.description, blur: blur.uniValue.description, color: color, inset: inset.uniValue)
            self._changeHandler()
        }
        blur.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: $0.description, color: color, inset: inset.uniValue)
            self._changeHandler()
        }
        inset.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, color: color, inset: $0)
            self._changeHandler()
        }
    }
    
    public convenience init<H, V, B>(h: H, v: V, blur: B, color: Color)
    where H: UniValue, V: UniValue, B: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              B.UniValue: UnitValuable {
        self.init(h: h, v: v, blur: blur, color: color, inset: false)
    }
    
    public init<H, V, B, C, I>(h: H, v: V, blur: B, color: C, inset: I)
    where H: UniValue, V: UniValue, B: UniValue, C: StateConvertible, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              B.UniValue: UnitValuable, C.Value == Color, I.UniValue == Bool {
        let colorState = color.stateValue
        value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, color: colorState.wrappedValue, inset: inset.uniValue)
        h.uniStateValue?.listen {
            self.value = Self.makeValue(h: $0.description, v: v.uniValue.description, blur: blur.uniValue.description, color: colorState.wrappedValue, inset: inset.uniValue)
            self._changeHandler()
        }
        v.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: $0.description, blur: blur.uniValue.description, color: colorState.wrappedValue, inset: inset.uniValue)
            self._changeHandler()
        }
        blur.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: $0.description, color: colorState.wrappedValue, inset: inset.uniValue)
            self._changeHandler()
        }
        colorState.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, color: $0, inset: inset.uniValue)
            self._changeHandler()
        }
        inset.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, blur: blur.uniValue.description, color: colorState.wrappedValue, inset: $0)
            self._changeHandler()
        }
    }
    
    public convenience init<H, V, B, C>(h: H, v: V, blur: B, color: C)
    where H: UniValue, V: UniValue, B: UniValue, C: StateConvertible,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              B.UniValue: UnitValuable, C.Value == Color {
        self.init(h: h, v: v, blur: blur, color: color, inset: false)
    }
    
    public init<H, V, I>(h: H, v: V, color: Color, inset: I)
    where H: UniValue, V: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, I.UniValue == Bool {
        value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, color: color, inset: inset.uniValue)
        h.uniStateValue?.listen {
            self.value = Self.makeValue(h: $0.description, v: v.uniValue.description, color: color, inset: inset.uniValue)
            self._changeHandler()
        }
        v.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: $0.description, color: color, inset: inset.uniValue)
            self._changeHandler()
        }
        inset.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, color: color, inset: $0)
            self._changeHandler()
        }
    }
    
    public convenience init<H, V>(h: H, v: V, color: Color)
    where H: UniValue, V: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable {
        self.init(h: h, v: v, color: color, inset: false)
    }
    
    public init<H, V, C, I>(h: H, v: V, color: C, inset: I)
    where H: UniValue, V: UniValue, C: StateConvertible, I: UniValue,
          H.UniValue: UnitValuable, V.UniValue: UnitValuable, C.Value == Color, I.UniValue == Bool {
        let colorState = color.stateValue
        value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, color: colorState.wrappedValue, inset: inset.uniValue)
        h.uniStateValue?.listen {
            self.value = Self.makeValue(h: $0.description, v: v.uniValue.description, color: colorState.wrappedValue, inset: inset.uniValue)
            self._changeHandler()
        }
        v.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: $0.description, color: colorState.wrappedValue, inset: inset.uniValue)
            self._changeHandler()
        }
        colorState.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, color: $0, inset: inset.uniValue)
            self._changeHandler()
        }
        inset.uniStateValue?.listen {
            self.value = Self.makeValue(h: h.uniValue.description, v: v.uniValue.description, color: colorState.wrappedValue, inset: $0)
            self._changeHandler()
        }
    }
    
    public convenience init<H, V, C>(h: H, v: V, color: C)
    where H: UniValue, V: UniValue, C: StateConvertible,
          H.UniValue: UnitValuable, V.UniValue: UnitValuable, C.Value == Color {
        self.init(h: h, v: v, color: color, inset: false)
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Attaches one or more shadows to an element
    public typealias BoxShadow = BoxShadowProperty
}

extension CSSRulable {
    /// Use it for multiple shadows
    public func boxShadow<U>(_ values: [U]) -> Self where U: UniValue, U.UniValue == BoxShadowValue {
        _addProperty(BoxShadowProperty(values))
        return self
    }

    /// Use it for multiple shadows
    public func boxShadow<U>(_ values: U...) -> Self where U: UniValue, U.UniValue == BoxShadowValue {
        _addProperty(BoxShadowProperty(values))
        return self
    }

    /// Attaches one shadow to an element
    public func boxShadow<H, V, I>(h: H, v: V, inset: I) -> Self
    where H: UniValue, V: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, I.UniValue == Bool {
        _addProperty(BoxShadowProperty(h: h, v: v, inset: inset))
        return self
    }
    
    public func boxShadow<H, V>(h: H, v: V) -> Self
    where H: UniValue, V: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable {
        _addProperty(BoxShadowProperty(h: h, v: v, inset: false))
        return self
    }
    
    public func boxShadow<H, V, B, I>(h: H, v: V, blur: B, inset: I) -> Self
    where H: UniValue, V: UniValue, B: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable, I.UniValue == Bool {
        _addProperty(BoxShadowProperty(h: h, v: v, blur: blur, inset: inset))
        return self
    }
    
    public func boxShadow<H, V, B>(h: H, v: V, blur: B) -> Self
    where H: UniValue, V: UniValue, B: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable {
        boxShadow(h: h, v: v, blur: blur, inset: false)
    }
    
    public func boxShadow<H, V, B, S, I>(h: H, v: V, blur: B, spread: S, inset: I) -> Self
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable, I.UniValue == Bool {
        _addProperty(BoxShadowProperty(h: h, v: v, blur: blur, spread: spread, inset: inset))
        return self
    }
    
    public func boxShadow<H, V, B, S>(h: H, v: V, blur: B, spread: S) -> Self
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable {
        boxShadow(h: h, v: v, blur: blur, spread: spread, inset: false)
    }
    
    public func boxShadow<H, V, B, S, I>(h: H, v: V, blur: B, spread: S, color: Color, inset: I) -> Self
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable, I.UniValue == Bool {
        _addProperty(BoxShadowProperty(h: h, v: v, blur: blur, spread: spread, color: color, inset: inset))
        return self
    }
    
    public func boxShadow<H, V, B, S>(h: H, v: V, blur: B, spread: S, color: Color) -> Self
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable {
        boxShadow(h: h, v: v, blur: blur, spread: spread, color: color, inset: false)
    }
    
    public func boxShadow<H, V, B, S, C, I>(h: H, v: V, blur: B, spread: S, color: C, inset: I) -> Self
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue, C: StateConvertible, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable, C.Value == Color, I.UniValue == Bool {
        _addProperty(BoxShadowProperty(h: h, v: v, blur: blur, spread: spread, color: color, inset: inset))
        return self
    }
    
    public func boxShadow<H, V, B, S, C>(h: H, v: V, blur: B, spread: S, color: C) -> Self
    where H: UniValue, V: UniValue, B: UniValue, S: UniValue, C: StateConvertible,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, B.UniValue: UnitValuable,
              S.UniValue: UnitValuable, C.Value == Color {
        boxShadow(h: h, v: v, blur: blur, spread: spread, color: color, inset: false)
    }
    
    public func boxShadow<H, V, S, I>(h: H, v: V, spread: S, color: Color, inset: I) -> Self
    where H: UniValue, V: UniValue, S: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              S.UniValue: UnitValuable, I.UniValue == Bool {
        _addProperty(BoxShadowProperty(h: h, v: v, spread: spread, color: color, inset: inset))
        return self
    }
    
    public func boxShadow<H, V, S>(h: H, v: V, spread: S, color: Color) -> Self
    where H: UniValue, V: UniValue, S: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              S.UniValue: UnitValuable {
        boxShadow(h: h, v: v, spread: spread, color: color, inset: false)
    }
    
    public func boxShadow<H, V, S, C, I>(h: H, v: V, spread: S, color: C, inset: I) -> Self
    where H: UniValue, V: UniValue, S: UniValue, C: StateConvertible, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              S.UniValue: UnitValuable, C.Value == Color, I.UniValue == Bool {
        _addProperty(BoxShadowProperty(h: h, v: v, spread: spread, color: color, inset: inset))
        return self
    }
    
    public func boxShadow<H, V, S, C>(h: H, v: V, spread: S, color: C) -> Self
    where H: UniValue, V: UniValue, S: UniValue, C: StateConvertible,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              S.UniValue: UnitValuable, C.Value == Color {
        boxShadow(h: h, v: v, spread: spread, color: color, inset: false)
    }
    
    public func boxShadow<H, V, B, I>(h: H, v: V, blur: B, color: Color, inset: I) -> Self
    where H: UniValue, V: UniValue, B: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              B.UniValue: UnitValuable, I.UniValue == Bool {
        _addProperty(BoxShadowProperty(h: h, v: v, blur: blur, color: color, inset: inset))
        return self
    }
    
    public func boxShadow<H, V, B>(h: H, v: V, blur: B, color: Color) -> Self
    where H: UniValue, V: UniValue, B: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              B.UniValue: UnitValuable {
        boxShadow(h: h, v: v, blur: blur, color: color, inset: false)
    }
    
    public func boxShadow<H, V, B, C, I>(h: H, v: V, blur: B, color: C, inset: I) -> Self
    where H: UniValue, V: UniValue, B: UniValue, C: StateConvertible, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              B.UniValue: UnitValuable, C.Value == Color, I.UniValue == Bool {
        _addProperty(BoxShadowProperty(h: h, v: v, blur: blur, color: color, inset: inset))
        return self
    }
    
    public func boxShadow<H, V, B, C>(h: H, v: V, blur: B, color: C) -> Self
    where H: UniValue, V: UniValue, B: UniValue, C: StateConvertible,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable,
              B.UniValue: UnitValuable, C.Value == Color {
        boxShadow(h: h, v: v, blur: blur, color: color, inset: false)
    }
    
    public func boxShadow<H, V, I>(h: H, v: V, color: Color, inset: I) -> Self
    where H: UniValue, V: UniValue, I: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable, I.UniValue == Bool {
        _addProperty(BoxShadowProperty(h: h, v: v, color: color, inset: inset))
        return self
    }
    
    public func boxShadow<H, V>(h: H, v: V, color: Color) -> Self
    where H: UniValue, V: UniValue,
              H.UniValue: UnitValuable, V.UniValue: UnitValuable {
        boxShadow(h: h, v: v, color: color, inset: false)
    }
    
    public func boxShadow<H, V, C, I>(h: H, v: V, color: C, inset: I) -> Self
    where H: UniValue, V: UniValue, C: StateConvertible, I: UniValue,
          H.UniValue: UnitValuable, V.UniValue: UnitValuable, C.Value == Color, I.UniValue == Bool {
        _addProperty(BoxShadowProperty(h: h, v: v, color: color, inset: inset))
        return self
    }
    
    public func boxShadow<H, V, C>(h: H, v: V, color: C) -> Self
    where H: UniValue, V: UniValue, C: StateConvertible,
          H.UniValue: UnitValuable, V.UniValue: UnitValuable, C.Value == Color {
        boxShadow(h: h, v: v, color: color, inset: false)
    }
}

// MARK: - BoxSizingProperty

/// Defines how the width and height of an element are calculated: should they include padding and borders, or not
///
/// ```html
/// box-sizing: border-box;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_box-sizing.asp)
public class BoxSizingProperty: _Property {
    public var propertyKey: PropertyKey<BoxSizingType> { .boxSizing }
    public var propertyValue: BoxSizingType
    var _content = _PropertyContent<BoxSizingType>()

    public init (_ type: BoxSizingType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BoxSizingType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BoxSizingType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Defines how the width and height of an element are calculated: should they include padding and borders, or not
    public static var boxSizing: PropertyKey<BoxSizingType> { "box-sizing".propertyKey() }
}

extension Stylesheet {
    /// Defines how the width and height of an element are calculated: should they include padding and borders, or not
    public typealias BoxSizing = BoxSizingProperty
}

extension CSSRulable {
    /// Defines how the width and height of an element are calculated: should they include padding and borders, or not
    public func boxSizing(_ type: BoxSizingType) -> Self {
        _addProperty(.boxSizing, type)
        return self
    }

    /// Defines how the width and height of an element are calculated: should they include padding and borders, or not
    public func boxSizing(_ type: State<BoxSizingType>) -> Self {
        _addProperty(BoxSizingProperty(type))
        return self
    }

    /// Defines how the width and height of an element are calculated: should they include padding and borders, or not
    public func boxSizing<V>(_ type: ExpressableState<V, BoxSizingType>) -> Self {
        boxSizing(type.unwrap())
    }
}

// MARK: - BreakAfterProperty

/// Specifies whether or not a page-, column-, or region-break should occur after the specified element
///
/// ```html
/// break-after: always;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_break-after.asp)
public class BreakAfterProperty: _Property {
    public var propertyKey: PropertyKey<BreakType> { .breakAfter }
    public var propertyValue: BreakType
    var _content = _PropertyContent<BreakType>()

    public init (_ type: BreakType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BreakType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BreakType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether or not a page-, column-, or region-break should occur after the specified element
    public static var breakAfter: PropertyKey<BreakType> { "break-after".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether or not a page-, column-, or region-break should occur after the specified element
    public typealias BreakAfter = BreakAfterProperty
}

extension CSSRulable {
    /// Specifies whether or not a page-, column-, or region-break should occur after the specified element
    public func breakAfter(_ type: BreakType) -> Self {
        _addProperty(.breakAfter, type)
        return self
    }

    /// Specifies whether or not a page-, column-, or region-break should occur after the specified element
    public func breakAfter(_ type: State<BreakType>) -> Self {
        _addProperty(BreakAfterProperty(type))
        return self
    }

    /// Specifies whether or not a page-, column-, or region-break should occur after the specified element
    public func breakAfter<V>(_ type: ExpressableState<V, BreakType>) -> Self {
        breakAfter(type.unwrap())
    }
}

// MARK: - BreakBeforeProperty

/// Specifies whether or not a page-, column-, or region-break should occur before the specified element
///
/// ```html
/// break-before: always;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_break-before.asp)
public class BreakBeforeProperty: _Property {
    public var propertyKey: PropertyKey<BreakType> { .breakBefore }
    public var propertyValue: BreakType
    var _content = _PropertyContent<BreakType>()

    public init (_ type: BreakType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BreakType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BreakType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether or not a page-, column-, or region-break should occur before the specified element
    public static var breakBefore: PropertyKey<BreakType> { "break-before".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether or not a page-, column-, or region-break should occur before the specified element
    public typealias BreakBefore = BreakBeforeProperty
}

extension CSSRulable {
    /// Specifies whether or not a page-, column-, or region-break should occur before the specified element
    public func breakBefore(_ type: BreakType) -> Self {
        _addProperty(.breakBefore, type)
        return self
    }

    /// Specifies whether or not a page-, column-, or region-break should occur before the specified element
    public func breakBefore(_ type: State<BreakType>) -> Self {
        _addProperty(BreakBeforeProperty(type))
        return self
    }

    /// Specifies whether or not a page-, column-, or region-break should occur before the specified element
    public func breakBefore<V>(_ type: ExpressableState<V, BreakType>) -> Self {
        breakBefore(type.unwrap())
    }
}

// MARK: - BreakInsideProperty

/// Specifies whether or not a page-, column-, or region-break should occur inside the specified element
///
/// ```html
/// break-inside: avoid;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_break-inside.asp)
public class BreakInsideProperty: _Property {
    public var propertyKey: PropertyKey<BreakInsideType> { .breakInside }
    public var propertyValue: BreakInsideType
    var _content = _PropertyContent<BreakInsideType>()

    public init (_ type: BreakInsideType) {
        propertyValue = type
    }

    public convenience init (_ type: State<BreakInsideType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, BreakInsideType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether or not a page-, column-, or region-break should occur inside the specified element
    public static var breakInside: PropertyKey<BreakInsideType> { "break-inside".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether or not a page-, column-, or region-break should occur inside the specified element
    public typealias BreakInside = BreakInsideProperty
}

extension CSSRulable {
    /// Specifies whether or not a page-, column-, or region-break should occur inside the specified element
    public func breakInside(_ type: BreakInsideType) -> Self {
        _addProperty(.breakInside, type)
        return self
    }

    /// Specifies whether or not a page-, column-, or region-break should occur inside the specified element
    public func breakInside(_ type: State<BreakInsideType>) -> Self {
        _addProperty(BreakInsideProperty(type))
        return self
    }

    /// Specifies whether or not a page-, column-, or region-break should occur inside the specified element
    public func breakInside<V>(_ type: ExpressableState<V, BreakInsideType>) -> Self {
        breakInside(type.unwrap())
    }
}

// MARK: - CaptionSideProperty

/// Specifies the placement of a table caption
///
/// ```html
/// caption-side: bottom;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_tab_caption-side.asp)
public class CaptionSideProperty: _Property {
    public var propertyKey: PropertyKey<CaptionSideType> { .captionSide }
    public var propertyValue: CaptionSideType
    var _content = _PropertyContent<CaptionSideType>()

    public init (_ type: CaptionSideType) {
        propertyValue = type
    }

    public convenience init (_ type: State<CaptionSideType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, CaptionSideType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the placement of a table caption
    public static var captionSide: PropertyKey<CaptionSideType> { "caption-side".propertyKey() }
}

extension Stylesheet {
    /// Specifies the placement of a table caption
    public typealias CaptionSide = CaptionSideProperty
}

extension CSSRulable {
    /// Specifies the placement of a table caption
    public func captionSide(_ type: CaptionSideType) -> Self {
        _addProperty(.captionSide, type)
        return self
    }

    /// Specifies the placement of a table caption
    public func captionSide(_ type: State<CaptionSideType>) -> Self {
        _addProperty(CaptionSideProperty(type))
        return self
    }

    /// Specifies the placement of a table caption
    public func captionSide<V>(_ type: ExpressableState<V, CaptionSideType>) -> Self {
        captionSide(type.unwrap())
    }
}

// MARK: - CaretColorProperty

/// Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
///
/// ```html
/// caret-color: red;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_caret-color.asp)
public class CaretColorProperty: _Property {
    public var propertyKey: PropertyKey<Color> { .caretColor }
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
    /// Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
    public static var caretColor: PropertyKey<Color> { "caret-color".propertyKey() }
}

extension Stylesheet {
    /// Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
    public typealias CaretColor = CaretColorProperty
}

extension CSSRulable {
    /// Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
    public func caretColor(_ type: Color) -> Self {
        _addProperty(.caretColor, type)
        return self
    }

    /// Specifies the color of the cursor (caret) in inputs, textareas, or any element that is editable
    public func caretColor<S>(_ type: S) -> Self where S: StateConvertible, S.Value == Color {
        _addProperty(CaretColorProperty(type.stateValue))
        return self
    }
}

// MARK: - ClearProperty

/// Specifies on which sides of an element floating elements are not allowed to float
///
/// ```html
/// clear: both;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_class_clear.asp)
public class ClearProperty: _Property {
    public var propertyKey: PropertyKey<ClearType> { .clear }
    public var propertyValue: ClearType
    var _content = _PropertyContent<ClearType>()

    public init (_ type: ClearType) {
        propertyValue = type
    }

    public convenience init (_ type: State<ClearType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, ClearType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies on which sides of an element floating elements are not allowed to float
    public static var clear: PropertyKey<ClearType> { "clear".propertyKey() }
}

extension Stylesheet {
    /// Specifies on which sides of an element floating elements are not allowed to float
    public typealias Clear = ClearProperty
}

extension CSSRulable {
    /// Specifies on which sides of an element floating elements are not allowed to float
    public func clear(_ type: ClearType) -> Self {
        _addProperty(.clear, type)
        return self
    }

    /// Specifies on which sides of an element floating elements are not allowed to float
    public func clear(_ type: State<ClearType>) -> Self {
        _addProperty(ClearProperty(type))
        return self
    }

    /// Specifies on which sides of an element floating elements are not allowed to float
    public func clear<V>(_ type: ExpressableState<V, ClearType>) -> Self {
        clear(type.unwrap())
    }
}

// MARK: - ClipProperty

/// Clips an absolutely positioned element
///
/// ```html
/// clip: rect(0px,60px,200px,0px);
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_pos_clip.asp)
public class ClipProperty: _Property {
    public var propertyKey: PropertyKey<ClipValue> { .clip }
    public var propertyValue: ClipValue
    var _content = _PropertyContent<ClipValue>()

    public init <U: UnitValuable>(all: U) {
        propertyValue = ClipValue(all: all)
    }

    public convenience init <A>(all type: A) where A: StateConvertible, A.Value: UnitValuable {
        let state = type.stateValue
        self.init(all: state.wrappedValue)
        state.listen { self._changed(to: ClipValue(all: $0)) }
    }

    // MARK: V/H

    public init <U1: UnitValuable, U2: UnitValuable>(v: U1, h: U2) {
        propertyValue = ClipValue(v: v, h: h)
    }

    public convenience init <U1: UnitValuable, A>(v: A, h: U1) where A: StateConvertible, A.Value: UnitValuable {
        let v = v.stateValue
        self.init(v: v.wrappedValue, h: h)
        v.listen { self._changed(to: ClipValue(v: $0, h: h)) }
    }

    public convenience init <U1: UnitValuable, B>(v: U1, h: B) where B: StateConvertible, B.Value: UnitValuable {
        let h = h.stateValue
        self.init(v: v, h: h.wrappedValue)
        h.listen { self._changed(to: ClipValue(v: v, h: $0)) }
    }

    public convenience init <A, B>(v: A, h: B) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        let v = v.stateValue
        let h = h.stateValue
        self.init(v: v.wrappedValue, h: h.wrappedValue)
        v.listen { self._changed(to: ClipValue(v: $0, h: h.wrappedValue)) }
        h.listen { self._changed(to: ClipValue(v: v.wrappedValue, h: $0)) }
    }

    // MARK: Top/H/Bottom

    public init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable>(top: U1, h: U2, bottom: U3) {
        propertyValue = ClipValue(top: top, h: h, bottom: bottom)
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, A>(top: A, h: U1, bottom: U2) where A: StateConvertible, A.Value: UnitValuable {
        let top = top.stateValue
        self.init(top: top.wrappedValue, h: h, bottom: bottom)
        top.listen { self._changed(to: ClipValue(top: $0, h: h, bottom: bottom)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, B>(top: U1, h: B, bottom: U2) where B: StateConvertible, B.Value: UnitValuable {
        let h = h.stateValue
        self.init(top: top, h: h.wrappedValue, bottom: bottom)
        h.listen { self._changed(to: ClipValue(top: top, h: $0, bottom: bottom)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, C>(top: U1, h: U2, bottom: C) where C: StateConvertible, C.Value: UnitValuable {
        let bottom = bottom.stateValue
        self.init(top: top, h: h, bottom: bottom.wrappedValue)
        bottom.listen { self._changed(to: ClipValue(top: top, h: h, bottom: $0)) }
    }

    public convenience init <U1: UnitValuable, A, B>(top: A, h: B, bottom: U1) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        let top = top.stateValue
        let h = h.stateValue
        self.init(top: top.wrappedValue, h: h.wrappedValue, bottom: bottom)
        top.listen { self._changed(to: ClipValue(top: $0, h: h.wrappedValue, bottom: bottom)) }
        h.listen { self._changed(to: ClipValue(top: top.wrappedValue, h: $0, bottom: bottom)) }
    }

    public convenience init <U1: UnitValuable, A, C>(top: A, h: U1, bottom: C) where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let top = top.stateValue
        let bottom = bottom.stateValue
        self.init(top: top.wrappedValue, h: h, bottom: bottom.wrappedValue)
        top.listen { self._changed(to: ClipValue(top: $0, h: h, bottom: bottom.wrappedValue)) }
        bottom.listen { self._changed(to: ClipValue(top: top.wrappedValue, h: h, bottom: $0)) }
    }

    public convenience init <U1: UnitValuable, B, C>(top: U1, h: B, bottom: C) where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let h = h.stateValue
        let bottom = bottom.stateValue
        self.init(top: top, h: h.wrappedValue, bottom: bottom.wrappedValue)
        h.listen { self._changed(to: ClipValue(top: top, h: $0, bottom: bottom.wrappedValue)) }
        bottom.listen { self._changed(to: ClipValue(top: top, h: h.wrappedValue, bottom: $0)) }
    }

    public convenience init <A, B, C>(top: A, h: B, bottom: C) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let top = top.stateValue
        let h = h.stateValue
        let bottom = bottom.stateValue
        self.init(top: top.wrappedValue, h: h.wrappedValue, bottom: bottom.wrappedValue)
        top.listen { self._changed(to: ClipValue(top: $0, h: h.wrappedValue, bottom: bottom.wrappedValue)) }
        h.listen { self._changed(to: ClipValue(top: top.wrappedValue, h: $0, bottom: bottom.wrappedValue)) }
        bottom.listen { self._changed(to: ClipValue(top: top.wrappedValue, h: h.wrappedValue, bottom: $0)) }
    }

    // MARK: Top/Right/Bottom/Left

    public init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, U4: UnitValuable>(top: U1, right: U2, bottom: U3, left: U4) {
        propertyValue = ClipValue(top: top, right: right, bottom: bottom, left: left)
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, A>(top: A, right: U1, bottom: U2, left: U3) where A: StateConvertible, A.Value: UnitValuable {
        let top = top.stateValue
        self.init(top: top.wrappedValue, right: right, bottom: bottom, left: left)
        top.listen { self._changed(to: ClipValue(top: $0, right: right, bottom: bottom, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, B>(top: U1, right: B, bottom: U2, left: U3) where B: StateConvertible, B.Value: UnitValuable {
        let right = right.stateValue
        self.init(top: top, right: right.wrappedValue, bottom: bottom, left: left)
        right.listen { self._changed(to: ClipValue(top: top, right: $0, bottom: bottom, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, C>(top: U1, right: U2, bottom: C, left: U3) where C: StateConvertible, C.Value: UnitValuable {
        let bottom = bottom.stateValue
        self.init(top: top, right: right, bottom: bottom.wrappedValue, left: left)
        bottom.listen { self._changed(to: ClipValue(top: top, right: right, bottom: $0, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, D>(top: U1, right: U2, bottom: U3, left: D) where D: StateConvertible, D.Value: UnitValuable {
        let left = left.stateValue
        self.init(top: top, right: right, bottom: bottom, left: left.wrappedValue)
        left.listen { self._changed(to: ClipValue(top: top, right: right, bottom: bottom, left: $0)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, A, B>(top: A, right: B, bottom: U1, left: U2) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        let top = top.stateValue
        let right = right.stateValue
        self.init(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom, left: left)
        top.listen { self._changed(to: ClipValue(top: $0, right: right.wrappedValue, bottom: bottom, left: left)) }
        right.listen { self._changed(to: ClipValue(top: top.wrappedValue, right: $0, bottom: bottom, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, A, C>(top: A, right: U1, bottom: C, left: U2) where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let top = top.stateValue
        let bottom = bottom.stateValue
        self.init(top: top.wrappedValue, right: right, bottom: bottom.wrappedValue, left: left)
        top.listen { self._changed(to: ClipValue(top: $0, right: right, bottom: bottom.wrappedValue, left: left)) }
        bottom.listen { self._changed(to: ClipValue(top: top.wrappedValue, right: right, bottom: $0, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, A, D>(top: A, right: U1, bottom: U2, left: D) where A: StateConvertible, A.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let top = top.stateValue
        let left = left.stateValue
        self.init(top: top.wrappedValue, right: right, bottom: bottom, left: left.wrappedValue)
        top.listen { self._changed(to: ClipValue(top: $0, right: right, bottom: bottom, left: left.wrappedValue)) }
        left.listen { self._changed(to: ClipValue(top: top.wrappedValue, right: right, bottom: bottom, left: $0)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, B, C>(top: U1, right: B, bottom: C, left: U2) where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let right = right.stateValue
        let bottom = bottom.stateValue
        self.init(top: top, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left)
        right.listen { self._changed(to: ClipValue(top: top, right: $0, bottom: bottom.wrappedValue, left: left)) }
        bottom.listen { self._changed(to: ClipValue(top: top, right: right.wrappedValue, bottom: $0, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, B, D>(top: U1, right: B, bottom: U2, left: D) where B: StateConvertible, B.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let right = right.stateValue
        let left = left.stateValue
        self.init(top: top, right: right.wrappedValue, bottom: bottom, left: left.wrappedValue)
        right.listen { self._changed(to: ClipValue(top: top, right: $0, bottom: bottom, left: left.wrappedValue)) }
        left.listen { self._changed(to: ClipValue(top: top, right: right.wrappedValue, bottom: bottom, left: $0)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, C, D>(top: U1, right: U2, bottom: C, left: D) where C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let bottom = bottom.stateValue
        let left = left.stateValue
        self.init(top: top, right: right, bottom: bottom.wrappedValue, left: left.wrappedValue)
        bottom.listen { self._changed(to: ClipValue(top: top, right: right, bottom: $0, left: left.wrappedValue)) }
        left.listen { self._changed(to: ClipValue(top: top, right: right, bottom: bottom.wrappedValue, left: $0)) }
    }

    public convenience init <U1: UnitValuable, A, B, C>(top: A, right: B, bottom: C, left: U1) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let top = top.stateValue
        let right = right.stateValue
        let bottom = bottom.stateValue
        self.init(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left)
        top.listen { self._changed(to: ClipValue(top: $0, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left)) }
        right.listen { self._changed(to: ClipValue(top: top.wrappedValue, right: $0, bottom: bottom.wrappedValue, left: left)) }
        bottom.listen { self._changed(to: ClipValue(top: top.wrappedValue, right: right.wrappedValue, bottom: $0, left: left)) }
    }

    public convenience init <U1: UnitValuable, A, B, D>(top: A, right: B, bottom: U1, left: D) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let top = top.stateValue
        let right = right.stateValue
        let left = left.stateValue
        self.init(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom, left: left.wrappedValue)
        top.listen { self._changed(to: ClipValue(top: $0, right: right.wrappedValue, bottom: bottom, left: left.wrappedValue)) }
        right.listen { self._changed(to: ClipValue(top: top.wrappedValue, right: $0, bottom: bottom, left: left.wrappedValue)) }
        left.listen { self._changed(to: ClipValue(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom, left: $0)) }
    }

    public convenience init <U1: UnitValuable, A, C, D>(top: A, right: U1, bottom: C, left: D) where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let top = top.stateValue
        let bottom = bottom.stateValue
        let left = left.stateValue
        self.init(top: top.wrappedValue, right: right, bottom: bottom.wrappedValue, left: left.wrappedValue)
        top.listen { self._changed(to: ClipValue(top: $0, right: right, bottom: bottom.wrappedValue, left: left.wrappedValue)) }
        bottom.listen { self._changed(to: ClipValue(top: top.wrappedValue, right: right, bottom: $0, left: left.wrappedValue)) }
        left.listen { self._changed(to: ClipValue(top: top.wrappedValue, right: right, bottom: bottom.wrappedValue, left: $0)) }
    }

    public convenience init <U1: UnitValuable, B, C, D>(top: U1, right: B, bottom: C, left: D) where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let right = right.stateValue
        let bottom = bottom.stateValue
        let left = left.stateValue
        self.init(top: top, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left.wrappedValue)
        right.listen { self._changed(to: ClipValue(top: top, right: $0, bottom: bottom.wrappedValue, left: left.wrappedValue)) }
        bottom.listen { self._changed(to: ClipValue(top: top, right: right.wrappedValue, bottom: $0, left: left.wrappedValue)) }
        left.listen { self._changed(to: ClipValue(top: top, right: right.wrappedValue, bottom: bottom.wrappedValue, left: $0)) }
    }

    public convenience init <A, B, C, D>(top: A, right: B, bottom: C, left: D) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let top = top.stateValue
        let right = right.stateValue
        let bottom = bottom.stateValue
        let left = left.stateValue
        self.init(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left.wrappedValue)
        top.listen { self._changed(to: ClipValue(top: $0, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left.wrappedValue)) }
        right.listen { self._changed(to: ClipValue(top: top.wrappedValue, right: $0, bottom: bottom.wrappedValue, left: left.wrappedValue)) }
        bottom.listen { self._changed(to: ClipValue(top: top.wrappedValue, right: right.wrappedValue, bottom: $0, left: left.wrappedValue)) }
        left.listen { self._changed(to: ClipValue(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom.wrappedValue, left: $0)) }
    }
}

extension PropertyKey {
    /// Clips an absolutely positioned element
    public static var clip: PropertyKey<ClipValue> { "clip".propertyKey() }
}

public class ClipValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    @State public var value = ""

    var _changeHandler = {}

    private static func values(top: CustomStringConvertible, right: CustomStringConvertible, bottom: CustomStringConvertible, left: CustomStringConvertible) -> String {
        "rect(" + [top.description, right.description, bottom.description, left.description].joined(separator: ", ") + ")"
    }

    public init <U: UnitValuable>(all: U) {
        value = all.description
        $value.listen {
            self._changeHandler()
        }
    }

    public init <U1: UnitValuable, U2: UnitValuable>(v: U1, h: U2) {
        value = Self.values(top: v, right: h, bottom: v, left: h)
        $value.listen {
            self._changeHandler()
        }
    }

    public init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable>(top: U1, h: U2, bottom: U3) {
        value = Self.values(top: top, right: h, bottom: bottom, left: h)
        $value.listen {
            self._changeHandler()
        }
    }

    public init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, U4: UnitValuable>(top: U1, right: U2, bottom: U3, left: U4) {
        value = Self.values(top: top, right: right, bottom: bottom, left: left)
        $value.listen {
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Clips an absolutely positioned element
    public typealias Clip = ClipProperty
}

extension CSSRulable {
    /// Clips an absolutely positioned element
    public func clip<U: UnitValuable>(all: U) -> Self {
        _addProperty(ClipProperty(all: all))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<A>(all type: A) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(ClipProperty(all: type))
        return self
    }

    // MARK: V/H

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable>(v: U1, h: U2) -> Self {
        _addProperty(ClipProperty(v: v, h: h))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, A>(v: A, h: U1) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(ClipProperty(v: v, h: h))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, B>(v: U1, h: B) -> Self where B: StateConvertible, B.Value: UnitValuable {
        _addProperty(ClipProperty(v: v, h: h))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<A, B>(v: A, h: B) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        _addProperty(ClipProperty(v: v, h: h))
        return self
    }

    // MARK: Top/H/Bottom

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable>(top: U1, h: U2, bottom: U3) -> Self {
        _addProperty(ClipProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, A>(top: A, h: U1, bottom: U2) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, B>(top: U1, h: B, bottom: U2) -> Self where B: StateConvertible, B.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, C>(top: U1, h: U2, bottom: C) -> Self where C: StateConvertible, C.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, A, B>(top: A, h: B, bottom: U1) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, A, C>(top: A, h: U1, bottom: C) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, B, C>(top: U1, h: B, bottom: C) -> Self where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<A, B, C>(top: A, h: B, bottom: C) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, h: h, bottom: bottom))
        return self
    }

    // MARK: Top/Right/Bottom/Left

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, U4: UnitValuable>(top: U1, right: U2, bottom: U3, left: U4) -> Self {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, A>(top: A, right: U1, bottom: U2, left: U3) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, B>(top: U1, right: B, bottom: U2, left: U3) -> Self where B: StateConvertible, B.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, C>(top: U1, right: U2, bottom: C, left: U3) -> Self where C: StateConvertible, C.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, D>(top: U1, right: U2, bottom: U3, left: D) -> Self where D: StateConvertible, D.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, A, B>(top: A, right: B, bottom: U1, left: U2) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, A, C>(top: A, right: U1, bottom: C, left: U2) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, A, D>(top: A, right: U1, bottom: U2, left: D) -> Self where A: StateConvertible, A.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, B, C>(top: U1, right: B, bottom: C, left: U2) -> Self where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, B, D>(top: U1, right: B, bottom: U2, left: D) -> Self where B: StateConvertible, B.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, U2: UnitValuable, C, D>(top: U1, right: U2, bottom: C, left: D) -> Self where C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, A, B, C>(top: A, right: B, bottom: C, left: U1) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, A, B, D>(top: A, right: B, bottom: U1, left: D) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, A, C, D>(top: A, right: U1, bottom: C, left: D) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<U1: UnitValuable, B, C, D>(top: U1, right: B, bottom: C, left: D) -> Self where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Clips an absolutely positioned element
    public func clip<A, B, C, D>(top: A, right: B, bottom: C, left: D) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(ClipProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }
}

// MARK: - ColorProperty

/// Sets the color of text
///
/// ```html
/// color: red;
/// color: #00ff00;
/// color: rgb(0,0,255);
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_text_color.asp)
public class ColorProperty: _Property {
    public var propertyKey: PropertyKey<Color> { .color }
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
    /// Sets the color of text
    public static var color: PropertyKey<Color> { "color".propertyKey() }
}

extension Stylesheet {
    /// Sets the color of text
    public typealias Color = ColorProperty
}

extension CSSRulable {
    /// Sets the color of text
    public func color(_ color: Color) -> Self {
        _addProperty(.color, color)
        return self
    }

    /// Sets the color of text
    public func color<S>(_ color: S) -> Self where S: StateConvertible, S.Value == Color {
        _addProperty(ColorProperty(color.stateValue))
        return self
    }
}

// MARK: - ColumnCountProperty

/// Specifies the number of columns an element should be divided into
///
/// ```html
/// column-count: 3;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_column-count.asp)
public class ColumnCountProperty: _Property {
    public var propertyKey: PropertyKey<Int> { .columnCount }
    public var propertyValue: Int
    var _content = _PropertyContent<Int>()

    public init (_ n: Int) {
        propertyValue = n
    }

    public convenience init (_ type: State<Int>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, Int>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the number of columns an element should be divided into
    public static var columnCount: PropertyKey<Int> { "column-count".propertyKey() }
}

extension Stylesheet {
    /// Specifies the number of columns an element should be divided into
    public typealias ColumnCount = ColumnCountProperty
}

extension CSSRulable {
    /// Specifies the number of columns an element should be divided into
    public func columnCount(_ type: Int) -> Self {
        _addProperty(.columnCount, type)
        return self
    }

    /// Specifies the number of columns an element should be divided into
    public func columnCount(_ type: State<Int>) -> Self {
        _addProperty(ColumnCountProperty(type))
        return self
    }

    /// Specifies the number of columns an element should be divided into
    public func columnCount<V>(_ type: ExpressableState<V, Int>) -> Self {
        columnCount(type.unwrap())
    }
}

// MARK: - ColumnFillProperty

/// Specifies how to fill columns, balanced or not
///
/// ```html
/// column-fill: auto;
/// column-fill: balance;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_column-fill.asp)
public class ColumnFillProperty: _Property {
    public var propertyKey: PropertyKey<ColumnFillType> { .columnFill }
    public var propertyValue: ColumnFillType
    var _content = _PropertyContent<ColumnFillType>()

    public init (_ type: ColumnFillType) {
        propertyValue = type
    }

    public convenience init (_ type: State<ColumnFillType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, ColumnFillType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies how to fill columns, balanced or not
    public static var columnFill: PropertyKey<ColumnFillType> { "column-fill".propertyKey() }
}

extension Stylesheet {
    /// Specifies how to fill columns, balanced or not
    public typealias ColumnFill = ColumnFillProperty
}

extension CSSRulable {
    /// Specifies how to fill columns, balanced or not
    public func columnFill(_ type: ColumnFillType) -> Self {
        _addProperty(.columnFill, type)
        return self
    }

    /// Specifies how to fill columns, balanced or not
    public func columnFill(_ type: State<ColumnFillType>) -> Self {
        _addProperty(ColumnFillProperty(type))
        return self
    }

    /// Specifies how to fill columns, balanced or not
    public func columnFill<V>(_ type: ExpressableState<V, ColumnFillType>) -> Self {
        columnFill(type.unwrap())
    }
}

// MARK: - ColumnGapProperty

/// Specifies the gap between the columns
///
/// ```html
/// column-gap: 40px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_column-gap.asp)
public class ColumnGapProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .columnGap }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Specifies the gap between the columns
    public static var columnGap: PropertyKey<UnitValue> { "column-gap".propertyKey() }
}

extension Stylesheet {
    /// Specifies the gap between the columns
    public typealias ColumnGap = ColumnGapProperty
}

extension CSSRulable {
    /// Specifies the gap between the columns
    public func columnGap<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.columnGap, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Specifies the gap between the columns
    public func columnGap<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(ColumnGapProperty(value))
        return self
    }

    /// Specifies the gap between the columns
    public func columnGap<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        columnGap(value.unwrap())
    }

    // MARK: Extended

    /// Specifies the gap between the columns
    public func columnGap(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.columnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the gap between the columns
    public func columnGap(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.columnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the gap between the columns
    public func columnGap(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.columnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the gap between the columns
    public func columnGap<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.columnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the gap between the columns
    public func columnGap<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.columnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the gap between the columns
    public func columnGap<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.columnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the gap between the columns
    public func columnGap<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.columnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the gap between the columns
    public func columnGap(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.columnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the gap between the columns
    public func columnGap<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.columnGap, UnitValue(value, unit))
        return self
    }
}

// MARK: - ColumnRuleColorProperty

/// Specifies the color of the rule between columns
///
/// ```html
/// column-rule-color: #ff0000;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_column-rule-color.asp)
public class ColumnRuleColorProperty: _Property {
    public var propertyKey: PropertyKey<Color> { .columnRuleColor }
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
    /// Specifies the color of the rule between columns
    public static var columnRuleColor: PropertyKey<Color> { "column-rule-color".propertyKey() }
}

extension Stylesheet {
    /// Specifies the color of the rule between columns
    public typealias ColumnRuleColor = ColumnRuleColorProperty
}

extension CSSRulable {
    /// Specifies the color of the rule between columns
    public func columnRuleColor(_ type: Color) -> Self {
        _addProperty(.columnRuleColor, type)
        return self
    }

    /// Specifies the color of the rule between columns
    public func columnRuleColor<S>(_ type: S) -> Self where S: StateConvertible, S.Value == Color {
        _addProperty(ColumnRuleColorProperty(type.stateValue))
        return self
    }
}

// MARK: - ColumnRuleProperty

/// A shorthand property for all the column-rule-* properties
///
/// ```html
/// column-rule: 4px double #ff00ff;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_column-rule.asp)
public class ColumnRuleProperty: _Property {
    public var propertyKey: PropertyKey<ColumnRuleValue> { .columnRule }
    public var propertyValue: ColumnRuleValue
    var _content = _PropertyContent<ColumnRuleValue>()

    public init (width: ColumnRuleWidthType, style: ColumnRuleStyleType, color: Color) {
        propertyValue = ColumnRuleValue(width: width, style: style, color: color)
    }
}

extension PropertyKey {
    /// A shorthand property for all the column-rule-* properties
    public static var columnRule: PropertyKey<ColumnRuleValue> { "column-rule".propertyKey() }
}

public struct ColumnRuleValue: CustomStringConvertible {
    public let value: String

    public init (width: ColumnRuleWidthType, style: ColumnRuleStyleType, color: Color) {
        value = [width.value, style.value, color.description].joined(separator: " ")
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for all the column-rule-* properties
    public typealias ColumnRule = ColumnRuleProperty
}

extension CSSRulable {
    /// A shorthand property for all the column-rule-* properties
    public func columnRule(width: ColumnRuleWidthType, style: ColumnRuleStyleType, color: Color) -> Self {
        _addProperty(ColumnRuleProperty(width: width, style: style, color: color))
        return self
    }

    /// A shorthand property for all the column-rule-* properties
    public func columnRule<W: UnitValuable>(width: W, style: ColumnRuleStyleType, color: Color) -> Self {
        columnRule(width: .length(width), style: style, color: color)
    }
}

// MARK: - ColumnRuleStyleProperty

/// Specifies the style of the rule between columns
///
/// ```html
/// column-rule-style: dotted;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_column-rule-style.asp)
public class ColumnRuleStyleProperty: _Property {
    public var propertyKey: PropertyKey<ColumnRuleStyleType> { .columnRuleStyle }
    public var propertyValue: ColumnRuleStyleType
    var _content = _PropertyContent<ColumnRuleStyleType>()

    public init (_ type: ColumnRuleStyleType) {
        propertyValue = type
    }

    public convenience init (_ type: State<ColumnRuleStyleType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, ColumnRuleStyleType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the style of the rule between columns
    public static var columnRuleStyle: PropertyKey<ColumnRuleStyleType> { "column-rule-style".propertyKey() }
}

extension Stylesheet {
    /// Specifies the style of the rule between columns
    public typealias ColumnRuleStyle = ColumnRuleStyleProperty
}

extension CSSRulable {
    /// Specifies the style of the rule between columns
    public func columnRuleStyle(_ type: ColumnRuleStyleType) -> Self {
        _addProperty(.columnRuleStyle, type)
        return self
    }

    /// Specifies the style of the rule between columns
    public func columnRuleStyle(_ type: State<ColumnRuleStyleType>) -> Self {
        _addProperty(ColumnRuleStyleProperty(type))
        return self
    }

    /// Specifies the style of the rule between columns
    public func columnRuleStyle<V>(_ type: ExpressableState<V, ColumnRuleStyleType>) -> Self {
        columnRuleStyle(type.unwrap())
    }
}

// MARK: - ColumnRuleWidthProperty

/// Specifies the width of the rule between columns
///
/// ```html
/// column-rule-width: 10px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_column-rule-width.asp)
public class ColumnRuleWidthProperty: _Property {
    public var propertyKey: PropertyKey<ColumnRuleWidthType> { .columnRuleWidth }
    public var propertyValue: ColumnRuleWidthType
    var _content = _PropertyContent<ColumnRuleWidthType>()

    public init (_ type: ColumnRuleWidthType) {
        propertyValue = type
    }

    public convenience init (_ type: State<ColumnRuleWidthType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, ColumnRuleWidthType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the width of the rule between columns
    public static var columnRuleWidth: PropertyKey<ColumnRuleWidthType> { "column-rule-width".propertyKey() }
}

extension Stylesheet {
    /// Specifies the width of the rule between columns
    public typealias ColumnRuleWidth = ColumnRuleWidthProperty
}

extension CSSRulable {
    /// Specifies the width of the rule between columns
    public func columnRuleWidth(_ type: ColumnRuleWidthType) -> Self {
        _addProperty(.columnRuleWidth, type)
        return self
    }

    /// Specifies the width of the rule between columns
    public func columnRuleWidth(_ type: State<ColumnRuleWidthType>) -> Self {
        _addProperty(ColumnRuleWidthProperty(type))
        return self
    }

    /// Specifies the width of the rule between columns
    public func columnRuleWidth<V>(_ type: ExpressableState<V, ColumnRuleWidthType>) -> Self {
        columnRuleWidth(type.unwrap())
    }
}

// MARK: - ColumnSpanProperty

/// Specifies how many columns an element should span across
///
/// ```html
/// column-span: all;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_column-span.asp)
public class ColumnSpanProperty: _Property {
    public var propertyKey: PropertyKey<ColumnSpanType> { .columnSpan }
    public var propertyValue: ColumnSpanType
    var _content = _PropertyContent<ColumnSpanType>()

    public init (_ type: ColumnSpanType) {
        propertyValue = type
    }

    public convenience init (_ type: State<ColumnSpanType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, ColumnSpanType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies how many columns an element should span across
    public static var columnSpan: PropertyKey<ColumnSpanType> { "column-span".propertyKey() }
}

extension Stylesheet {
    /// Specifies how many columns an element should span across
    public typealias ColumnSpan = ColumnSpanProperty
}

extension CSSRulable {
    /// Specifies how many columns an element should span across
    public func columnSpan(_ type: ColumnSpanType) -> Self {
        _addProperty(.columnSpan, type)
        return self
    }

    /// Specifies how many columns an element should span across
    public func columnSpan(_ type: State<ColumnSpanType>) -> Self {
        _addProperty(ColumnSpanProperty(type))
        return self
    }

    /// Specifies how many columns an element should span across
    public func columnSpan<V>(_ type: ExpressableState<V, ColumnSpanType>) -> Self {
        columnSpan(type.unwrap())
    }
}

// MARK: - ColumnsProperty

/// A shorthand property for column-width and column-count
///
/// ```html
/// columns: 100px 3;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_columns.asp)
public class ColumnsProperty: _Property {
    public var propertyKey: PropertyKey<ColumnsValue> { .columns }
    public var propertyValue: ColumnsValue
    var _content = _PropertyContent<ColumnsValue>()

    public init<U: UnitValuable>(width: U, count: Int) {
        propertyValue = ColumnsValue(width: width, count: count)
    }
}

extension PropertyKey {
    public static var columns: PropertyKey<ColumnsValue> { "columns".propertyKey() }
}

public struct ColumnsValue: CustomStringConvertible {
    public let value: String

    public init<U: UnitValuable>(width: U, count: Int) {
        value = width.description + " \(count)"
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for column-width and column-count
    public typealias Columns = ColumnsProperty
}

extension CSSRulable {
    /// A shorthand property for column-width and column-count
    public func columns<U: UnitValuable>(width: U, count: Int) -> Self {
        _addProperty(ColumnsProperty(width: width, count: count))
        return self
    }
}

// MARK: - ColumnWidthProperty

/// Specifies the column width
///
/// ```html
/// column-width: 100px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_column-width.asp)
public class ColumnWidthProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .columnWidth }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Specifies the column width
    public static var columnWidth: PropertyKey<UnitValue> { "column-width".propertyKey() }
}

extension Stylesheet {
    /// Specifies the column width
    public typealias ColumnWidth = ColumnWidthProperty
}

extension CSSRulable {
    /// Specifies the column width
    public func columnWidth<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.columnWidth, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Specifies the column width
    public func columnWidth<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(ColumnWidthProperty(value))
        return self
    }

    /// Specifies the column width
    public func columnWidth<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        columnWidth(value.unwrap())
    }

    // MARK: Extended

    /// Specifies the column width
    public func columnWidth(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.columnWidth, UnitValue(value, unit))
        return self
    }

    /// Specifies the column width
    public func columnWidth(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.columnWidth, UnitValue(value, unit))
        return self
    }

    /// Specifies the column width
    public func columnWidth(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.columnWidth, UnitValue(value, unit))
        return self
    }

    /// Specifies the column width
    public func columnWidth<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.columnWidth, UnitValue(value, unit))
        return self
    }

    /// Specifies the column width
    public func columnWidth<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.columnWidth, UnitValue(value, unit))
        return self
    }

    /// Specifies the column width
    public func columnWidth<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.columnWidth, UnitValue(value, unit))
        return self
    }

    /// Specifies the column width
    public func columnWidth<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.columnWidth, UnitValue(value, unit))
        return self
    }

    /// Specifies the column width
    public func columnWidth(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.columnWidth, UnitValue(value, unit))
        return self
    }

    /// Specifies the column width
    public func columnWidth<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.columnWidth, UnitValue(value, unit))
        return self
    }
}

// MARK: - ContentProperty

/// Used with the :before and :after pseudo-elements, to insert generated content
///
/// ```html
/// content: "•";
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_gen_content.asp)
public class ContentProperty: _Property {
    public var propertyKey: PropertyKey<ContentType> { .content }
    public var propertyValue: ContentType
    var _content = _PropertyContent<ContentType>()

    public init (_ type: ContentType) {
        propertyValue = type
    }

    public convenience init (_ type: State<ContentType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, ContentType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Used with the :before and :after pseudo-elements, to insert generated content
    public static var content: PropertyKey<ContentType> { "content".propertyKey() }
}

extension Stylesheet {
    /// Used with the :before and :after pseudo-elements, to insert generated content
    public typealias Content = ContentProperty
}

extension CSSRulable {
    /// Used with the :before and :after pseudo-elements, to insert generated content
    public func content(_ type: ContentType) -> Self {
        _addProperty(.content, type)
        return self
    }

    /// Used with the :before and :after pseudo-elements, to insert generated content
    public func content(_ type: State<ContentType>) -> Self {
        _addProperty(ContentProperty(type))
        return self
    }

    /// Used with the :before and :after pseudo-elements, to insert generated content
    public func content<V>(_ type: ExpressableState<V, ContentType>) -> Self {
        content(type.unwrap())
    }
}

// MARK: - CounterIncrementProperty

/// Increases or decreases the value of one or more CSS counters
///
/// ```html
/// counter-reset: my-sec-counter;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_gen_counter-increment.asp)
public class CounterIncrementProperty: _Property {
    public var propertyKey: PropertyKey<CounterResetType> { .counterIncrement }
    public var propertyValue: CounterResetType
    var _content = _PropertyContent<CounterResetType>()

    public init (_ type: CounterResetType) {
        propertyValue = type
    }

    public convenience init (_ type: State<CounterResetType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, CounterResetType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Increases or decreases the value of one or more CSS counters
    public static var counterIncrement: PropertyKey<CounterResetType> { "counter-increment".propertyKey() }
}

extension Stylesheet {
    /// Increases or decreases the value of one or more CSS counters
    public typealias CounterIncrement = CounterIncrementProperty
}

extension CSSRulable {
    /// Increases or decreases the value of one or more CSS counters
    public func counterIncrement(_ type: CounterResetType) -> Self {
        _addProperty(.counterIncrement, type)
        return self
    }

    /// Increases or decreases the value of one or more CSS counters
    public func counterIncrement(_ type: State<CounterResetType>) -> Self {
        _addProperty(CounterIncrementProperty(type))
        return self
    }

    /// Increases or decreases the value of one or more CSS counters
    public func counterIncrement<V>(_ type: ExpressableState<V, CounterResetType>) -> Self {
        counterIncrement(type.unwrap())
    }
}

// MARK: - CounterResetProperty

/// Creates or resets one or more CSS counters
///
/// ```html
/// counter-reset: my-sec-counter;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_gen_counter-reset.asp)
public class CounterResetProperty: _Property {
    public var propertyKey: PropertyKey<CounterResetType> { .counterReset }
    public var propertyValue: CounterResetType
    var _content = _PropertyContent<CounterResetType>()

    public init (_ type: CounterResetType) {
        propertyValue = type
    }

    public convenience init (_ type: State<CounterResetType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, CounterResetType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Creates or resets one or more CSS counters
    public static var counterReset: PropertyKey<CounterResetType> { "counter-reset".propertyKey() }
}

extension Stylesheet {
    /// Creates or resets one or more CSS counters
    public typealias CounterReset = CounterResetProperty
}

extension CSSRulable {
    /// Creates or resets one or more CSS counters
    public func counterReset(_ type: CounterResetType) -> Self {
        _addProperty(.counterReset, type)
        return self
    }

    /// Creates or resets one or more CSS counters
    public func counterReset(_ type: State<CounterResetType>) -> Self {
        _addProperty(CounterResetProperty(type))
        return self
    }

    /// Creates or resets one or more CSS counters
    public func counterReset<V>(_ type: ExpressableState<V, CounterResetType>) -> Self {
        counterReset(type.unwrap())
    }
}

// MARK: - CursorProperty

/// Specifies the mouse cursor to be displayed when pointing over an element
///
/// ```html
/// cursor: auto;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_class_cursor.asp)
public class CursorProperty: _Property {
    public var propertyKey: PropertyKey<CursorType> { .cursor }
    public var propertyValue: CursorType
    var _content = _PropertyContent<CursorType>()

    public init (_ type: CursorType) {
        propertyValue = type
    }

    public convenience init (_ type: State<CursorType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, CursorType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the mouse cursor to be displayed when pointing over an element
    public static var cursor: PropertyKey<CursorType> { "cursor".propertyKey() }
}

extension Stylesheet {
    /// Specifies the mouse cursor to be displayed when pointing over an element
    public typealias Cursor = CursorProperty
}

extension CSSRulable {
    /// Specifies the mouse cursor to be displayed when pointing over an element
    public func cursor(_ type: CursorType) -> Self {
        _addProperty(.cursor, type)
        return self
    }

    /// Specifies the mouse cursor to be displayed when pointing over an element
    public func cursor(_ type: State<CursorType>) -> Self {
        _addProperty(CursorProperty(type))
        return self
    }

    /// Specifies the mouse cursor to be displayed when pointing over an element
    public func cursor<V>(_ type: ExpressableState<V, CursorType>) -> Self {
        cursor(type.unwrap())
    }
}

// MARK: - DirectionProperty

/// Specifies the text direction/writing direction
///
/// ```html
/// direction: rtl;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_text_direction.asp)
public class DirectionProperty: _Property {
    public var propertyKey: PropertyKey<DirectionType> { .direction }
    public var propertyValue: DirectionType
    var _content = _PropertyContent<DirectionType>()

    public init (_ type: DirectionType) {
        propertyValue = type
    }

    public convenience init (_ type: State<DirectionType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, DirectionType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the text direction/writing direction
    public static var direction: PropertyKey<DirectionType> { "direction".propertyKey() }
}

extension Stylesheet {
    /// Specifies the text direction/writing direction
    public typealias Direction = DirectionProperty
}

extension CSSRulable {
    /// Specifies the text direction/writing direction
    public func direction(_ type: DirectionType) -> Self {
        _addProperty(.direction, type)
        return self
    }

    /// Specifies the text direction/writing direction
    public func direction(_ type: State<DirectionType>) -> Self {
        _addProperty(DirectionProperty(type))
        return self
    }

    /// Specifies the text direction/writing direction
    public func direction<V>(_ type: ExpressableState<V, DirectionType>) -> Self {
        direction(type.unwrap())
    }
}

// MARK: - DisplayProperty

/// Specifies how a certain HTML element should be displayed
///
/// ```html
/// display: block;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_class_display.asp)
public class DisplayProperty: _Property {
    public var propertyKey: PropertyKey<DisplayType> { .display }
    public var propertyValue: DisplayType
    var _content = _PropertyContent<DisplayType>()

    public init (_ type: DisplayType) {
        propertyValue = type
    }

    public convenience init (_ type: State<DisplayType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, DisplayType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies how a certain HTML element should be displayed
    public static var display: PropertyKey<DisplayType> { "display".propertyKey() }
}

extension Stylesheet {
    /// Specifies how a certain HTML element should be displayed
    public typealias Display = DisplayProperty
}

extension CSSRulable {
    /// Specifies how a certain HTML element should be displayed
    public func display(_ type: DisplayType) -> Self {
        _addProperty(.display, type)
        return self
    }

    /// Specifies how a certain HTML element should be displayed
    public func display(_ type: State<DisplayType>) -> Self {
        _addProperty(DisplayProperty(type))
        return self
    }

    /// Specifies how a certain HTML element should be displayed
    public func display<V>(_ type: ExpressableState<V, DisplayType>) -> Self {
        display(type.unwrap())
    }
}

// MARK: - EmptyCellsProperty

/// Specifies whether or not to display borders and background on empty cells in a table
///
/// ```html
/// empty-cells: hide;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_tab_empty-cells.asp)
public class EmptyCellsProperty: _Property {
    public var propertyKey: PropertyKey<EmptyCellsType> { .emptyCells }
    public var propertyValue: EmptyCellsType
    var _content = _PropertyContent<EmptyCellsType>()

    public init (_ type: EmptyCellsType) {
        propertyValue = type
    }

        public convenience init (_ type: State<EmptyCellsType>) {
            self.init(type.wrappedValue)
            type.listen { self._changed(to: $0) }
        }

        public convenience init <V>(_ type: ExpressableState<V, EmptyCellsType>) {
            self.init(type.unwrap())
        }
}

extension PropertyKey {
    /// Specifies whether or not to display borders and background on empty cells in a table
    public static var emptyCells: PropertyKey<EmptyCellsType> { "empty-cells".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether or not to display borders and background on empty cells in a table
    public typealias EmptyCells = EmptyCellsProperty
}

extension CSSRulable {
    /// Specifies whether or not to display borders and background on empty cells in a table
    public func emptyCells(_ type: EmptyCellsType) -> Self {
        _addProperty(.emptyCells, type)
        return self
    }

    /// Specifies whether or not to display borders and background on empty cells in a table
    public func emptyCells(_ type: State<EmptyCellsType>) -> Self {
        _addProperty(EmptyCellsProperty(type))
        return self
    }

    /// Specifies whether or not to display borders and background on empty cells in a table
    public func emptyCells<V>(_ type: ExpressableState<V, EmptyCellsType>) -> Self {
        emptyCells(type.unwrap())
    }
}

// MARK: - FilterProperty

/// Defines effects (e.g. blurring or color shifting) on an element before the element is displayed
///
/// ```html
/// filter: grayscale(100%);
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_filter.asp)
public class FilterProperty: _Property {
    public var propertyKey: PropertyKey<FilterType> { .filter }
    public var propertyValue: FilterType
    var _content = _PropertyContent<FilterType>()

    public init (_ type: FilterType) {
        propertyValue = type
    }

    public convenience init (_ type: State<FilterType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, FilterType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Defines effects (e.g. blurring or color shifting) on an element before the element is displayed
    public static var filter: PropertyKey<FilterType> { "filter".propertyKey() }
}

extension Stylesheet {
    /// Defines effects (e.g. blurring or color shifting) on an element before the element is displayed
    public typealias Filter = FilterProperty
}

extension CSSRulable {
    /// Defines effects (e.g. blurring or color shifting) on an element before the element is displayed
    public func filter(_ type: FilterType) -> Self {
        _addProperty(.filter, type)
        return self
    }

    /// Defines effects (e.g. blurring or color shifting) on an element before the element is displayed
    public func filter(_ type: State<FilterType>) -> Self {
        _addProperty(FilterProperty(type))
        return self
    }

    /// Defines effects (e.g. blurring or color shifting) on an element before the element is displayed
    public func filter<V>(_ type: ExpressableState<V, FilterType>) -> Self {
        filter(type.unwrap())
    }
}

// MARK: - FlexBasisProperty

/// Specifies the initial length of a flexible item
///
/// ```html
/// flex-basis: 100px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_flex-basis.asp)
public class FlexBasisProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .flexBasis }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Specifies the initial length of a flexible item
    public static var flexBasis: PropertyKey<UnitValue> { "flex-basis".propertyKey() }
}

extension Stylesheet {
    /// Specifies the initial length of a flexible item
    public typealias FlexBasis = FlexBasisProperty
}

extension CSSRulable {
    /// Specifies the initial length of a flexible item
    public func flexBasis<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.flexBasis, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Specifies the initial length of a flexible item
    public func flexBasis<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(FlexBasisProperty(value))
        return self
    }

    /// Specifies the initial length of a flexible item
    public func flexBasis<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        flexBasis(value.unwrap())
    }

    // MARK: Extended

    /// Specifies the initial length of a flexible item
    public func flexBasis(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.flexBasis, UnitValue(value, unit))
        return self
    }

    /// Specifies the initial length of a flexible item
    public func flexBasis(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.flexBasis, UnitValue(value, unit))
        return self
    }

    /// Specifies the initial length of a flexible item
    public func flexBasis(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.flexBasis, UnitValue(value, unit))
        return self
    }

    /// Specifies the initial length of a flexible item
    public func flexBasis<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.flexBasis, UnitValue(value, unit))
        return self
    }

    /// Specifies the initial length of a flexible item
    public func flexBasis<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.flexBasis, UnitValue(value, unit))
        return self
    }

    /// Specifies the initial length of a flexible item
    public func flexBasis<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.flexBasis, UnitValue(value, unit))
        return self
    }

    /// Specifies the initial length of a flexible item
    public func flexBasis<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.flexBasis, UnitValue(value, unit))
        return self
    }

    /// Specifies the initial length of a flexible item
    public func flexBasis(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.flexBasis, UnitValue(value, unit))
        return self
    }

    /// Specifies the initial length of a flexible item
    public func flexBasis<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.flexBasis, UnitValue(value, unit))
        return self
    }
}

// MARK: - FlexDirectionProperty

/// Specifies the direction of the flexible items
///
/// ```html
/// flex-direction: row-reverse;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_flex-direction.asp)
public class FlexDirectionProperty: _Property {
    public var propertyKey: PropertyKey<FlexDirectionType> { .flexDirection }
    public var propertyValue: FlexDirectionType
    var _content = _PropertyContent<FlexDirectionType>()

    public init (_ type: FlexDirectionType) {
        propertyValue = type
    }

    public convenience init (_ type: State<FlexDirectionType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, FlexDirectionType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the direction of the flexible items
    public static var flexDirection: PropertyKey<FlexDirectionType> { "flex-direction".propertyKey() }
}

extension Stylesheet {
    /// Specifies the direction of the flexible items
    public typealias FlexDirection = FlexDirectionProperty
}

extension CSSRulable {
    /// Specifies the direction of the flexible items
    public func flexDirection(_ type: FlexDirectionType) -> Self {
        _addProperty(.flexDirection, type)
        return self
    }

    /// Specifies the direction of the flexible items
    public func flexDirection(_ type: State<FlexDirectionType>) -> Self {
        _addProperty(FlexDirectionProperty(type))
        return self
    }

    /// Specifies the direction of the flexible items
    public func flexDirection<V>(_ type: ExpressableState<V, FlexDirectionType>) -> Self {
        flexDirection(type.unwrap())
    }
}

// MARK: - FlexFlowProperty

/// A shorthand property for the flex-direction and the flex-wrap properties
///
/// ```html
/// flex-flow: row-reverse wrap;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_flex-flow.asp)
public class FlexFlowProperty: _Property {
    public var propertyKey: PropertyKey<FlexFlowValue> { .flexFlow }
    public var propertyValue: FlexFlowValue
    var _content = _PropertyContent<FlexFlowValue>()

    public init (direction: FlexDirectionType, wrap: FlexWrapType) {
        propertyValue = .init(direction: direction, wrap: wrap)
    }

    public init <D>(direction: D, wrap: FlexWrapType) where D: StateConvertible, D.Value == FlexDirectionType {
        propertyValue = .init(direction: direction, wrap: wrap)
    }

    public init <W>(direction: FlexDirectionType, wrap: W) where W: StateConvertible, W.Value == FlexWrapType {
        propertyValue = .init(direction: direction, wrap: wrap)
    }

    public init <D, W>(direction: D, wrap: W) where D: StateConvertible, D.Value == FlexDirectionType, W: StateConvertible, W.Value == FlexWrapType {
        propertyValue = .init(direction: direction, wrap: wrap)
    }
}

extension PropertyKey {
    /// A shorthand property for the flex-direction and the flex-wrap properties
    public static var flexFlow: PropertyKey<FlexFlowValue> { "flex-flow".propertyKey() }
}

public class FlexFlowValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (direction: FlexDirectionType, wrap: FlexWrapType) {
        value = [direction.value, wrap.value].joined(separator: " ")
    }

    public convenience init <D>(direction: D, wrap: FlexWrapType) where D: StateConvertible, D.Value == FlexDirectionType {
        let direction = direction.stateValue
        self.init(direction: direction.wrappedValue, wrap: wrap)
        direction.listen {
            self.value = [$0.value, wrap.value].joined(separator: " ")
            self._changeHandler()
        }
    }

    public convenience init <W>(direction: FlexDirectionType, wrap: W) where W: StateConvertible, W.Value == FlexWrapType {
        let wrap = wrap.stateValue
        self.init(direction: direction, wrap: wrap.wrappedValue)
        wrap.listen {
            self.value = [direction.value, $0.value].joined(separator: " ")
            self._changeHandler()
        }
    }

    public convenience init <D, W>(direction: D, wrap: W) where D: StateConvertible, D.Value == FlexDirectionType, W: StateConvertible, W.Value == FlexWrapType {
        let direction = direction.stateValue
        let wrap = wrap.stateValue
        self.init(direction: direction.wrappedValue, wrap: wrap.wrappedValue)
        direction.listen {
            self.value = [$0.value, wrap.wrappedValue.value].joined(separator: " ")
            self._changeHandler()
        }
        wrap.listen {
            self.value = [direction.wrappedValue.value, $0.value].joined(separator: " ")
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for the flex-direction and the flex-wrap properties
    public typealias FlexFlow = FlexFlowProperty
}

extension CSSRulable {
    /// A shorthand property for the flex-direction and the flex-wrap properties
    public func flexFlow(direction: FlexDirectionType, wrap: FlexWrapType) -> Self {
        _addProperty(FlexFlowProperty(direction: direction, wrap: wrap))
        return self
    }

    /// A shorthand property for the flex-direction and the flex-wrap properties
    public func flexFlow<D>(direction: D, wrap: FlexWrapType) -> Self where D: StateConvertible, D.Value == FlexDirectionType {
        _addProperty(FlexFlowProperty(direction: direction, wrap: wrap))
        return self
    }

    /// A shorthand property for the flex-direction and the flex-wrap properties
    public func flexFlow<W>(direction: FlexDirectionType, wrap: W) -> Self where W: StateConvertible, W.Value == FlexWrapType {
        _addProperty(FlexFlowProperty(direction: direction, wrap: wrap))
        return self
    }

    /// A shorthand property for the flex-direction and the flex-wrap properties
    public func flexFlow<D, W>(direction: D, wrap: W) -> Self where D: StateConvertible, D.Value == FlexDirectionType, W: StateConvertible, W.Value == FlexWrapType {
        _addProperty(FlexFlowProperty(direction: direction, wrap: wrap))
        return self
    }
}

// MARK: - FlexGrowProperty

/// Specifies how much the item will grow relative to the rest
///
/// ```html
/// flex-grow: 3;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_flex-grow.asp)
public class FlexGrowProperty: _Property {
    public var propertyKey: PropertyKey<NumericValueContainer> { .flexGrow }
    public var propertyValue: NumericValueContainer
    var _content = _PropertyContent<NumericValueContainer>()

    public init (_ n: NumericValue) {
        propertyValue = NumericValueContainer(n)
    }

    public init <N>(_ n: N) where N: StateConvertible, N.Value: NumericValue {
        propertyValue = NumericValueContainer(n)
    }
}

extension PropertyKey {
    /// Specifies how much the item will grow relative to the rest
    public static var flexGrow: PropertyKey<NumericValueContainer> { "flex-grow".propertyKey() }
}

extension Stylesheet {
    /// Specifies how much the item will grow relative to the rest
    public typealias FlexGrow = FlexGrowProperty
}

extension CSSRulable {
    /// Specifies how much the item will grow relative to the rest
    public func flexGrow(_ n: NumericValue) -> Self {
        _addProperty(FlexGrowProperty(n))
        return self
    }

    /// Specifies how much the item will grow relative to the rest
    public func flexGrow<N>(_ n: N) -> Self where N: StateConvertible, N.Value: NumericValue {
        _addProperty(FlexGrowProperty(n))
        return self
    }
}

// MARK: - FlexProperty

/// A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
///
/// ```html
/// -ms-flex: 1; /* IE 10 */
/// flex: 1;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_flex.asp)
public class FlexProperty: _Property {
    public var propertyKey: PropertyKey<FlexValue> { .flex }
    public var propertyValue: FlexValue
    public var propertyAliases: [AnyProperty]
    var _content = _PropertyContent<FlexValue>()

    public init<U: UnitValuable>(grow: NumericValue, shrink: NumericValue, basis: U) {
        propertyValue = .init(grow: grow, shrink: shrink, basis: basis)
        propertyAliases = [MS(grow: grow, shrink: shrink, basis: basis)]
    }
}

extension PropertyKey {
    /// A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
    public static var flex: PropertyKey<FlexValue> { "flex".propertyKey() }
    /// A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
    public static var flex_ms: PropertyKey<FlexValue> { "-ms-flex".propertyKey() }
}

public struct FlexValue: CustomStringConvertible {
    public let value: String

    public init<U: UnitValuable>(grow: NumericValue, shrink: NumericValue, basis: U) {
        value = [grow.numericValue, shrink.numericValue, basis.description].joined(separator: " ")
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
    public typealias Flex = FlexProperty
}

extension CSSRulable {
    /// A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
    public func flex<U: UnitValuable>(grow: NumericValue, shrink: NumericValue, basis: U) -> Self {
        _addProperty(FlexProperty(grow: grow, shrink: shrink, basis: basis))
        return self
    }
}

extension FlexProperty {
    public class MS: _Property {
        public var propertyKey: PropertyKey<FlexValue> { .flex_ms }
        public var propertyValue: FlexValue
        var _content = _PropertyContent<FlexValue>()

        public init<U: UnitValuable>(grow: NumericValue, shrink: NumericValue, basis: U) {
            propertyValue = .init(grow: grow, shrink: shrink, basis: basis)
        }
    }
}

// MARK: - FlexShrinkProperty

/// Specifies how the item will shrink relative to the rest
///
/// ```html
/// flex-shrink: 3;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_flex-shrink.asp)
public class FlexShrinkProperty: _Property {
    public var propertyKey: PropertyKey<NumericValueContainer> { .flexShrink }
    public var propertyValue: NumericValueContainer
    var _content = _PropertyContent<NumericValueContainer>()

    public init (_ n: NumericValue) {
        propertyValue = NumericValueContainer(n)
    }

    public init <N>(_ n: N) where N: StateConvertible, N.Value: NumericValue {
        propertyValue = NumericValueContainer(n)
    }
}

extension PropertyKey {
    /// Specifies how the item will shrink relative to the rest
    public static var flexShrink: PropertyKey<NumericValueContainer> { "flex-shrink".propertyKey() }
}

extension Stylesheet {
    /// Specifies how the item will shrink relative to the rest
    public typealias FlexShrink = FlexShrinkProperty
}

extension CSSRulable {
    /// Specifies how the item will shrink relative to the rest
    public func flexShrink(_ n: NumericValue) -> Self {
        _addProperty(FlexShrinkProperty(n))
        return self
    }

    /// Specifies how the item will shrink relative to the rest
    public func flexShrink<N>(_ n: N) -> Self where N: StateConvertible, N.Value: NumericValue {
        _addProperty(FlexShrinkProperty(n))
        return self
    }
}

// MARK: - FlexWrapProperty

/// Specifies whether the flexible items should wrap or not
///
/// ```html
/// flex-wrap: wrap;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_flex-wrap.asp)
public class FlexWrapProperty: _Property {
    public var propertyKey: PropertyKey<FlexWrapType> { .flexWrap }
    public var propertyValue: FlexWrapType
    var _content = _PropertyContent<FlexWrapType>()

    public init (_ type: FlexWrapType) {
        propertyValue = type
    }

    public convenience init (_ type: State<FlexWrapType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, FlexWrapType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether the flexible items should wrap or not
    public static var flexWrap: PropertyKey<FlexWrapType> { "flex-wrap".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether the flexible items should wrap or not
    public typealias FlexWrap = FlexWrapProperty
}

extension CSSRulable {
    /// Specifies whether the flexible items should wrap or not
    public func flexWrap(_ type: FlexWrapType) -> Self {
        _addProperty(.flexWrap, type)
        return self
    }

    /// Specifies whether the flexible items should wrap or not
    public func flexWrap(_ type: State<FlexWrapType>) -> Self {
        _addProperty(FlexWrapProperty(type))
        return self
    }

    /// Specifies whether the flexible items should wrap or not
    public func flexWrap<V>(_ type: ExpressableState<V, FlexWrapType>) -> Self {
        flexWrap(type.unwrap())
    }
}

// MARK: - FloatProperty

/// Specifies whether or not a box should float
///
/// ```html
/// float: right;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_class_float.asp)
public class FloatProperty: _Property {
    public var propertyKey: PropertyKey<FloatType> { .float }
    public var propertyValue: FloatType
    var _content = _PropertyContent<FloatType>()

    public init (_ type: FloatType) {
        propertyValue = type
    }

    public convenience init (_ type: State<FloatType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, FloatType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether or not a box should float
    public static var float: PropertyKey<FloatType> { "float".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether or not a box should float
    public typealias Float = FloatProperty
}

extension CSSRulable {
    /// Specifies whether or not a box should float
    public func float(_ type: FloatType) -> Self {
        _addProperty(.float, type)
        return self
    }

    /// Specifies whether or not a box should float
    public func float(_ type: State<FloatType>) -> Self {
        _addProperty(FloatProperty(type))
        return self
    }

    /// Specifies whether or not a box should float
    public func float<V>(_ type: ExpressableState<V, FloatType>) -> Self {
        float(type.unwrap())
    }
}

// MARK: - FontFamilyProperty

/// Specifies the font family for text
///
/// ```html
/// font-family: Georgia, serif;
/// font-family: "Gill Sans", sans-serif;
/// font-family: sans-serif;
/// font-family: serif;
/// font-family: cursive;
/// font-family: system-ui;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-family)
public class FontFamilyProperty: _Property {
    public var propertyKey: PropertyKey<FontFamilyValue> { .fontFamily }
    public var propertyValue: FontFamilyValue
    var _content = _PropertyContent<FontFamilyValue>()

    public init (_ types: [FontFamilyType]) {
        propertyValue = .init(types)
    }

    public convenience init (_ types: FontFamilyType...) {
        self.init(types)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontFamilyType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontFamilyType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }
}

extension PropertyKey {
    /// Specifies the font family for text
    public static var fontFamily: PropertyKey<FontFamilyValue> { "font-family".propertyKey() }
}

public class FontFamilyValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (_ type: [FontFamilyType]) {
        value = type.map { $0.value }.joined(separator: ", ")
    }

    public convenience init (_ type: FontFamilyType...) {
        self.init(type)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontFamilyType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.map { $0.value }.joined(separator: ", ")
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontFamilyType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.value
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Specifies the font family for text
    public typealias FontFamily = FontFamilyProperty
}

extension CSSRulable {
    /// Specifies the font family for text
    public func fontFamily(_ types: [FontFamilyType]) -> Self {
        _addProperty(FontFamilyProperty(types))
        return self
    }

    /// Specifies the font family for text
    public func fontFamily(_ types: FontFamilyType...) -> Self {
        fontFamily(types)
    }

    /// Specifies the font family for text
    public func fontFamily<V>(_ types: V) -> Self where V: StateConvertible, V.Value == [FontFamilyType] {
        _addProperty(FontFamilyProperty(types))
        return self
    }

    /// Specifies the font family for text
    public func fontFamily<V>(_ types: V) -> Self where V: StateConvertible, V.Value == FontFamilyType {
        _addProperty(FontFamilyProperty(types))
        return self
    }
}

// MARK: - FontKerningProperty

/// Controls the usage of the kerning information (how letters are spaced)
///
/// ```html
/// font-kerning: auto;
/// font-kerning: normal;
/// font-kerning: none;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-kerning)
public class FontKerningProperty: _Property {
    public var propertyKey: PropertyKey<FontKerningType> { .fontKerning }
    public var propertyValue: FontKerningType
    var _content = _PropertyContent<FontKerningType>()

    public init (_ type: FontKerningType) {
        propertyValue = type
    }

    public convenience init (_ type: State<FontKerningType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, FontKerningType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Controls the usage of the kerning information (how letters are spaced)
    public static var fontKerning: PropertyKey<FontKerningType> { "font-kerning".propertyKey() }
}

extension Stylesheet {
    /// Controls the usage of the kerning information (how letters are spaced)
    public typealias FontKerning = FontKerningProperty
}

extension CSSRulable {
    /// Controls the usage of the kerning information (how letters are spaced)
    public func fontKerning(_ type: FontKerningType) -> Self {
        _addProperty(.fontKerning, type)
        return self
    }

    /// Controls the usage of the kerning information (how letters are spaced)
    public func fontKerning(_ type: State<FontKerningType>) -> Self {
        _addProperty(FontKerningProperty(type))
        return self
    }

    /// Controls the usage of the kerning information (how letters are spaced)
    public func fontKerning<V>(_ type: ExpressableState<V, FontKerningType>) -> Self {
        fontKerning(type.unwrap())
    }
}

// MARK: - FontLanguageOverrideProperty

/// Controls the usage of language-specific glyphs in a typeface
///
/// ```html
/// /* Keyword value */
/// font-language-override: normal;
///
/// /* <string> values */
/// font-language-override: "ENG";  /* Use English glyphs */
/// font-language-override: "TRK";  /* Use Turkish glyphs */
///
/// /* Global values */
/// font-language-override: initial;
/// font-language-override: inherit;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-language-override)
public class FontLanguageOverrideProperty: _Property {
    public var propertyKey: PropertyKey<FontLanguageOverrideType> { .fontLanguageOverride }
    public var propertyValue: FontLanguageOverrideType
    var _content = _PropertyContent<FontLanguageOverrideType>()

    public init (_ type: FontLanguageOverrideType) {
        propertyValue = type
    }

    public convenience init (_ type: State<FontLanguageOverrideType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, FontLanguageOverrideType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Controls the usage of language-specific glyphs in a typeface
    public static var fontLanguageOverride: PropertyKey<FontLanguageOverrideType> { "font-language-override".propertyKey() }
}

extension Stylesheet {
    /// Controls the usage of language-specific glyphs in a typeface
    public typealias FontLanguageOverride = FontLanguageOverrideProperty
}

extension CSSRulable {
    /// Controls the usage of language-specific glyphs in a typeface
    public func fontLanguageOverride(_ type: FontLanguageOverrideType) -> Self {
        _addProperty(.fontLanguageOverride, type)
        return self
    }

    /// Controls the usage of language-specific glyphs in a typeface
    public func fontLanguageOverride(_ type: State<FontLanguageOverrideType>) -> Self {
        _addProperty(FontLanguageOverrideProperty(type))
        return self
    }

    /// Controls the usage of language-specific glyphs in a typeface
    public func fontLanguageOverride<V>(_ type: ExpressableState<V, FontLanguageOverrideType>) -> Self {
        fontLanguageOverride(type.unwrap())
    }
}

// MARK: - FontProperty

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

    public init (_ type: FontType) {
        propertyValue = .init(type)
    }

    public convenience init <T>(_ type: T) where T: StateConvertible, T.Value == FontType {
        let type = type.stateValue
        self.init(type.wrappedValue)
        type.listen {
            self._changed(to: .init($0))
        }
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
    /// A shorthand property for the font-style, font-variant, font-weight, font-size/line-height, and the font-family properties
    public static var font: PropertyKey<FontValue> { "font".propertyKey() }
}

public class FontValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (_ type: FontType) {
        value = type.value
    }

    public convenience init <T>(_ type: T) where T: StateConvertible, T.Value == FontType {
        let type = type.stateValue
        self.init(type.wrappedValue)
        type.listen {
            self.value = $0.value
            self._changeHandler()
        }
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

extension Stylesheet {
    /// A shorthand property for the font-style, font-variant, font-weight, font-size/line-height, and the font-family properties
    public typealias Font = FontProperty
}

extension CSSRulable {
    /// A shorthand property for the font-style, font-variant, font-weight, font-size/line-height, and the font-family properties
    public func font(_ type: FontType) -> Self {
        _addProperty(FontProperty(type))
        return self
    }

    /// A shorthand property for the font-style, font-variant, font-weight, font-size/line-height, and the font-family properties
    public func font<T>(_ type: T) -> Self where T: StateConvertible, T.Value == FontType {
        _addProperty(FontProperty(type))
        return self
    }

    /// A shorthand property for the font-style, font-variant, font-weight, font-size/line-height, and the font-family properties
    public func font<F: UnitValuable, L: UnitValuable>(
        style: FontStyleType? = nil,
        variant: FontVariantType? = nil,
        weight: FontWeightType? = nil,
        fontSize: F? = nil,
        lineHeight: L? = nil,
        fontFamily: [FontFamilyType]? = nil) -> Self {
        _addProperty(FontProperty(style: style, variant: variant, weight: weight, fontSize: fontSize, lineHeight: lineHeight, fontFamily: fontFamily))
        return self
    }
}

// MARK: - FontSizeAdjustProperty

/// Preserves the readability of text when font fallback occurs
///
/// ```html
/// font-size-adjust: 0.5;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-size-adjust)
public class FontSizeAdjustProperty: _Property {
    public var propertyKey: PropertyKey<FontSizeAdjustValue> { .fontSizeAdjust }
    public var propertyValue: FontSizeAdjustValue
    var _content = _PropertyContent<FontSizeAdjustValue>()

    public init (_ type: FontSizeAdjustType) {
        propertyValue = .init(type)
    }

    public convenience init <T>(_ type: T) where T: StateConvertible, T.Value == FontSizeAdjustType {
        let type = type.stateValue
        self.init(type.wrappedValue)
        type.listen {
            self._changed(to: .init($0))
        }
    }

    public init (_ numeric: NumericValue) {
        propertyValue = .init(numeric)
    }

    public convenience init <T>(_ numeric: T) where T: StateConvertible, T.Value == NumericValue {
        let numeric = numeric.stateValue
        self.init(numeric.wrappedValue)
        numeric.listen {
            self._changed(to: .init($0))
        }
    }
}

extension PropertyKey {
    /// Preserves the readability of text when font fallback occurs
    public static var fontSizeAdjust: PropertyKey<FontSizeAdjustValue> { "font-size-adjust".propertyKey() }
}

public class FontSizeAdjustValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (_ type: FontSizeAdjustType) {
        value = type.value
    }

    public convenience init <T>(_ type: T) where T: StateConvertible, T.Value == FontSizeAdjustType {
        let type = type.stateValue
        self.init(type.wrappedValue)
        type.listen {
            self.value = $0.value
            self._changeHandler()
        }
    }

    public init (_ numeric: NumericValue) {
        value = numeric.numericValue
    }

    public convenience init <T>(_ numeric: T) where T: StateConvertible, T.Value == NumericValue {
        let numeric = numeric.stateValue
        self.init(numeric.wrappedValue)
        numeric.listen {
            self.value = $0.numericValue
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Preserves the readability of text when font fallback occurs
    public typealias FontSizeAdjust = FontSizeAdjustProperty
}

extension CSSRulable {
    /// Preserves the readability of text when font fallback occurs
    public func fontSizeAdjust(_ type: FontSizeAdjustType) -> Self {
        _addProperty(FontSizeAdjustProperty(type))
        return self
    }

    /// Preserves the readability of text when font fallback occurs
    public func fontSizeAdjust<T>(_ type: T) -> Self where T: StateConvertible, T.Value == FontSizeAdjustType {
        _addProperty(FontSizeAdjustProperty(type))
        return self
    }

    /// Preserves the readability of text when font fallback occurs
    public func fontSizeAdjust(_ numeric: NumericValue) -> Self {
        _addProperty(FontSizeAdjustProperty(numeric))
        return self
    }

    /// Preserves the readability of text when font fallback occurs
    public func fontSizeAdjust<T>(_ numeric: T) -> Self where T: StateConvertible, T.Value == NumericValue {
        _addProperty(FontSizeAdjustProperty(numeric))
        return self
    }
}

// MARK: - FontSizeProperty

/// Specifies the font size of text
///
/// ```html
/// /* <absolute-size> values */
/// font-size: xx-small;
/// font-size: x-small;
/// font-size: small;
/// font-size: medium;
/// font-size: large;
/// font-size: x-large;
/// font-size: xx-large;
/// font-size: xxx-large;
///
/// /* <relative-size> values */
/// font-size: smaller;
/// font-size: larger;
///
/// /* <length> values */
/// font-size: 12px;
/// font-size: 0.8em;
///
/// /* <percentage> values */
/// font-size: 80%;
///
/// /* Global values */
/// font-size: inherit;
/// font-size: initial;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-size)
public class FontSizeProperty: _Property {
    public var propertyKey: PropertyKey<FontSizeType> { .fontSize }
    public var propertyValue: FontSizeType
    var _content = _PropertyContent<FontSizeType>()

    public init (_ type: FontSizeType) {
        propertyValue = type
    }

    public convenience init (_ type: State<FontSizeType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, FontSizeType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the font size of text
    public static var fontSize: PropertyKey<FontSizeType> { "font-size".propertyKey() }
}

extension Stylesheet {
    /// Specifies the font size of text
    public typealias FontSize = FontSizeProperty
}

extension CSSRulable {
    /// Specifies the font size of text
    public func fontSize(_ type: FontSizeType) -> Self {
        _addProperty(.fontSize, type)
        return self
    }

    /// Specifies the font size of text
    public func fontSize(_ type: State<FontSizeType>) -> Self {
        _addProperty(FontSizeProperty(type))
        return self
    }

    /// Specifies the font size of text
    public func fontSize<V>(_ type: ExpressableState<V, FontSizeType>) -> Self {
        fontSize(type.unwrap())
    }

    /// Specifies the font size of text
    public func fontSize<L: UnitValuable>(_ length: L) -> Self {
        fontSize(.length(length))
    }

    /// Specifies the font size of text
    public func fontSize<L: UnitValuable>(_ type: State<L>) -> Self {
        fontSize(type.map { .length($0) })
    }

    /// Specifies the font size of text
    public func fontSize<V, L: UnitValuable>(_ type: ExpressableState<V, L>) -> Self {
        fontSize(type.unwrap())
    }
}

// MARK: - FontStretchProperty

/// Selects a normal, condensed, or expanded face from a font family
///
/// ```html
/// /* Keyword values */
/// font-stretch: ultra-condensed;
/// font-stretch: extra-condensed;
/// font-stretch: condensed;
/// font-stretch: semi-condensed;
/// font-stretch: normal;
/// font-stretch: semi-expanded;
/// font-stretch: expanded;
/// font-stretch: extra-expanded;
/// font-stretch: ultra-expanded;
///
/// /* Percentage values */
/// font-stretch: 50%;
/// font-stretch: 100%;
/// font-stretch: 200%;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-stretch)
public class FontStretchProperty: _Property {
    public var propertyKey: PropertyKey<FontStretchType> { .fontStretch }
    public var propertyValue: FontStretchType
    var _content = _PropertyContent<FontStretchType>()

    public init (_ type: FontStretchType) {
        propertyValue = type
    }

    public convenience init (_ type: State<FontStretchType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, FontStretchType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Selects a normal, condensed, or expanded face from a font family
    public static var fontStretch: PropertyKey<FontStretchType> { "font-stretch".propertyKey() }
}

extension Stylesheet {
    /// Selects a normal, condensed, or expanded face from a font family
    public typealias FontStretch = FontStretchProperty
}

extension CSSRulable {
    /// Selects a normal, condensed, or expanded face from a font family
    public func fontStretch(_ type: FontStretchType) -> Self {
        _addProperty(.fontStretch, type)
        return self
    }

    /// Selects a normal, condensed, or expanded face from a font family
    public func fontStretch(_ type: State<FontStretchType>) -> Self {
        _addProperty(FontStretchProperty(type))
        return self
    }

    /// Selects a normal, condensed, or expanded face from a font family
    public func fontStretch<V>(_ type: ExpressableState<V, FontStretchType>) -> Self {
        fontStretch(type.unwrap())
    }
}

// MARK: - FontStyleProperty

/// Specifies the font style for text
///
/// ```html
/// font-style: normal;
/// font-style: italic;
/// font-style: oblique;
/// font-style: oblique 10deg;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-style)
public class FontStyleProperty: _Property {
    public var propertyKey: PropertyKey<FontStyleType> { .fontStyle }
    public var propertyValue: FontStyleType
    var _content = _PropertyContent<FontStyleType>()

    public init (_ type: FontStyleType) {
        propertyValue = type
    }

    public convenience init (_ type: State<FontStyleType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, FontStyleType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the font style for text
    public static var fontStyle: PropertyKey<FontStyleType> { "font-style".propertyKey() }
}

extension Stylesheet {
    /// Specifies the font style for text
    public typealias FontStyle = FontStyleProperty
}

extension CSSRulable {
    /// Specifies the font style for text
    public func fontStyle(_ type: FontStyleType) -> Self {
        _addProperty(.fontStyle, type)
        return self
    }

    /// Specifies the font style for text
    public func fontStyle(_ type: State<FontStyleType>) -> Self {
        _addProperty(FontStyleProperty(type))
        return self
    }

    /// Specifies the font style for text
    public func fontStyle<V>(_ type: ExpressableState<V, FontStyleType>) -> Self {
        fontStyle(type.unwrap())
    }
}

// MARK: - FontSynthesisProperty

/// Controls which missing typefaces (bold or italic) may be synthesized by the browser
///
/// ```html
/// font-synthesis: weight style;
/// font-synthesis: none;
/// font-synthesis: weight;
/// font-synthesis: style;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-synthesis)
public class FontSynthesisProperty: _Property {
    public var propertyKey: PropertyKey<FontSynthesisType> { .fontSynthesis }
    public var propertyValue: FontSynthesisType
    var _content = _PropertyContent<FontSynthesisType>()

    public init (_ type: FontSynthesisType) {
        propertyValue = type
    }

    public convenience init (_ type: State<FontSynthesisType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, FontSynthesisType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Controls which missing typefaces (bold or italic) may be synthesized by the browser
    public static var fontSynthesis: PropertyKey<FontSynthesisType> { "font-synthesis".propertyKey() }
}

extension Stylesheet {
    /// Controls which missing typefaces (bold or italic) may be synthesized by the browser
    public typealias FontSynthesis = FontSynthesisProperty
}

extension CSSRulable {
    /// Controls which missing typefaces (bold or italic) may be synthesized by the browser
    public func fontSynthesis(_ type: FontSynthesisType) -> Self {
        _addProperty(.fontSynthesis, type)
        return self
    }

    /// Controls which missing typefaces (bold or italic) may be synthesized by the browser
    public func fontSynthesis(_ type: State<FontSynthesisType>) -> Self {
        _addProperty(FontSynthesisProperty(type))
        return self
    }

    /// Controls which missing typefaces (bold or italic) may be synthesized by the browser
    public func fontSynthesis<V>(_ type: ExpressableState<V, FontSynthesisType>) -> Self {
        fontSynthesis(type.unwrap())
    }
}

// MARK: - FontVariantAlternatesProperty

/// Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
///
/// ```html
/// /* Keyword values */
/// font-variant-alternates: normal;
/// font-variant-alternates: historical-forms;
///
/// /* Functional notation values */
/// font-variant-alternates: stylistic(user-defined-ident);
/// font-variant-alternates: styleset(user-defined-ident);
/// font-variant-alternates: character-variant(user-defined-ident);
/// font-variant-alternates: swash(user-defined-ident);
/// font-variant-alternates: ornaments(user-defined-ident);
/// font-variant-alternates: annotation(user-defined-ident);
/// font-variant-alternates: swash(ident1) annotation(ident2);
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant-alternates)
public class FontVariantAlternatesProperty: _Property {
    public var propertyKey: PropertyKey<FontVariantAlternatesValue> { .fontVariantAlternates }
    public var propertyValue: FontVariantAlternatesValue
    var _content = _PropertyContent<FontVariantAlternatesValue>()

    public init (_ types: [FontVariantAlternatesType]) {
        propertyValue = .init(types)
    }

    public convenience init (_ types: FontVariantAlternatesType...) {
        self.init(types)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontVariantAlternatesType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontVariantAlternatesType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }
}

extension PropertyKey {
    /// Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
    public static var fontVariantAlternates: PropertyKey<FontVariantAlternatesValue> { "font-variant-alternates".propertyKey() }
}

public class FontVariantAlternatesValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (_ type: [FontVariantAlternatesType]) {
        value = type.map { $0.value }.joined(separator: " ")
    }

    public convenience init (_ type: FontVariantAlternatesType...) {
        self.init(type)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontVariantAlternatesType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.map { $0.value }.joined(separator: " ")
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontVariantAlternatesType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.value
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
    public typealias FontVariantAlternates = FontVariantAlternatesProperty
}

extension CSSRulable {
    /// Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
    public func fontVariantAlternates(_ types: [FontVariantAlternatesType]) -> Self {
        _addProperty(FontVariantAlternatesProperty(types))
        return self
    }

    /// Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
    public func fontVariantAlternates(_ types: FontVariantAlternatesType...) -> Self {
        fontVariantAlternates(types)
    }

    /// Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
    public func fontVariantAlternates<V>(_ types: V) -> Self where V: StateConvertible, V.Value == [FontVariantAlternatesType] {
        _addProperty(FontVariantAlternatesProperty(types))
        return self
    }

    /// Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
    public func fontVariantAlternates<V>(_ types: V) -> Self where V: StateConvertible, V.Value == FontVariantAlternatesType {
        _addProperty(FontVariantAlternatesProperty(types))
        return self
    }
}

// MARK: - FontVariantCapsProperty

/// Controls the usage of alternate glyphs for capital letters
///
/// ```html
/// font-variant-caps: normal;
/// font-variant-caps: small-caps;
/// font-variant-caps: all-small-caps;
/// font-variant-caps: petite-caps;
/// font-variant-caps: all-petite-caps;
/// font-variant-caps: unicase;
/// font-variant-caps: titling-caps;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant-caps)
public class FontVariantCapsProperty: _Property {
    public var propertyKey: PropertyKey<FontVariantCapsValue> { .fontVariantCaps }
    public var propertyValue: FontVariantCapsValue
    var _content = _PropertyContent<FontVariantCapsValue>()

    public init (_ types: [FontVariantCapsType]) {
        propertyValue = .init(types)
    }

    public convenience init (_ types: FontVariantCapsType...) {
        self.init(types)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontVariantCapsType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontVariantCapsType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }
}

extension PropertyKey {
    /// Controls the usage of alternate glyphs for capital letters
    public static var fontVariantCaps: PropertyKey<FontVariantCapsValue> { "font-variant-caps".propertyKey() }
}

public class FontVariantCapsValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (_ type: [FontVariantCapsType]) {
        value = type.map { $0.value }.joined(separator: " ")
    }

    public convenience init (_ type: FontVariantCapsType...) {
        self.init(type)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontVariantCapsType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.map { $0.value }.joined(separator: " ")
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontVariantCapsType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.value
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Controls the usage of alternate glyphs for capital letters
    public typealias FontVariantCaps = FontVariantCapsProperty
}

extension CSSRulable {
    /// Controls the usage of alternate glyphs for capital letters
    public func fontVariantCaps(_ types: [FontVariantCapsType]) -> Self {
        _addProperty(FontVariantCapsProperty(types))
        return self
    }

    /// Controls the usage of alternate glyphs for capital letters
    public func fontVariantCaps(_ types: FontVariantCapsType...) -> Self {
        fontVariantCaps(types)
    }

    /// Controls the usage of alternate glyphs for capital letters
    public func fontVariantCaps<V>(_ types: V) -> Self where V: StateConvertible, V.Value == [FontVariantCapsType] {
        _addProperty(FontVariantCapsProperty(types))
        return self
    }

    /// Controls the usage of alternate glyphs for capital letters
    public func fontVariantCaps<V>(_ types: V) -> Self where V: StateConvertible, V.Value == FontVariantCapsType {
        _addProperty(FontVariantCapsProperty(types))
        return self
    }
}

// MARK: - FontVariantEastAsianProperty

/// Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese)
///
/// ```html
/// font-variant-east-asian: normal;
/// font-variant-east-asian: ruby;
/// font-variant-east-asian: jis78;              /* <east-asian-variant-values> */
/// font-variant-east-asian: jis83;              /* <east-asian-variant-values> */
/// font-variant-east-asian: jis90;              /* <east-asian-variant-values> */
/// font-variant-east-asian: jis04;              /* <east-asian-variant-values> */
/// font-variant-east-asian: simplified;         /* <east-asian-variant-values> */
/// font-variant-east-asian: traditional;        /* <east-asian-variant-values> */
/// font-variant-east-asian: full-width;         /* <east-asian-width-values> */
/// font-variant-east-asian: proportional-width; /* <east-asian-width-values> */
/// font-variant-east-asian: ruby full-width jis83;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant-east-asian)
public class FontVariantEastAsianProperty: _Property {
    public var propertyKey: PropertyKey<FontVariantEastAsianValue> { .fontVariantEastAsian }
    public var propertyValue: FontVariantEastAsianValue
    var _content = _PropertyContent<FontVariantEastAsianValue>()

    public init (_ types: [FontVariantEastAsianType]) {
        propertyValue = .init(types)
    }

    public convenience init (_ types: FontVariantEastAsianType...) {
        self.init(types)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontVariantEastAsianType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontVariantEastAsianType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }
}

extension PropertyKey {
    /// Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese)
    public static var fontVariantEastAsian: PropertyKey<FontVariantEastAsianValue> { "font-variant-east-asian".propertyKey() }
}

public class FontVariantEastAsianValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (_ type: [FontVariantEastAsianType]) {
        value = type.map { $0.value }.joined(separator: " ")
    }

    public convenience init (_ type: FontVariantEastAsianType...) {
        self.init(type)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontVariantEastAsianType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.map { $0.value }.joined(separator: " ")
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontVariantEastAsianType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.value
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese)
    public typealias FontVariantEastAsian = FontVariantEastAsianProperty
}

extension CSSRulable {
    /// Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese)
    public func fontVariantEastAsian(_ types: [FontVariantEastAsianType]) -> Self {
        _addProperty(FontVariantEastAsianProperty(types))
        return self
    }

    /// Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese)
    public func fontVariantEastAsian(_ types: FontVariantEastAsianType...) -> Self {
        fontVariantEastAsian(types)
    }

    /// Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese)
    public func fontVariantEastAsian<V>(_ types: V) -> Self where V: StateConvertible, V.Value == [FontVariantEastAsianType] {
        _addProperty(FontVariantEastAsianProperty(types))
        return self
    }

    /// Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese)
    public func fontVariantEastAsian<V>(_ types: V) -> Self where V: StateConvertible, V.Value == FontVariantEastAsianType {
        _addProperty(FontVariantEastAsianProperty(types))
        return self
    }
}

// MARK: - FontVariantLigaturesProperty

/// Controls which ligatures and contextual forms are used in textual content of the elements it applies to
///
/// ```html
/// font-variant-ligatures: normal;
/// font-variant-ligatures: none;
/// font-variant-ligatures: common-ligatures;           /* <common-lig-values> */
/// font-variant-ligatures: no-common-ligatures;        /* <common-lig-values> */
/// font-variant-ligatures: discretionary-ligatures;    /* <discretionary-lig-values> */
/// font-variant-ligatures: no-discretionary-ligatures; /* <discretionary-lig-values> */
/// font-variant-ligatures: historical-ligatures;       /* <historical-lig-values> */
/// font-variant-ligatures: no-historical-ligatures;    /* <historical-lig-values> */
/// font-variant-ligatures: contextual;                 /* <contextual-alt-values> */
/// font-variant-ligatures: no-contextual;              /* <contextual-alt-values> */
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant-ligatures)
public class FontVariantLigaturesProperty: _Property {
    public var propertyKey: PropertyKey<FontVariantLigaturesValue> { .fontVariantLigatures }
    public var propertyValue: FontVariantLigaturesValue
    var _content = _PropertyContent<FontVariantLigaturesValue>()

    public init (_ types: [FontVariantLigaturesType]) {
        propertyValue = .init(types)
    }

    public convenience init (_ types: FontVariantLigaturesType...) {
        self.init(types)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontVariantLigaturesType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontVariantLigaturesType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }
}

extension PropertyKey {
    /// Controls which ligatures and contextual forms are used in textual content of the elements it applies to
    public static var fontVariantLigatures: PropertyKey<FontVariantLigaturesValue> { "font-variant-ligatures".propertyKey() }
}

public class FontVariantLigaturesValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (_ type: [FontVariantLigaturesType]) {
        value = type.map { $0.value }.joined(separator: " ")
    }

    public convenience init (_ type: FontVariantLigaturesType...) {
        self.init(type)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontVariantLigaturesType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.map { $0.value }.joined(separator: " ")
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontVariantLigaturesType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.value
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Controls which ligatures and contextual forms are used in textual content of the elements it applies to
    public typealias FontVariantLigatures = FontVariantLigaturesProperty
}

extension CSSRulable {
    /// Controls which ligatures and contextual forms are used in textual content of the elements it applies to
    public func fontVariantLigatures(_ types: [FontVariantLigaturesType]) -> Self {
        _addProperty(FontVariantLigaturesProperty(types))
        return self
    }

    /// Controls which ligatures and contextual forms are used in textual content of the elements it applies to
    public func fontVariantLigatures(_ types: FontVariantLigaturesType...) -> Self {
        fontVariantLigatures(types)
    }

    /// Controls which ligatures and contextual forms are used in textual content of the elements it applies to
    public func fontVariantLigatures<V>(_ types: V) -> Self where V: StateConvertible, V.Value == [FontVariantLigaturesType] {
        _addProperty(FontVariantLigaturesProperty(types))
        return self
    }

    /// Controls which ligatures and contextual forms are used in textual content of the elements it applies to
    public func fontVariantLigatures<V>(_ types: V) -> Self where V: StateConvertible, V.Value == FontVariantLigaturesType {
        _addProperty(FontVariantLigaturesProperty(types))
        return self
    }
}

// MARK: - FontVariantNumericProperty

/// Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers
///
/// ```html
/// font-variant-numeric: normal;
/// font-variant-numeric: ordinal;
/// font-variant-numeric: slashed-zero;
/// font-variant-numeric: lining-nums;         /* <numeric-figure-values> */
/// font-variant-numeric: oldstyle-nums;       /* <numeric-figure-values> */
/// font-variant-numeric: proportional-nums;   /* <numeric-spacing-values> */
/// font-variant-numeric: tabular-nums;        /* <numeric-spacing-values> */
/// font-variant-numeric: diagonal-fractions;  /* <numeric-fraction-values> */
/// font-variant-numeric: stacked-fractions;   /* <numeric-fraction-values> */
/// font-variant-numeric: oldstyle-nums stacked-fractions;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant-numeric)
public class FontVariantNumericProperty: _Property {
    public var propertyKey: PropertyKey<FontVariantNumericValue> { .fontVariantNumeric }
    public var propertyValue: FontVariantNumericValue
    var _content = _PropertyContent<FontVariantNumericValue>()

    public init (_ types: [FontVariantNumericType]) {
        propertyValue = .init(types)
    }

    public convenience init (_ types: FontVariantNumericType...) {
        self.init(types)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontVariantNumericType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontVariantNumericType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }
}

extension PropertyKey {
    /// Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers
    public static var fontVariantNumeric: PropertyKey<FontVariantNumericValue> { "font-variant-numeric".propertyKey() }
}

public class FontVariantNumericValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (_ type: [FontVariantNumericType]) {
        value = type.map { $0.value }.joined(separator: " ")
    }

    public convenience init (_ type: FontVariantNumericType...) {
        self.init(type)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontVariantNumericType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.map { $0.value }.joined(separator: " ")
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontVariantNumericType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.value
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers
    public typealias FontVariantNumeric = FontVariantNumericProperty
}

extension CSSRulable {
    /// Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers
    public func fontVariantNumeric(_ types: [FontVariantNumericType]) -> Self {
        _addProperty(FontVariantNumericProperty(types))
        return self
    }

    /// Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers
    public func fontVariantNumeric(_ types: FontVariantNumericType...) -> Self {
        fontVariantNumeric(types)
    }

    /// Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers
    public func fontVariantNumeric<V>(_ types: V) -> Self where V: StateConvertible, V.Value == [FontVariantNumericType] {
        _addProperty(FontVariantNumericProperty(types))
        return self
    }

    /// Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers
    public func fontVariantNumeric<V>(_ types: V) -> Self where V: StateConvertible, V.Value == FontVariantNumericType {
        _addProperty(FontVariantNumericProperty(types))
        return self
    }
}

// MARK: - FontVariantPositionProperty

/// Controls the usage of alternate glyphs of smaller size positioned as superscript or subscript regarding the baseline of the font
///
/// ```html
/// font-variant-position: normal;
/// font-variant-position: sub;
/// font-variant-position: super;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant-position)
public class FontVariantPositionProperty: _Property {
    public var propertyKey: PropertyKey<FontVariantPositionType> { .fontVariantPosition }
    public var propertyValue: FontVariantPositionType
    var _content = _PropertyContent<FontVariantPositionType>()

    public init (_ type: FontVariantPositionType) {
        propertyValue = type
    }

    public convenience init (_ type: State<FontVariantPositionType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, FontVariantPositionType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Controls the usage of alternate glyphs of smaller size positioned as superscript or subscript regarding the baseline of the font
    public static var fontVariantPosition: PropertyKey<FontVariantPositionType> { "font-variant-position".propertyKey() }
}

extension Stylesheet {
    /// Controls the usage of alternate glyphs of smaller size positioned as superscript or subscript regarding the baseline of the font
    public typealias FontVariantPosition = FontVariantPositionProperty
}

extension CSSRulable {
    /// Controls the usage of alternate glyphs of smaller size positioned as superscript or subscript regarding the baseline of the font
    public func fontVariantPosition(_ type: FontVariantPositionType) -> Self {
        _addProperty(.fontVariantPosition, type)
        return self
    }

    /// Controls the usage of alternate glyphs of smaller size positioned as superscript or subscript regarding the baseline of the font
    public func fontVariantPosition(_ type: State<FontVariantPositionType>) -> Self {
        _addProperty(FontVariantPositionProperty(type))
        return self
    }

    /// Controls the usage of alternate glyphs of smaller size positioned as superscript or subscript regarding the baseline of the font
    public func fontVariantPosition<V>(_ type: ExpressableState<V, FontVariantPositionType>) -> Self {
        fontVariantPosition(type.unwrap())
    }
}

// MARK: - FontVariantProperty

/// Specifies whether or not a text should be displayed in a small-caps font
///
/// ```html
/// font-variant: small-caps;
/// font-variant: common-ligatures small-caps;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant)
public class FontVariantProperty: _Property {
    public var propertyKey: PropertyKey<FontVariantValue> { .fontVariant }
    public var propertyValue: FontVariantValue
    var _content = _PropertyContent<FontVariantValue>()

    public init (_ types: [FontVariantType]) {
        propertyValue = .init(types)
    }

    public convenience init (_ types: FontVariantType...) {
        self.init(types)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontVariantType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontVariantType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self._changed(to: .init($0))
        }
    }
}

extension PropertyKey {
    /// Specifies whether or not a text should be displayed in a small-caps font
    public static var fontVariant: PropertyKey<FontVariantValue> { "font-variant".propertyKey() }
}

public class FontVariantValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (_ type: [FontVariantType]) {
        value = type.map { $0.value }.joined(separator: " ")
    }

    public convenience init (_ type: FontVariantType...) {
        self.init(type)
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == [FontVariantType] {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.map { $0.value }.joined(separator: " ")
        }
    }

    public convenience init <V>(_ types: V) where V: StateConvertible, V.Value == FontVariantType {
        let types = types.stateValue
        self.init(types.wrappedValue)
        types.listen {
            self.value = $0.value
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Specifies whether or not a text should be displayed in a small-caps font
    public typealias FontVariant = FontVariantProperty
}

extension CSSRulable {
    /// Specifies whether or not a text should be displayed in a small-caps font
    public func fontVariant(_ types: [FontVariantType]) -> Self {
        _addProperty(FontVariantProperty(types))
        return self
    }

    /// Specifies whether or not a text should be displayed in a small-caps font
    public func fontVariant(_ types: FontVariantType...) -> Self {
        fontVariant(types)
    }

    /// Specifies whether or not a text should be displayed in a small-caps font
    public func fontVariant<V>(_ types: V) -> Self where V: StateConvertible, V.Value == [FontVariantType] {
        _addProperty(FontVariantProperty(types))
        return self
    }

    /// Specifies whether or not a text should be displayed in a small-caps font
    public func fontVariant<V>(_ types: V) -> Self where V: StateConvertible, V.Value == FontVariantType {
        _addProperty(FontVariantProperty(types))
        return self
    }
}

// MARK: - FontWeightProperty

/// Specifies the weight of a font
///
/// ```html
/// font-weight: normal;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_font_weight.asp)
public class FontWeightProperty: _Property {
    public var propertyKey: PropertyKey<FontWeightValue> { .fontWeight }
    public var propertyValue: FontWeightValue
    var _content = _PropertyContent<FontWeightValue>()

    public init (_ type: FontWeightType) {
        propertyValue = .init(type)
    }

    public init <F>(_ type: F) where F: StateConvertible, F.Value == FontWeightType {
        propertyValue = .init(type)
    }

    public init (_ n: Int) {
        propertyValue = .init(n)
    }

    public init <V>(_ n: V) where V: StateConvertible, V.Value == Int {
        propertyValue = .init(n)
    }
}

extension PropertyKey {
    /// Specifies the weight of a font
    public static var fontWeight: PropertyKey<FontWeightValue> { "font-weight".propertyKey() }
}

public class FontWeightValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (_ type: FontWeightType) {
        value = type.value
    }

    public convenience init <F>(_ type: F) where F: StateConvertible, F.Value == FontWeightType {
        let type = type.stateValue
        self.init(type.wrappedValue)
        type.listen {
            self.value = type.wrappedValue.value
            self._changeHandler()
        }
    }

    public init (_ n: Int) {
        value = "\(n)"
    }

    public convenience init <V>(_ n: V) where V: StateConvertible, V.Value == Int {
        let n = n.stateValue
        self.init(n.wrappedValue)
        n.listen {
            self.value = "\($0)"
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Specifies the weight of a font
    public typealias FontWeight = FontWeightProperty
}

extension CSSRulable {
    /// Specifies the weight of a font
    public func fontWeight(_ type: FontWeightType) -> Self {
        _addProperty(FontWeightProperty(type))
        return self
    }

    /// Specifies the weight of a font
    public func fontWeight<F>(_ type: F) -> Self where F: StateConvertible, F.Value == FontWeightType {
        _addProperty(FontWeightProperty(type))
        return self
    }

    /// Specifies the weight of a font
    public func fontWeight(_ n: Int) -> Self {
        _addProperty(FontWeightProperty(n))
        return self
    }

    /// Specifies the weight of a font
    public func fontWeight<V>(_ n: V) -> Self where V: StateConvertible, V.Value == Int {
        _addProperty(FontWeightProperty(n))
        return self
    }
}

// MARK: - GridAreaProperty

/// Either specifies a name for the grid item, or this property is a shorthand property
/// for the grid-row-start, grid-column-start, grid-row-end, and grid-column-end properties
///
/// ```html
/// grid-area: 2 / 1 / span 2 / span 3;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-area.asp)
public class GridAreaProperty: _Property {
    public var propertyKey: PropertyKey<GridAreaValue> { .gridArea }
    public var propertyValue: GridAreaValue
    var _content = _PropertyContent<GridAreaValue>()

    public init (rowStart: GridRowStartValue, columnStart: GridColumnStartValue, rowEnd: GridRowEndValue, columnEnd: GridColumnEndValue) {
        propertyValue = .init(rowStart: rowStart, columnStart: columnStart, rowEnd: rowEnd, columnEnd: columnEnd)
    }

    public init (_ area: String) {
        propertyValue = .init(area)
    }

    public convenience init <S>(_ area: S) where S: StateConvertible, S.Value == String {
        let area = area.stateValue
        self.init(area.wrappedValue)
        area.listen {
            self._changed(to: .init($0))
        }
    }
}

extension PropertyKey {
    /// Either specifies a name for the grid item, or this property is a shorthand property
    /// for the grid-row-start, grid-column-start, grid-row-end, and grid-column-end properties
    public static var gridArea: PropertyKey<GridAreaValue> { "grid-area".propertyKey() }
}

public struct GridAreaValue: CustomStringConvertible {
    public let value: String

    public init (rowStart: GridRowStartValue, columnStart: GridColumnStartValue, rowEnd: GridRowEndValue, columnEnd: GridColumnEndValue) {
        value = rowStart.value + " / " + columnStart.value + " / " + rowEnd.value + " / " + columnEnd.value
    }

    public init (_ area: String) {
        value = area
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Either specifies a name for the grid item, or this property is a shorthand property
    /// for the grid-row-start, grid-column-start, grid-row-end, and grid-column-end properties
    public typealias GridArea = GridAreaProperty
}

extension CSSRulable {
    /// Either specifies a name for the grid item, or this property is a shorthand property
    /// for the grid-row-start, grid-column-start, grid-row-end, and grid-column-end properties
    public func gridArea(rowStart: GridRowStartValue, columnStart: GridColumnStartValue, rowEnd: GridRowEndValue, columnEnd: GridColumnEndValue) -> Self {
        _addProperty(GridAreaProperty(rowStart: rowStart, columnStart: columnStart, rowEnd: rowEnd, columnEnd: columnEnd))
        return self
    }

    /// Either specifies a name for the grid item, or this property is a shorthand property
    /// for the grid-row-start, grid-column-start, grid-row-end, and grid-column-end properties
    public func gridArea(_ area: String) -> Self {
        _addProperty(GridAreaProperty(area))
        return self
    }

    /// Either specifies a name for the grid item, or this property is a shorthand property
    /// for the grid-row-start, grid-column-start, grid-row-end, and grid-column-end properties
    public func gridArea<S>(_ area: S) -> Self where S: StateConvertible, S.Value == String {
        _addProperty(GridAreaProperty(area))
        return self
    }
}

// MARK: - GridAutoColumnsProperty

/// Specifies a default column size
///
/// ```html
/// grid-auto-columns: 50px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-auto-columns.asp)
/// [Learn even more](https://developer.mozilla.org/en-US/docs/Web/CSS/grid-auto-columns)
public class GridAutoColumnsProperty: _Property {
    public var propertyKey: PropertyKey<GridAutoColumnsValue> { .gridAutoColumns }
    public var propertyValue: GridAutoColumnsValue
    var _content = _PropertyContent<GridAutoColumnsValue>()

    public init (_ type: GridAutoColumnsType...) {
        propertyValue = .init(type)
    }

    public init (_ type: [GridAutoColumnsType]) {
        propertyValue = .init(type)
    }

    public convenience init (_ type: State<GridAutoColumnsType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: .init($0)) }
    }

    public convenience init (_ type: State<[GridAutoColumnsType]>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: .init($0)) }
    }

    public convenience init <V>(_ type: ExpressableState<V, [GridAutoColumnsType]>) {
        self.init(type.unwrap())
    }

    public convenience init <V>(_ type: ExpressableState<V, GridAutoColumnsType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies a default column size
    public static var gridAutoColumns: PropertyKey<GridAutoColumnsValue> { "grid-auto-columns".propertyKey() }
}

public struct GridAutoColumnsValue: CustomStringConvertible {
    public let value: String

    public init (_ type: GridAutoColumnsType...) {
        value = type.map { $0.value }.joined(separator: " ")
    }

    public init (_ type: [GridAutoColumnsType]) {
        value = type.map { $0.value }.joined(separator: " ")
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Specifies a default column size
    public typealias GridAutoColumns = GridAutoColumnsProperty
}

extension CSSRulable {
    /// Specifies a default column size
    public func gridAutoColumns(_ type: [GridAutoColumnsType]) -> Self {
        _addProperty(.gridAutoColumns, .init(type))
        return self
    }

    /// Specifies a default column size
    public func gridAutoColumns(_ type: GridAutoColumnsType...) -> Self {
        gridAutoColumns(type)
    }

    /// Specifies a default column size
    public func gridAutoColumns<U: UnitValuable>(_ type: [U]) -> Self {
        gridAutoColumns(type.map { .length($0) })
    }

    /// Specifies a default column size
    public func gridAutoColumns<U: UnitValuable>(_ type: U...) -> Self {
        gridAutoColumns(type.map { .length($0) })
    }

    /// Specifies a default column size
    public func gridAutoColumns(_ type: State<[GridAutoColumnsType]>) -> Self {
        _addProperty(GridAutoColumnsProperty(type))
        return self
    }

    /// Specifies a default column size
    public func gridAutoColumns<U: UnitValuable>(_ type: State<[U]>) -> Self {
        gridAutoColumns(type.map { $0.map { .length($0) } })
    }

    /// Specifies a default column size
    public func gridAutoColumns(_ type: State<GridAutoColumnsType>) -> Self {
        _addProperty(GridAutoColumnsProperty(type))
        return self
    }

    /// Specifies a default column size
    public func gridAutoColumns<U: UnitValuable>(_ type: State<U>) -> Self {
        gridAutoColumns(type.map { .length($0) })
    }

    /// Specifies a default column size
    public func gridAutoColumns<V>(_ type: ExpressableState<V, [GridAutoColumnsType]>) -> Self {
        gridAutoColumns(type.unwrap())
    }

    /// Specifies a default column size
    public func gridAutoColumns<V, U: UnitValuable>(_ type: ExpressableState<V, [U]>) -> Self {
        gridAutoColumns(type.unwrap())
    }

    /// Specifies a default column size
    public func gridAutoColumns<V>(_ type: ExpressableState<V, GridAutoColumnsType>) -> Self {
        gridAutoColumns(type.unwrap())
    }

    /// Specifies a default column size
    public func gridAutoColumns<V, U: UnitValuable>(_ type: ExpressableState<V, U>) -> Self {
        gridAutoColumns(type.unwrap())
    }
}

// MARK: - GridAutoFlowProperty

/// Specifies how auto-placed items are inserted in the grid
///
/// ```html
/// grid-auto-flow: column;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-auto-flow.asp)
public class GridAutoFlowProperty: _Property {
    public var propertyKey: PropertyKey<GridAutoFlowType> { .gridAutoFlow }
    public var propertyValue: GridAutoFlowType
    var _content = _PropertyContent<GridAutoFlowType>()

    public init (_ type: GridAutoFlowType) {
        propertyValue = type
    }

    public convenience init (_ type: State<GridAutoFlowType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, GridAutoFlowType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies how auto-placed items are inserted in the grid
    public static var gridAutoFlow: PropertyKey<GridAutoFlowType> { "grid-auto-flow".propertyKey() }
}

extension Stylesheet {
    /// Specifies how auto-placed items are inserted in the grid
    public typealias GridAutoFlow = GridAutoFlowProperty
}

extension CSSRulable {
    /// Specifies how auto-placed items are inserted in the grid
    public func gridAutoFlow(_ type: GridAutoFlowType) -> Self {
        _addProperty(.gridAutoFlow, type)
        return self
    }

    /// Specifies how auto-placed items are inserted in the grid
    public func gridAutoFlow(_ type: State<GridAutoFlowType>) -> Self {
        _addProperty(GridAutoFlowProperty(type))
        return self
    }

    /// Specifies how auto-placed items are inserted in the grid
    public func gridAutoFlow<V>(_ type: ExpressableState<V, GridAutoFlowType>) -> Self {
        gridAutoFlow(type.unwrap())
    }
}

// MARK: - GridAutoRowsProperty

/// Specifies a default row size
///
/// ```html
/// grid-auto-rows: 150px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-auto-rows.asp)
public class GridAutoRowsProperty: _Property {
    public var propertyKey: PropertyKey<GridAutoRowsType> { .gridAutoRows }
    public var propertyValue: GridAutoRowsType
    var _content = _PropertyContent<GridAutoRowsType>()

    public init (_ type: GridAutoRowsType) {
        propertyValue = type
    }

    public convenience init (_ type: State<GridAutoRowsType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, GridAutoRowsType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies a default row size
    public static var gridAutoRows: PropertyKey<GridAutoRowsType> { "grid-auto-rows".propertyKey() }
}

extension Stylesheet {
    /// Specifies a default row size
    public typealias GridAutoRows = GridAutoRowsProperty
}

extension CSSRulable {
    /// Specifies a default row size
    public func gridAutoRows(_ type: GridAutoRowsType) -> Self {
        _addProperty(.gridAutoRows, type)
        return self
    }

    /// Specifies a default row size
    public func gridAutoRows(_ type: State<GridAutoRowsType>) -> Self {
        _addProperty(GridAutoRowsProperty(type))
        return self
    }

    /// Specifies a default row size
    public func gridAutoRows<V>(_ type: ExpressableState<V, GridAutoRowsType>) -> Self {
        gridAutoRows(type.unwrap())
    }

    /// Specifies a default row size
    public func gridAutoRows<U: UnitValuable>(_ type: U) -> Self {
        gridAutoRows(.length(type))
    }

    /// Specifies a default row size
    public func gridAutoRows<U: UnitValuable>(_ type: State<U>) -> Self {
        gridAutoRows(type.map { .length($0) })
    }

    /// Specifies a default row size
    public func gridAutoRows<V, U: UnitValuable>(_ type: ExpressableState<V, U>) -> Self {
        gridAutoRows(type.unwrap())
    }
}

// MARK: - GridColumnEndProperty

/// Specifies where to end the grid item
///
/// ```html
/// grid-column-end: span 3;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-column-end.asp)
public class GridColumnEndProperty: _Property {
    public var propertyKey: PropertyKey<GridColumnEndValue> { .gridColumnEnd }
    public var propertyValue: GridColumnEndValue
    var _content = _PropertyContent<GridColumnEndValue>()

    // Means `auto`
    public init() {
        propertyValue = .auto
    }

    public init (columnLine: Int) {
        propertyValue = .columnLine(columnLine)
    }

    public init <V>(columnLine: V) where V: StateConvertible, V.Value == Int {
        propertyValue = .columnLine(columnLine)
    }

    public init (span n: Int) {
        propertyValue = .span(n)
    }

    public init <V>(span n: V) where V: StateConvertible, V.Value == Int {
        propertyValue = .span(n)
    }

    public static var auto: GridColumnEndValue { .init() }
    public static func columnLine(_ v: Int) -> GridColumnEndValue { .init(columnLine: v) }
    public static func columnLine<V>(_ v: V) -> GridColumnEndValue where V: StateConvertible, V.Value == Int { .init(columnLine: v) }
    public static func span(_ n: Int) -> GridColumnEndValue { .init(span: n) }
    public static func span<V>(_ n: V) -> GridColumnEndValue where V: StateConvertible, V.Value == Int { .init(span: n) }
}

extension PropertyKey {
    /// Specifies where to end the grid item
    public static var gridColumnEnd: PropertyKey<GridColumnEndValue> { "grid-column-end".propertyKey() }
}

public class GridColumnEndValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init() {
        value = "auto"
    }

    public init (columnLine: Int) {
        value = "\(columnLine)"
    }

    public convenience init <V>(columnLine: V) where V: StateConvertible, V.Value == Int {
        let columnLine = columnLine.stateValue
        self.init(columnLine: columnLine.wrappedValue)
        columnLine.listen {
            self.value = "\($0)"
            self._changeHandler()
        }
    }

    public init (span n: Int) {
        value = "span \(n)"
    }

    public convenience init <V>(span n: V) where V: StateConvertible, V.Value == Int {
        let n = n.stateValue
        self.init(span: n.wrappedValue)
        n.listen {
            self.value = "span \($0)"
            self._changeHandler()
        }
    }

    public static var auto: GridColumnEndValue { .init() }
    public static func columnLine(_ v: Int) -> GridColumnEndValue { .init(columnLine: v) }
    public static func columnLine<V>(_ v: V) -> GridColumnEndValue where V: StateConvertible, V.Value == Int { .init(columnLine: v) }
    public static func span(_ n: Int) -> GridColumnEndValue { .init(span: n) }
    public static func span<V>(_ n: V) -> GridColumnEndValue where V: StateConvertible, V.Value == Int { .init(span: n) }

    public var description: String { value }
}

extension Stylesheet {
    /// Specifies where to end the grid item
    public typealias GridColumnEnd = GridColumnEndProperty
}

extension CSSRulable {
    /// Specifies where to end the grid item
    public func gridColumnEnd() -> Self {
        _addProperty(GridColumnEndProperty())
        return self
    }

    /// Specifies where to end the grid item
    public func gridColumnEnd(columnLine: Int) -> Self {
        _addProperty(GridColumnEndProperty(columnLine: columnLine))
        return self
    }

    /// Specifies where to end the grid item
    public func gridColumnEnd<V>(columnLine: V) -> Self where V: StateConvertible, V.Value == Int {
        _addProperty(GridColumnEndProperty(columnLine: columnLine))
        return self
    }

    /// Specifies where to end the grid item
    public func gridColumnEnd(span n: Int) -> Self {
        _addProperty(GridColumnEndProperty(span: n))
        return self
    }

    /// Specifies where to end the grid item
    public func gridColumnEnd<V>(span n: V) -> Self where V: StateConvertible, V.Value == Int {
        _addProperty(GridColumnEndProperty(span: n))
        return self
    }
}

// MARK: - GridColumnGapProperty

/// Specifies the size of the gap between columns
///
/// ```html
/// grid-column-gap: 50px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-column-gap.asp)
public class GridColumnGapProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .gridColumnGap }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Specifies the size of the gap between columns
    public static var gridColumnGap: PropertyKey<UnitValue> { "grid-column-gap".propertyKey() }
}

extension Stylesheet {
    /// Specifies the size of the gap between columns
    public typealias GridColumnGap = GridColumnGapProperty
}

extension CSSRulable {
    /// Specifies the size of the gap between columns
    public func gridColumnGap<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.gridColumnGap, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Specifies the size of the gap between columns
    public func gridColumnGap<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(GridColumnGapProperty(value))
        return self
    }

    /// Specifies the size of the gap between columns
    public func gridColumnGap<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        gridColumnGap(value.unwrap())
    }

    // MARK: Extended

    /// Specifies the size of the gap between columns
    public func gridColumnGap(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.gridColumnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between columns
    public func gridColumnGap(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.gridColumnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between columns
    public func gridColumnGap(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.gridColumnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between columns
    public func gridColumnGap<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.gridColumnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between columns
    public func gridColumnGap<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.gridColumnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between columns
    public func gridColumnGap<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.gridColumnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between columns
    public func gridColumnGap<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.gridColumnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between columns
    public func gridColumnGap(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.gridColumnGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between columns
    public func gridColumnGap<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.gridColumnGap, UnitValue(value, unit))
        return self
    }
}

// MARK: - GridColumnProperty

/// A shorthand property for the grid-column-start and the grid-column-end properties
///
/// ```html
/// grid-column: 1 / span 2;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-column.asp)
public class GridColumnProperty: _Property {
    public var propertyKey: PropertyKey<GridColumnValue> { .gridColumn }
    public var propertyValue: GridColumnValue
    var _content = _PropertyContent<GridColumnValue>()

    public init (start: Int, end: Int) {
        propertyValue = GridColumnValue(start: start, end: end)
    }

    public init <S>(start: S, end: Int) where S: StateConvertible, S.Value == Int {
        propertyValue = GridColumnValue(start: start, end: end)
    }

    public init <E>(start: Int, end: E) where E: StateConvertible, E.Value == Int {
        propertyValue = GridColumnValue(start: start, end: end)
    }

    public init <S, E>(start: S, end: E) where S: StateConvertible, S.Value == Int, E: StateConvertible, E.Value == Int {
        propertyValue = GridColumnValue(start: start, end: end)
    }
}

extension PropertyKey {
    /// A shorthand property for the grid-column-start and the grid-column-end properties
    public static var gridColumn: PropertyKey<GridColumnValue> { "grid-column".propertyKey() }
}

public class GridColumnValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (start: Int, end: Int) {
        value = "\(start) / \(end)"
    }

    public convenience init <S>(start: S, end: Int) where S: StateConvertible, S.Value == Int {
        let start = start.stateValue
        self.init(start: start.wrappedValue, end: end)
        start.listen {
            self.value = "\($0) / \(end)"
            self._changeHandler()
        }
    }

    public convenience init <E>(start: Int, end: E) where E: StateConvertible, E.Value == Int {
        let end = end.stateValue
        self.init(start: start, end: end.wrappedValue)
        end.listen {
            self.value = "\(start) / \($0)"
            self._changeHandler()
        }
    }

    public convenience init <S, E>(start: S, end: E) where S: StateConvertible, S.Value == Int, E: StateConvertible, E.Value == Int {
        let start = start.stateValue
        let end = end.stateValue
        self.init(start: start.wrappedValue, end: end.wrappedValue)
        start.listen {
            self.value = "\($0) / \(end)"
            self._changeHandler()
        }
        end.listen {
            self.value = "\(start) / \($0)"
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for the grid-column-start and the grid-column-end properties
    public typealias GridColumn = GridColumnProperty
}

extension CSSRulable {
    /// A shorthand property for the grid-column-start and the grid-column-end properties
    public func gridColumn(start: Int, end: Int) -> Self {
        _addProperty(GridColumnProperty(start: start, end: end))
        return self
    }

    /// A shorthand property for the grid-column-start and the grid-column-end properties
    public func gridColumn<S>(start: S, end: Int) -> Self where S: StateConvertible, S.Value == Int {
        _addProperty(GridColumnProperty(start: start, end: end))
        return self
    }

    /// A shorthand property for the grid-column-start and the grid-column-end properties
    public func gridColumn<E>(start: Int, end: E) -> Self where E: StateConvertible, E.Value == Int {
        _addProperty(GridColumnProperty(start: start, end: end))
        return self
    }

    /// A shorthand property for the grid-column-start and the grid-column-end properties
    public func gridColumn<S, E>(start: S, end: E) -> Self where S: StateConvertible, S.Value == Int, E: StateConvertible, E.Value == Int {
        _addProperty(GridColumnProperty(start: start, end: end))
        return self
    }
}

// MARK: - GridColumnStartProperty

/// Specifies where to start the grid item
///
/// ```html
/// grid-column-start: 2;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-column-start.asp)
public class GridColumnStartProperty: _Property {
    public var propertyKey: PropertyKey<GridColumnStartValue> { .gridColumnStart }
    public var propertyValue: GridColumnStartValue
    var _content = _PropertyContent<GridColumnStartValue>()

    // Means `auto`
    public init() {
        propertyValue = .auto
    }

    public init (columnLine: Int) {
        propertyValue = .columnLine(columnLine)
    }

    public init <V>(columnLine: V) where V: StateConvertible, V.Value == Int {
        propertyValue = .columnLine(columnLine)
    }

    public init (span n: Int) {
        propertyValue = .span(n)
    }

    public init <V>(span n: V) where V: StateConvertible, V.Value == Int {
        propertyValue = .span(n)
    }

    public static var auto: GridColumnStartValue { .init() }
    public static func columnLine(_ v: Int) -> GridColumnStartValue { .init(columnLine: v) }
    public static func columnLine<V>(_ v: V) -> GridColumnStartValue where V: StateConvertible, V.Value == Int { .init(columnLine: v) }
    public static func span(_ n: Int) -> GridColumnStartValue { .init(span: n) }
    public static func span<V>(_ n: V) -> GridColumnStartValue where V: StateConvertible, V.Value == Int { .init(span: n) }
}

extension PropertyKey {
    /// Specifies where to start the grid item
    public static var gridColumnStart: PropertyKey<GridColumnStartValue> { "grid-column-start".propertyKey() }
}

public class GridColumnStartValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init() {
        value = "auto"
    }

    public init (columnLine: Int) {
        value = "\(columnLine)"
    }

    public convenience init <V>(columnLine: V) where V: StateConvertible, V.Value == Int {
        let columnLine = columnLine.stateValue
        self.init(columnLine: columnLine.wrappedValue)
        columnLine.listen {
            self.value = "\($0)"
            self._changeHandler()
        }
    }

    public init (span n: Int) {
        value = "span \(n)"
    }

    public convenience init <V>(span n: V) where V: StateConvertible, V.Value == Int {
        let n = n.stateValue
        self.init(span: n.wrappedValue)
        n.listen {
            self.value = "span \($0)"
            self._changeHandler()
        }
    }

    public static var auto: GridColumnStartValue { .init() }
    public static func columnLine(_ v: Int) -> GridColumnStartValue { .init(columnLine: v) }
    public static func columnLine<V>(_ v: V) -> GridColumnStartValue where V: StateConvertible, V.Value == Int { .init(columnLine: v) }
    public static func span(_ n: Int) -> GridColumnStartValue { .init(span: n) }
    public static func span<V>(_ n: V) -> GridColumnStartValue where V: StateConvertible, V.Value == Int { .init(span: n) }

    public var description: String { value }
}

extension Stylesheet {
    /// Specifies where to start the grid item
    public typealias GridColumnStart = GridColumnStartProperty
}

extension CSSRulable {
    /// Specifies where to start the grid item
    public func gridColumnStart() -> Self {
        _addProperty(GridColumnStartProperty())
        return self
    }

    /// Specifies where to start the grid item
    public func gridColumnStart(columnLine: Int) -> Self {
        _addProperty(GridColumnStartProperty(columnLine: columnLine))
        return self
    }

    /// Specifies where to start the grid item
    public func gridColumnStart<V>(columnLine: V) -> Self where V: StateConvertible, V.Value == Int {
        _addProperty(GridColumnStartProperty(columnLine: columnLine))
        return self
    }

    /// Specifies where to start the grid item
    public func gridColumnStart(span n: Int) -> Self {
        _addProperty(GridColumnStartProperty(span: n))
        return self
    }

    /// Specifies where to start the grid item
    public func gridColumnStart<V>(span n: V) -> Self where V: StateConvertible, V.Value == Int {
        _addProperty(GridColumnStartProperty(span: n))
        return self
    }
}

// MARK: - GridGapProperty

/// A shorthand property for the grid-row-gap and grid-column-gap properties
///
/// ```html
/// grid-gap: 50px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-gap.asp)
public class GridGapProperty: _Property {
    public var propertyKey: PropertyKey<GridGapValue> { .gridGap }
    public var propertyValue: GridGapValue
    var _content = _PropertyContent<GridGapValue>()

    public init<R: UnitValuable>(_ rowGap: R) {
        propertyValue = .init(rowGap)
    }

    public init<R>(_ rowGap: R) where R: StateConvertible, R.Value: UnitValuable {
        propertyValue = .init(rowGap)
    }

    public init<R: UnitValuable, C: UnitValuable>(_ rowGap: R, _ columnGap: C) {
        propertyValue = .init(rowGap, columnGap)
    }

    public init<R, C: UnitValuable>(_ rowGap: R, _ columnGap: C) where R: StateConvertible, R.Value: UnitValuable {
        propertyValue = .init(rowGap, columnGap)
    }

    public init<R: UnitValuable, C>(_ rowGap: R, _ columnGap: C) where C: StateConvertible, C.Value: UnitValuable {
        propertyValue = .init(rowGap, columnGap)
    }

    public init<R, C>(_ rowGap: R, _ columnGap: C) where R: StateConvertible, R.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        propertyValue = .init(rowGap, columnGap)
    }
}

extension PropertyKey {
    /// A shorthand property for the grid-row-gap and grid-column-gap properties
    public static var gridGap: PropertyKey<GridGapValue> { "grid-gap".propertyKey() }
}

public class GridGapValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init<R: UnitValuable>(_ rowGap: R) {
        value = rowGap.description
    }

    public convenience init<R>(_ rowGap: R) where R: StateConvertible, R.Value: UnitValuable {
        let rowGap = rowGap.stateValue
        self.init(rowGap.wrappedValue)
        rowGap.listen {
            self.value = $0.description
            self._changeHandler()
        }
    }

    public init<R: UnitValuable, C: UnitValuable>(_ rowGap: R, _ columnGap: C) {
        value = [rowGap.description, columnGap.description].joined(separator: " ")
    }

    public convenience init<R, C: UnitValuable>(_ rowGap: R, _ columnGap: C) where R: StateConvertible, R.Value: UnitValuable {
        let rowGap = rowGap.stateValue
        self.init(rowGap.wrappedValue, columnGap)
        rowGap.listen {
            self.value = [$0.description, columnGap.description].joined(separator: " ")
            self._changeHandler()
        }
    }

    public convenience init<R: UnitValuable, C>(_ rowGap: R, _ columnGap: C) where C: StateConvertible, C.Value: UnitValuable {
        let columnGap = columnGap.stateValue
        self.init(rowGap, columnGap.wrappedValue)
        columnGap.listen {
            self.value = [rowGap.description, $0.description].joined(separator: " ")
            self._changeHandler()
        }
    }

    public convenience init<R, C>(_ rowGap: R, _ columnGap: C) where R: StateConvertible, R.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let rowGap = rowGap.stateValue
        let columnGap = columnGap.stateValue
        self.init(rowGap.wrappedValue, columnGap.wrappedValue)
        rowGap.listen {
            self.value = [$0.description, columnGap.wrappedValue.description].joined(separator: " ")
            self._changeHandler()
        }
        columnGap.listen {
            self.value = [rowGap.wrappedValue.description, $0.description].joined(separator: " ")
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for the grid-row-gap and grid-column-gap properties
    public typealias GridGap = GridGapProperty
}

extension CSSRulable {
    /// A shorthand property for the grid-row-gap and grid-column-gap properties
    public func gridGap<R: UnitValuable>(_ rowGap: R) -> Self {
        _addProperty(GridGapProperty(rowGap))
        return self
    }

    /// A shorthand property for the grid-row-gap and grid-column-gap properties
    public func gridGap<R>(_ rowGap: R) -> Self where R: StateConvertible, R.Value: UnitValuable {
        _addProperty(GridGapProperty(rowGap))
        return self
    }

    /// A shorthand property for the grid-row-gap and grid-column-gap properties
    public func gridGap<R: UnitValuable, C: UnitValuable>(_ rowGap: R, _ columnGap: C) -> Self {
        _addProperty(GridGapProperty(rowGap, columnGap))
        return self
    }

    /// A shorthand property for the grid-row-gap and grid-column-gap properties
    public func gridGap<R, C: UnitValuable>(_ rowGap: R, _ columnGap: C) -> Self where R: StateConvertible, R.Value: UnitValuable {
        _addProperty(GridGapProperty(rowGap, columnGap))
        return self
    }

    /// A shorthand property for the grid-row-gap and grid-column-gap properties
    public func gridGap<R: UnitValuable, C>(_ rowGap: R, _ columnGap: C) -> Self where C: StateConvertible, C.Value: UnitValuable {
        _addProperty(GridGapProperty(rowGap, columnGap))
        return self
    }

    /// A shorthand property for the grid-row-gap and grid-column-gap properties
    public func gridGap<R, C>(_ rowGap: R, _ columnGap: C) -> Self where R: StateConvertible, R.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(GridGapProperty(rowGap, columnGap))
        return self
    }
}

// MARK: - GridProperty

/// A shorthand property for the grid-template-rows, grid-template-columns,
/// grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties
///
/// ```html
/// grid: 150px / auto auto auto;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid.asp)
public class GridProperty: _Property {
    public var propertyKey: PropertyKey<GridValue> { .grid }
    public var propertyValue: GridValue
    var _content = _PropertyContent<GridValue>()

    /// Specifies the size(s) of the columns and rows
    public init (templateRows: GridTemplateRowsType, templateColumns: GridTemplateColumnsType) {
        propertyValue = GridValue(templateRows: templateRows, templateColumns: templateColumns)
    }

    /// Specifies the grid layout using named items
    public init (_ area: [String]) {
        propertyValue = GridValue(area)
    }

    /// Specifies the grid layout using named items
    public convenience init (_ area: String...) {
        self.init(area)
    }

    /// Specifies the size (height) of the rows, and the auto size of the columns
    public init (templateRows: GridTemplateRowsType, autoColumns: GridAutoColumnsValue) {
        propertyValue = GridValue(templateRows: templateRows, autoColumns: autoColumns)
    }

    /// Specifies the auto size of the rows, and sets the grid-template-columns property
    public init (autoRows: GridAutoRowsType, templateColumns: GridTemplateColumnsType) {
        propertyValue = GridValue(autoRows: autoRows, templateColumns: templateColumns)
    }

    /// Specifies the size (height) of the rows, and the auto size of the columns
    public init (templateRows: GridTemplateRowsType, autoFlow: GridAutoFlowType, autoColumns: GridAutoColumnsValue) {
        propertyValue = GridValue(templateRows: templateRows, autoFlow: autoFlow, autoColumns: autoColumns)
    }

    public init (autoFlow: GridAutoFlowType, autoRows: GridAutoRowsType, templateColumns: GridTemplateColumnsType) {
        propertyValue = GridValue(autoFlow: autoFlow, autoRows: autoRows, templateColumns: templateColumns)
    }
}

extension PropertyKey {
    /// A shorthand property for the grid-template-rows, grid-template-columns,
    /// grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties
    public static var grid: PropertyKey<GridValue> { "grid".propertyKey() }
}

public struct GridValue: CustomStringConvertible {
    public let value: String

    /// Specifies the size(s) of the columns and rows
    public init (templateRows: GridTemplateRowsType, templateColumns: GridTemplateColumnsType) {
        value = templateRows.value + " / " + templateColumns.value
    }

    /// Specifies the grid layout using named items
    public init (_ area: String...) {
        value = "\"\(area.joined(separator: " "))\""
    }

    /// Specifies the grid layout using named items
    public init (_ area: [String]) {
        value = "\"\(area.joined(separator: " "))\""
    }

    /// Specifies the size (height) of the rows, and the auto size of the columns
    public init (templateRows: GridTemplateRowsType, autoColumns: GridAutoColumnsValue) {
        value = templateRows.value + " / " + autoColumns.value
    }

    /// Specifies the auto size of the rows, and sets the grid-template-columns property
    public init (autoRows: GridAutoRowsType, templateColumns: GridTemplateColumnsType) {
        value = autoRows.value + " / " + templateColumns.value
    }

    /// Specifies the size (height) of the rows, and the auto size of the columns
    public init (templateRows: GridTemplateRowsType, autoFlow: GridAutoFlowType, autoColumns: GridAutoColumnsValue) {
        value = templateRows.value + " / " + autoFlow.value + " " + autoColumns.value
    }

    public init (autoFlow: GridAutoFlowType, autoRows: GridAutoRowsType, templateColumns: GridTemplateColumnsType) {
        value = autoFlow.value + " " + autoRows.value + " / " + templateColumns.value
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for the grid-template-rows, grid-template-columns,
    /// grid-template-areas, grid-auto-rows, grid-auto-columns, and the grid-auto-flow properties
    public typealias Grid = GridProperty
}

extension CSSRulable {
    /// Specifies the size(s) of the columns and rows
    public func grid(templateRows: GridTemplateRowsType, templateColumns: GridTemplateColumnsType) -> Self {
        _addProperty(GridProperty(templateRows: templateRows, templateColumns: templateColumns))
        return self
    }

    /// Specifies the size(s) of the columns and rows
    public func grid<U: UnitValuable>(templateRows: U, templateColumns: GridTemplateColumnsType) -> Self {
        grid(templateRows: .length(templateRows), templateColumns: templateColumns)
    }

    /// Specifies the grid layout using named items
    public func grid(_ area: [String]) -> Self {
        _addProperty(GridProperty(area))
        return self
    }

    /// Specifies the grid layout using named items
    public func grid(_ area: String...) -> Self {
        grid(area)
    }

    /// Specifies the size (height) of the rows, and the auto size of the columns
    public func grid(templateRows: GridTemplateRowsType, autoColumns: GridAutoColumnsValue) -> Self {
        _addProperty(GridProperty(templateRows: templateRows, autoColumns: autoColumns))
        return self
    }

    /// Specifies the size (height) of the rows, and the auto size of the columns
    public func grid<U: UnitValuable>(templateRows: U, autoColumns: GridAutoColumnsValue) -> Self {
        grid(templateRows: .length(templateRows), autoColumns: autoColumns)
    }

    /// Specifies the auto size of the rows, and sets the grid-template-columns property
    public func grid(autoRows: GridAutoRowsType, templateColumns: GridTemplateColumnsType) -> Self {
        _addProperty(GridProperty(autoRows: autoRows, templateColumns: templateColumns))
        return self
    }

    /// Specifies the auto size of the rows, and sets the grid-template-columns property
    public func grid<U: UnitValuable>(autoRows: GridAutoRowsType, templateColumns: U) -> Self {
        grid(autoRows: autoRows, templateColumns: .length(templateColumns))
    }

    /// Specifies the auto size of the rows, and sets the grid-template-columns property
    public func grid<U: UnitValuable>(autoRows: U, templateColumns: GridTemplateColumnsType) -> Self {
        grid(autoRows: .length(autoRows), templateColumns: templateColumns)
    }

    /// Specifies the auto size of the rows, and sets the grid-template-columns property
    public func grid<U1: UnitValuable, U2: UnitValuable>(autoRows: U1, templateColumns: U2) -> Self {
        grid(autoRows: .length(autoRows), templateColumns: .length(templateColumns))
    }

    /// Specifies the size (height) of the rows, and the auto size of the columns
    public func grid(templateRows: GridTemplateRowsType, autoFlow: GridAutoFlowType, autoColumns: GridAutoColumnsValue) -> Self {
        _addProperty(GridProperty(templateRows: templateRows, autoFlow: autoFlow, autoColumns: autoColumns))
        return self
    }

    /// Specifies the size (height) of the rows, and the auto size of the columns
    public func grid<U: UnitValuable>(templateRows: U, autoFlow: GridAutoFlowType, autoColumns: GridAutoColumnsValue) -> Self {
        grid(templateRows: .length(templateRows), autoFlow: autoFlow, autoColumns: autoColumns)
    }

    public func grid(autoFlow: GridAutoFlowType, autoRows: GridAutoRowsType, templateColumns: GridTemplateColumnsType) -> Self {
        _addProperty(GridProperty(autoFlow: autoFlow, autoRows: autoRows, templateColumns: templateColumns))
        return self
    }

    public func grid<U: UnitValuable>(autoFlow: GridAutoFlowType, autoRows: GridAutoRowsType, templateColumns: U) -> Self {
        _addProperty(GridProperty(autoFlow: autoFlow, autoRows: autoRows, templateColumns: .length(templateColumns)))
        return self
    }

    public func grid<U: UnitValuable>(autoFlow: GridAutoFlowType, autoRows: U, templateColumns: GridTemplateColumnsType) -> Self {
        grid(autoFlow: autoFlow, autoRows: .length(autoRows), templateColumns: templateColumns)
    }

    public func grid<U1: UnitValuable, U2: UnitValuable>(autoFlow: GridAutoFlowType, autoRows: U1, templateColumns: U2) -> Self {
        grid(autoFlow: autoFlow, autoRows: .length(autoRows), templateColumns: .length(templateColumns))
    }
}

// MARK: - GridRowEndProperty

/// Specifies where to end the grid item
///
/// ```html
/// grid-row-end: span 3;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-row-end.asp)
public class GridRowEndProperty: _Property {
    public var propertyKey: PropertyKey<GridRowEndValue> { .gridRowEnd }
    public var propertyValue: GridRowEndValue
    var _content = _PropertyContent<GridRowEndValue>()

    // Means `auto`
    public init() {
        propertyValue = .auto
    }

    public init (rowLine: Int) {
        propertyValue = .rowLine(rowLine)
    }

    public init <V>(rowLine: V) where V: StateConvertible, V.Value == Int {
        propertyValue = .rowLine(rowLine)
    }

    public init (span n: Int) {
        propertyValue = .span(n)
    }

    public init <V>(span n: V) where V: StateConvertible, V.Value == Int {
        propertyValue = .span(n)
    }

    public static var auto: GridRowEndValue { .init() }
    public static func rowLine(_ v: Int) -> GridRowEndValue { .init(rowLine: v) }
    public static func rowLine<V>(_ v: V) -> GridRowEndValue where V: StateConvertible, V.Value == Int { .init(rowLine: v) }
    public static func span(_ n: Int) -> GridRowEndValue { .init(span: n) }
    public static func span<V>(_ n: V) -> GridRowEndValue where V: StateConvertible, V.Value == Int { .init(span: n) }
}

extension PropertyKey {
    /// Specifies where to end the grid item
    public static var gridRowEnd: PropertyKey<GridRowEndValue> { "grid-row-end".propertyKey() }
}

public class GridRowEndValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init() {
        value = "auto"
    }

    public init (rowLine: Int) {
        value = "\(rowLine)"
    }

    public convenience init <V>(rowLine: V) where V: StateConvertible, V.Value == Int {
        let rowLine = rowLine.stateValue
        self.init(rowLine: rowLine.wrappedValue)
        rowLine.listen {
            self.value = "\($0)"
            self._changeHandler()
        }
    }

    public init (span n: Int) {
        value = "span \(n)"
    }

    public convenience init <V>(span n: V) where V: StateConvertible, V.Value == Int {
        let n = n.stateValue
        self.init(span: n.wrappedValue)
        n.listen {
            self.value = "span \($0)"
            self._changeHandler()
        }
    }

    public static var auto: GridRowEndValue { .init() }
    public static func rowLine(_ v: Int) -> GridRowEndValue { .init(rowLine: v) }
    public static func rowLine<V>(_ v: V) -> GridRowEndValue where V: StateConvertible, V.Value == Int { .init(rowLine: v) }
    public static func span(_ n: Int) -> GridRowEndValue { .init(span: n) }
    public static func span<V>(_ n: V) -> GridRowEndValue where V: StateConvertible, V.Value == Int { .init(span: n) }

    public var description: String { value }
}

extension Stylesheet {
    /// Specifies where to end the grid item
    public typealias GridRowEnd = GridRowEndProperty
}

extension CSSRulable {
    /// Specifies where to end the grid item
    public func gridRowEnd() -> Self {
        _addProperty(GridRowEndProperty())
        return self
    }

    /// Specifies where to end the grid item
    public func gridRowEnd(rowLine: Int) -> Self {
        _addProperty(GridRowEndProperty(rowLine: rowLine))
        return self
    }

    /// Specifies where to end the grid item
    public func gridRowEnd<V>(rowLine: V) -> Self where V: StateConvertible, V.Value == Int {
        _addProperty(GridRowEndProperty(rowLine: rowLine))
        return self
    }

    /// Specifies where to end the grid item
    public func gridRowEnd(span n: Int) -> Self {
        _addProperty(GridRowEndProperty(span: n))
        return self
    }

    /// Specifies where to end the grid item
    public func gridRowEnd<V>(span n: V) -> Self where V: StateConvertible, V.Value == Int {
        _addProperty(GridRowEndProperty(span: n))
        return self
    }
}

// MARK: - GridRowGapProperty

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

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Specifies the size of the gap between rows
    public static var gridRowGap: PropertyKey<UnitValue> { "grid-row-gap".propertyKey() }
}

extension Stylesheet {
    /// Specifies the size of the gap between rows
    public typealias GridRowGap = GridRowGapProperty
}

extension CSSRulable {
    /// Specifies the size of the gap between rows
    public func gridRowGap<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.gridRowGap, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Specifies the size of the gap between rows
    public func gridRowGap<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(GridRowGapProperty(value))
        return self
    }

    /// Specifies the size of the gap between rows
    public func gridRowGap<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        gridRowGap(value.unwrap())
    }

    // MARK: Extended

    /// Specifies the size of the gap between rows
    public func gridRowGap(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.gridRowGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between rows
    public func gridRowGap(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.gridRowGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between rows
    public func gridRowGap(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.gridRowGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between rows
    public func gridRowGap<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.gridRowGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between rows
    public func gridRowGap<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.gridRowGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between rows
    public func gridRowGap<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.gridRowGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between rows
    public func gridRowGap<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.gridRowGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between rows
    public func gridRowGap(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.gridRowGap, UnitValue(value, unit))
        return self
    }

    /// Specifies the size of the gap between rows
    public func gridRowGap<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.gridRowGap, UnitValue(value, unit))
        return self
    }
}

// MARK: - GridRowProperty

/// A shorthand property for the grid-row-start and the grid-row-end properties
///
/// ```html
/// grid-row: 1 / span 2;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-row.asp)
public class GridRowProperty: _Property {
    public var propertyKey: PropertyKey<GridRowValue> { .gridRow }
    public var propertyValue: GridRowValue
    var _content = _PropertyContent<GridRowValue>()

    public init (start: Int, end: Int) {
        propertyValue = GridRowValue(start: start, end: end)
    }

    public init <S>(start: S, end: Int) where S: StateConvertible, S.Value == Int {
        propertyValue = GridRowValue(start: start, end: end)
    }

    public init <E>(start: Int, end: E) where E: StateConvertible, E.Value == Int {
        propertyValue = GridRowValue(start: start, end: end)
    }

    public init <S, E>(start: S, end: E) where S: StateConvertible, S.Value == Int, E: StateConvertible, E.Value == Int {
        propertyValue = GridRowValue(start: start, end: end)
    }
}

extension PropertyKey {
    /// A shorthand property for the grid-row-start and the grid-row-end properties
    public static var gridRow: PropertyKey<GridRowValue> { "grid-row".propertyKey() }
}

public class GridRowValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (start: Int, end: Int) {
        value = "\(start) / \(end)"
    }

    public convenience init <S>(start: S, end: Int) where S: StateConvertible, S.Value == Int {
        let start = start.stateValue
        self.init(start: start.wrappedValue, end: end)
        start.listen {
            self.value = "\($0) / \(end)"
            self._changeHandler()
        }
    }

    public convenience init <E>(start: Int, end: E) where E: StateConvertible, E.Value == Int {
        let end = end.stateValue
        self.init(start: start, end: end.wrappedValue)
        end.listen {
            self.value = "\(start) / \($0)"
            self._changeHandler()
        }
    }

    public convenience init <S, E>(start: S, end: E) where S: StateConvertible, S.Value == Int, E: StateConvertible, E.Value == Int {
        let start = start.stateValue
        let end = end.stateValue
        self.init(start: start.wrappedValue, end: end.wrappedValue)
        start.listen {
            self.value = "\($0) / \(end)"
            self._changeHandler()
        }
        end.listen {
            self.value = "\(start) / \($0)"
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for the grid-row-start and the grid-row-end properties
    public typealias GridRow = GridRowProperty
}

extension CSSRulable {
    /// A shorthand property for the grid-row-start and the grid-row-end properties
    public func gridRow(start: Int, end: Int) -> Self {
        _addProperty(GridRowProperty(start: start, end: end))
        return self
    }

    /// A shorthand property for the grid-row-start and the grid-row-end properties
    public func gridRow<S>(start: S, end: Int) -> Self where S: StateConvertible, S.Value == Int {
        _addProperty(GridRowProperty(start: start, end: end))
        return self
    }

    /// A shorthand property for the grid-row-start and the grid-row-end properties
    public func gridRow<E>(start: Int, end: E) -> Self where E: StateConvertible, E.Value == Int {
        _addProperty(GridRowProperty(start: start, end: end))
        return self
    }

    /// A shorthand property for the grid-row-start and the grid-row-end properties
    public func gridRow<S, E>(start: S, end: E) -> Self where S: StateConvertible, S.Value == Int, E: StateConvertible, E.Value == Int {
        _addProperty(GridRowProperty(start: start, end: end))
        return self
    }
}

// MARK: - GridRowStartProperty

/// Specifies where to start the grid item
///
/// ```html
/// grid-row-start: 2;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-row-start.asp)
public class GridRowStartProperty: _Property {
    public var propertyKey: PropertyKey<GridRowStartValue> { .gridRowStart }
    public var propertyValue: GridRowStartValue
    var _content = _PropertyContent<GridRowStartValue>()

    // Means `auto`
    public init() {
        propertyValue = .auto
    }

    public init (rowLine: Int) {
        propertyValue = .rowLine(rowLine)
    }

    public init <V>(rowLine: V) where V: StateConvertible, V.Value == Int {
        propertyValue = .rowLine(rowLine)
    }

    public static var auto: GridRowStartProperty { .init() }
    public static func rowLine(_ v: Int) -> GridRowStartProperty { .init(rowLine: v) }
    public static func rowLine<V>(_ v: V) -> GridRowStartProperty where V: StateConvertible, V.Value == Int { .init(rowLine: v) }
}

extension PropertyKey {
    public static var gridRowStart: PropertyKey<GridRowStartValue> { "grid-row-start".propertyKey() }
}

public class GridRowStartValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init() {
        value = "auto"
    }

    public init (rowLine: Int) {
        value = "\(rowLine)"
    }

    public convenience init <V>(rowLine: V) where V: StateConvertible, V.Value == Int {
        let rowLine = rowLine.stateValue
        self.init(rowLine: rowLine.wrappedValue)
        rowLine.listen {
            self.value = "\($0)"
            self._changeHandler()
        }
    }

    public static var auto: GridRowStartValue { .init() }
    public static func rowLine(_ v: Int) -> GridRowStartValue { .init(rowLine: v) }
    public static func rowLine<V>(_ v: V) -> GridRowStartValue where V: StateConvertible, V.Value == Int { .init(rowLine: v) }

    public var description: String { value }
}

extension Stylesheet {
    /// Specifies where to start the grid item
    public typealias GridRowStart = GridRowStartProperty
}

extension CSSRulable {
    /// Specifies where to start the grid item
    public func gridRowStart() -> Self {
        _addProperty(GridRowStartProperty())
        return self
    }

    /// Specifies where to start the grid item
    public func gridRowStart(rowLine: Int) -> Self {
        _addProperty(GridRowStartProperty(rowLine: rowLine))
        return self
    }

    /// Specifies where to start the grid item
    public func gridRowStart<V>(rowLine: V) -> Self where V: StateConvertible, V.Value == Int {
        _addProperty(GridRowStartProperty(rowLine: rowLine))
        return self
    }
}

// MARK: - GridTemplateAreasProperty

/// Specifies how to display columns and rows, using named grid items
///
/// ```html
/// .item1 {
///     grid-area: myArea;
/// }
/// .grid-container {
///     display: grid;
///     grid-template-areas: "myArea myArea . . .";
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-template-areas.asp)
public class GridTemplateAreasProperty: _Property {
    public var propertyKey: PropertyKey<GridTemplateAreasValue> { .gridTemplateAreas }
    public var propertyValue: GridTemplateAreasValue
    var _content = _PropertyContent<GridTemplateAreasValue>()

    public init (_ areas: [String]) {
        propertyValue = .init(areas)
    }

    public convenience init (_ areas: String...) {
        self.init(areas)
    }

    public convenience init <V>(_ areas: V) where V: StateConvertible, V.Value == [String] {
        let areas = areas.stateValue
        self.init(areas.wrappedValue)
        areas.listen { self._changed(to: .init($0)) }
    }
}

extension PropertyKey {
    public static var gridTemplateAreas: PropertyKey<GridTemplateAreasValue> { "grid-template-areas".propertyKey() }
}

public class GridTemplateAreasValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    @State public var value = ""

    var _changeHandler = {}

    public init (_ area: [String]) {
        value = "\"\(area.joined(separator: " "))\""
        $value.listen { self._changeHandler() }
    }

    public convenience init (_ areas: String...) {
        self.init(areas)
    }

    public convenience init <V>(_ area: V) where V: StateConvertible, V.Value == [String] {
        let area = area.stateValue
        self.init(area.wrappedValue)
        area.listen {
            self.value = "\"\($0.joined(separator: " "))\""
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Specifies how to display columns and rows, using named grid items
    public typealias GridTemplateAreas = GridTemplateAreasProperty
}

extension CSSRulable {
    /// Specifies how to display columns and rows, using named grid items
    public func gridTemplateAreas(_ type: String...) -> Self {
        gridTemplateAreas(type)
    }

    /// Specifies how to display columns and rows, using named grid items
    public func gridTemplateAreas(_ type: [String]) -> Self {
        _addProperty(GridTemplateAreasProperty(type))
        return self
    }

    /// Specifies how to display columns and rows, using named grid items
    public func gridTemplateAreas<V>(_ type: V) -> Self where V: StateConvertible, V.Value == [String] {
        _addProperty(GridTemplateAreasProperty(type))
        return self
    }
}

// MARK: - GridTemplateColumnsProperty

/// Specifies the size of the columns, and how many columns in a grid layout
///
/// ```html
/// grid-template-columns: auto auto auto auto;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-template-columns.asp)
public class GridTemplateColumnsProperty: _Property {
    public var propertyKey: PropertyKey<GridTemplateColumnsType> { .gridTemplateColumns }
    public var propertyValue: GridTemplateColumnsType
    var _content = _PropertyContent<GridTemplateColumnsType>()

    public init (_ type: GridTemplateColumnsType) {
        propertyValue = type
    }

    public convenience init (_ type: State<GridTemplateColumnsType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, GridTemplateColumnsType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the size of the columns, and how many columns in a grid layout
    public static var gridTemplateColumns: PropertyKey<GridTemplateColumnsType> { "grid-template-columns".propertyKey() }
}

extension Stylesheet {
    /// Specifies the size of the columns, and how many columns in a grid layout
    public typealias GridTemplateColumns = GridTemplateColumnsProperty
}

extension CSSRulable {
    /// Specifies the size of the columns, and how many columns in a grid layout
    public func gridTemplateColumns(_ type: GridTemplateColumnsType) -> Self {
        _addProperty(.gridTemplateColumns, type)
        return self
    }

    /// Specifies the size of the columns, and how many columns in a grid layout
    public func gridTemplateColumns(_ type: State<GridTemplateColumnsType>) -> Self {
        _addProperty(GridTemplateColumnsProperty(type))
        return self
    }

    /// Specifies the size of the columns, and how many columns in a grid layout
    public func gridTemplateColumns<V>(_ type: ExpressableState<V, GridTemplateColumnsType>) -> Self {
        gridTemplateColumns(type.unwrap())
    }

    /// Specifies the size of the columns, and how many columns in a grid layout
    public func gridTemplateColumns<U: UnitValuable>(_ type: U) -> Self {
        gridTemplateColumns(.length(type))
    }

    /// Specifies the size of the columns, and how many columns in a grid layout
    public func gridTemplateColumns<U: UnitValuable>(_ type: State<U>) -> Self {
        gridTemplateColumns(type.map { .length($0) })
    }

    /// Specifies the size of the columns, and how many columns in a grid layout
    public func gridTemplateColumns<V, U: UnitValuable>(_ type: ExpressableState<V, U>) -> Self {
        gridTemplateColumns(type.unwrap())
    }
}

// MARK: - GridTemplateProperty

/// A shorthand property for the grid-template-rows, grid-template-columns and grid-areas properties
///
/// ```html
/// grid-template: 150px / auto auto auto;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template)
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-template.asp)
public class GridTemplateProperty: _Property {
    public var propertyKey: PropertyKey<GridTemplateValue> { .gridTemplate }
    public var propertyValue: GridTemplateValue
    var _content = _PropertyContent<GridTemplateValue>()

    public init (rows: GridTemplateRowsType, columns: GridTemplateColumnsType) {
        propertyValue = GridTemplateValue(rows: rows, columns: columns)
    }

    public init (_ area: String...) {
        propertyValue = GridTemplateValue(area)
    }

    public init (_ area: [String]) {
        propertyValue = GridTemplateValue(area)
    }
}

extension PropertyKey {
    /// A shorthand property for the grid-template-rows, grid-template-columns and grid-areas properties
    public static var gridTemplate: PropertyKey<GridTemplateValue> { "grid-template".propertyKey() }
}

public struct GridTemplateValue: CustomStringConvertible {
    let value: String

    public init (rows: GridTemplateRowsType, columns: GridTemplateColumnsType) {
        value = [rows.value, columns.value].joined(separator: " / ")
    }

    public init (_ area: String...) {
        value = "\"\(area.joined(separator: " "))\""
    }

    public init (_ area: [String]) {
        value = "\"\(area.joined(separator: " "))\""
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for the grid-template-rows, grid-template-columns and grid-areas properties
    public typealias GridTemplate = GridTemplateProperty
}

extension CSSRulable {
    /// A shorthand property for the grid-template-rows, grid-template-columns and grid-areas properties
    public func gridTemplate(rows: GridTemplateRowsType, columns: GridTemplateColumnsType) -> Self {
        _addProperty(GridTemplateProperty(rows: rows, columns: columns))
        return self
    }

    /// A shorthand property for the grid-template-rows, grid-template-columns and grid-areas properties
    public func gridTemplate<U: UnitValuable>(rows: U, columns: GridTemplateColumnsType) -> Self {
        gridTemplate(rows: .length(rows), columns: columns)
    }

    /// A shorthand property for the grid-template-rows, grid-template-columns and grid-areas properties
    public func gridTemplate(_ area: String...) -> Self {
        gridTemplate(area)
    }

    /// A shorthand property for the grid-template-rows, grid-template-columns and grid-areas properties
    public func gridTemplate(_ area: [String]) -> Self {
        _addProperty(GridTemplateProperty(area))
        return self
    }
}

// MARK: - GridTemplateRowsProperty

/// Specifies the size of the rows in a grid layout
///
/// ```html
/// grid-template-rows: 100px 300px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_grid-template-rows.asp)
public class GridTemplateRowsProperty: _Property {
    public var propertyKey: PropertyKey<GridTemplateRowsType> { .gridTemplateRows }
    public var propertyValue: GridTemplateRowsType
    var _content = _PropertyContent<GridTemplateRowsType>()

    public init (_ type: GridTemplateRowsType) {
        propertyValue = type
    }

    public convenience init (_ type: State<GridTemplateRowsType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, GridTemplateRowsType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the size of the rows in a grid layout
    public static var gridTemplateRows: PropertyKey<GridTemplateRowsType> { "grid-template-rows".propertyKey() }
}

extension Stylesheet {
    /// Specifies the size of the rows in a grid layout
    public typealias GridTemplateRows = GridTemplateRowsProperty
}

extension CSSRulable {
    /// Specifies the size of the rows in a grid layout
    public func gridTemplateRows(_ type: GridTemplateRowsType) -> Self {
        _addProperty(.gridTemplateRows, type)
        return self
    }

    /// Specifies the size of the rows in a grid layout
    public func gridTemplateRows(_ type: State<GridTemplateRowsType>) -> Self {
        _addProperty(GridTemplateRowsProperty(type))
        return self
    }

    /// Specifies the size of the rows in a grid layout
    public func gridTemplateRows<V>(_ type: ExpressableState<V, GridTemplateRowsType>) -> Self {
        gridTemplateRows(type.unwrap())
    }

    /// Specifies the size of the rows in a grid layout
    public func gridTemplateRows<U: UnitValuable>(_ type: U) -> Self {
        gridTemplateRows(.length(type))
    }

    /// Specifies the size of the rows in a grid layout
    public func gridTemplateRows<U: UnitValuable>(_ type: State<U>) -> Self {
        gridTemplateRows(type.map { .length($0) })
    }

    /// Specifies the size of the rows in a grid layout
    public func gridTemplateRows<V, U: UnitValuable>(_ type: ExpressableState<V, U>) -> Self {
        gridTemplateRows(type.unwrap())
    }
}

// MARK: - HangingPunctuationProperty

/// Specifies whether a punctuation character may be placed outside the line box
///
/// ```html
/// hanging-punctuation: first;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_hanging-punctuation.asp)
public class HangingPunctuationProperty: _Property {
    public var propertyKey: PropertyKey<HangingPunctuationType> { .hangingPunctuation }
    public var propertyValue: HangingPunctuationType
    var _content = _PropertyContent<HangingPunctuationType>()

    public init (_ type: HangingPunctuationType) {
        propertyValue = type
    }

    public convenience init (_ type: State<HangingPunctuationType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, HangingPunctuationType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether a punctuation character may be placed outside the line box
    public static var hangingPunctuation: PropertyKey<HangingPunctuationType> { "hanging-punctuation".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether a punctuation character may be placed outside the line box
    public typealias HangingPunctuation = HangingPunctuationProperty
}

extension CSSRulable {
    /// Specifies whether a punctuation character may be placed outside the line box
    public func hangingPunctuation(_ type: HangingPunctuationType) -> Self {
        _addProperty(.hangingPunctuation, type)
        return self
    }

    /// Specifies whether a punctuation character may be placed outside the line box
    public func hangingPunctuation(_ type: State<HangingPunctuationType>) -> Self {
        _addProperty(HangingPunctuationProperty(type))
        return self
    }

    /// Specifies whether a punctuation character may be placed outside the line box
    public func hangingPunctuation<V>(_ type: ExpressableState<V, HangingPunctuationType>) -> Self {
        hangingPunctuation(type.unwrap())
    }
}

// MARK: - HeightProperty

/// Sets the height of an element
///
/// ```html
/// height: 50px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_dim_height.asp)
public class HeightProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .height }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Sets the height of an element
    public static var height: PropertyKey<UnitValue> { "height".propertyKey() }
}

extension Stylesheet {
    /// Sets the height of an element
    public typealias Height = HeightProperty
}

extension CSSRulable {
    /// Sets the height of an element
    public func height<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.height, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Sets the height of an element
    public func height<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(HeightProperty(value))
        return self
    }

    /// Sets the height of an element
    public func height<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        height(value.unwrap())
    }

    // MARK: Extended

    /// Sets the height of an element
    public func height(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.height, UnitValue(value, unit))
        return self
    }

    /// Sets the height of an element
    public func height(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.height, UnitValue(value, unit))
        return self
    }

    /// Sets the height of an element
    public func height(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.height, UnitValue(value, unit))
        return self
    }

    /// Sets the height of an element
    public func height<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.height, UnitValue(value, unit))
        return self
    }

    /// Sets the height of an element
    public func height<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.height, UnitValue(value, unit))
        return self
    }

    /// Sets the height of an element
    public func height<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.height, UnitValue(value, unit))
        return self
    }

    /// Sets the height of an element
    public func height<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.height, UnitValue(value, unit))
        return self
    }

    /// Sets the height of an element
    public func height(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.height, UnitValue(value, unit))
        return self
    }

    /// Sets the height of an element
    public func height<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.height, UnitValue(value, unit))
        return self
    }
}

// MARK: - HyphensProperty

/// Sets how to split words to improve the layout of paragraphs
///
/// ```html
/// div.a {
///     -webkit-hyphens: none;
///     -ms-hyphens: none;
///     hyphens: none;
/// }
///
/// div.b {
///     -webkit-hyphens: manual;
///     -ms-hyphens: manual;
///     hyphens: manual;
/// }
///
/// div.c {
///     -webkit-hyphens: auto;
///     -ms-hyphens: auto;
///     hyphens: auto;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_hyphens.asp)
public class HyphensProperty: _Property {
    public var propertyKey: PropertyKey<HyphensType> { .hyphens }
    public var propertyValue: HyphensType
    public var propertyAliases: [AnyProperty]
    var _content = _PropertyContent<HyphensType>()

    public init (_ type: HyphensType) {
        propertyValue = type
        propertyAliases = [Webkit(type), MS(type)]
    }

    public convenience init (_ type: State<HyphensType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, HyphensType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets how to split words to improve the layout of paragraphs
    public static var hyphens: PropertyKey<HyphensType> { "hyphens".propertyKey() }
}

extension Stylesheet {
    /// Sets how to split words to improve the layout of paragraphs
    public typealias Hyphens = HyphensProperty
}

extension CSSRulable {
    /// Sets how to split words to improve the layout of paragraphs
    public func hyphens(_ type: HyphensType) -> Self {
        _addProperty(.hyphens, type)
        return self
    }

    /// Sets how to split words to improve the layout of paragraphs
    public func hyphens(_ type: State<HyphensType>) -> Self {
        _addProperty(HyphensProperty(type))
        return self
    }

    /// Sets how to split words to improve the layout of paragraphs
    public func hyphens<V>(_ type: ExpressableState<V, HyphensType>) -> Self {
        hyphens(type.unwrap())
    }
}

extension HyphensProperty {
    public class MS: _Property {
        public var propertyKey: PropertyKey<HyphensType> { .hyphens_ms }
        public var propertyValue: HyphensType
        var _content = _PropertyContent<HyphensType>()

        public init (_ type: HyphensType) {
            propertyValue = type
        }

        public convenience init (_ type: State<HyphensType>) {
            self.init(type.wrappedValue)
            type.listen { self._changed(to: $0) }
        }

        public convenience init <V>(_ type: ExpressableState<V, HyphensType>) {
            self.init(type.unwrap())
        }
    }
}

extension PropertyKey {
    public static var hyphens_ms: PropertyKey<HyphensType> { "-ms-hyphens".propertyKey() }
}

extension HyphensProperty {
    public class Webkit: _Property {
        public var propertyKey: PropertyKey<HyphensType> { .hyphens_webKit }
        public var propertyValue: HyphensType
        var _content = _PropertyContent<HyphensType>()

        public init (_ type: HyphensType) {
            propertyValue = type
        }

        public convenience init (_ type: State<HyphensType>) {
            self.init(type.wrappedValue)
            type.listen { self._changed(to: $0) }
        }

        public convenience init <V>(_ type: ExpressableState<V, HyphensType>) {
            self.init(type.unwrap())
        }
    }
}

extension PropertyKey {
    public static var hyphens_webKit: PropertyKey<HyphensType> { "-webkit-hyphens".propertyKey() }
}

// MARK: - ImageRenderingProperty

/// Gives a hint to the browser about what aspects of an image are most important to preserve when the image is scaled
///
/// ```html
/// image-rendering: auto;
/// image-rendering: crisp-edges;
/// image-rendering: pixelated;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/image-rendering)
public class ImageRenderingProperty: _Property {
    public var propertyKey: PropertyKey<ImageRenderingType> { .imageRendering }
    public var propertyValue: ImageRenderingType
    var _content = _PropertyContent<ImageRenderingType>()

    public init (_ type: ImageRenderingType) {
        propertyValue = type
    }

    public convenience init (_ type: State<ImageRenderingType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, ImageRenderingType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Gives a hint to the browser about what aspects of an image are most important to preserve when the image is scaled
    public static var imageRendering: PropertyKey<ImageRenderingType> { "image-rendering".propertyKey() }
}

extension Stylesheet {
    /// Gives a hint to the browser about what aspects of an image are most important to preserve when the image is scaled
    public typealias ImageRendering = ImageRenderingProperty
}

extension CSSRulable {
    /// Gives a hint to the browser about what aspects of an image are most important to preserve when the image is scaled
    public func imageRendering(_ type: ImageRenderingType) -> Self {
        _addProperty(.imageRendering, type)
        return self
    }

    /// Gives a hint to the browser about what aspects of an image are most important to preserve when the image is scaled
    public func imageRendering(_ type: State<ImageRenderingType>) -> Self {
        _addProperty(ImageRenderingProperty(type))
        return self
    }

    /// Gives a hint to the browser about what aspects of an image are most important to preserve when the image is scaled
    public func imageRendering<V>(_ type: ExpressableState<V, ImageRenderingType>) -> Self {
        imageRendering(type.unwrap())
    }
}

// MARK: - IsolationProperty

/// Defines whether an element must create a new stacking content
///
/// ```html
/// isolation: isolate;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_isolation.asp)
public class IsolationProperty: _Property {
    public var propertyKey: PropertyKey<IsolationType> { .isolation }
    public var propertyValue: IsolationType
    var _content = _PropertyContent<IsolationType>()

    public init (_ type: IsolationType) {
        propertyValue = type
    }

    public convenience init (_ type: State<IsolationType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, IsolationType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Defines whether an element must create a new stacking content
    public static var isolation: PropertyKey<IsolationType> { "isolation".propertyKey() }
}

extension Stylesheet {
    /// Defines whether an element must create a new stacking content
    public typealias Isolation = IsolationProperty
}

extension CSSRulable {
    /// Defines whether an element must create a new stacking content
    public func isolation(_ type: IsolationType) -> Self {
        _addProperty(.isolation, type)
        return self
    }

    /// Defines whether an element must create a new stacking content
    public func isolation(_ type: State<IsolationType>) -> Self {
        _addProperty(IsolationProperty(type))
        return self
    }

    /// Defines whether an element must create a new stacking content
    public func isolation<V>(_ type: ExpressableState<V, IsolationType>) -> Self {
        isolation(type.unwrap())
    }
}

// MARK: - JustifyContentProperty

/// Specifies the alignment between the items inside a flexible container when the items do not use all available space
///
/// ```html
/// justify-content: center;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_justify-content.asp)
public class JustifyContentProperty: _Property {
    public var propertyKey: PropertyKey<JustifyContentType> { .justifyContent }
    public var propertyValue: JustifyContentType
    var _content = _PropertyContent<JustifyContentType>()

    public init (_ type: JustifyContentType) {
        propertyValue = type
    }

    public convenience init (_ type: State<JustifyContentType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, JustifyContentType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the alignment between the items inside a flexible container when the items do not use all available space
    public static var justifyContent: PropertyKey<JustifyContentType> { "justify-content".propertyKey() }
}

extension Stylesheet {
    /// Specifies the alignment between the items inside a flexible container when the items do not use all available space
    public typealias JustifyContent = JustifyContentProperty
}

extension CSSRulable {
    /// Specifies the alignment between the items inside a flexible container when the items do not use all available space
    public func justifyContent(_ type: JustifyContentType) -> Self {
        _addProperty(.justifyContent, type)
        return self
    }

    /// Specifies the alignment between the items inside a flexible container when the items do not use all available space
    public func justifyContent(_ type: State<JustifyContentType>) -> Self {
        _addProperty(JustifyContentProperty(type))
        return self
    }

    /// Specifies the alignment between the items inside a flexible container when the items do not use all available space
    public func justifyContent<V>(_ type: ExpressableState<V, JustifyContentType>) -> Self {
        justifyContent(type.unwrap())
    }
}

// MARK: - LeftProperty

/// Specifies the left position of a positioned element
///
/// ```html
/// left: 150px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_pos_left.asp)
public class LeftProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .left }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Specifies the left position of a positioned element
    public static var left: PropertyKey<UnitValue> { "left".propertyKey() }
}

extension Stylesheet {
    /// Specifies the left position of a positioned element
    public typealias Left = LeftProperty
}

extension CSSRulable {
    /// Specifies the left position of a positioned element
    public func left<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.left, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Specifies the left position of a positioned element
    public func left<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(LeftProperty(value))
        return self
    }

    /// Specifies the left position of a positioned element
    public func left<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        left(value.unwrap())
    }

    // MARK: Extended

    /// Specifies the left position of a positioned element
    public func left(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.left, UnitValue(value, unit))
        return self
    }

    /// Specifies the left position of a positioned element
    public func left(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.left, UnitValue(value, unit))
        return self
    }

    /// Specifies the left position of a positioned element
    public func left(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.left, UnitValue(value, unit))
        return self
    }

    /// Specifies the left position of a positioned element
    public func left<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.left, UnitValue(value, unit))
        return self
    }

    /// Specifies the left position of a positioned element
    public func left<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.left, UnitValue(value, unit))
        return self
    }

    /// Specifies the left position of a positioned element
    public func left<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.left, UnitValue(value, unit))
        return self
    }

    /// Specifies the left position of a positioned element
    public func left<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.left, UnitValue(value, unit))
        return self
    }

    /// Specifies the left position of a positioned element
    public func left(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.left, UnitValue(value, unit))
        return self
    }

    /// Specifies the left position of a positioned element
    public func left<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.left, UnitValue(value, unit))
        return self
    }
}

// MARK: - LetterSpacingProperty

/// Increases or decreases the space between characters in a text
///
/// ```html
/// letter-spacing: 3px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_text_letter-spacing.asp)
public class LetterSpacingProperty: _Property {
    public var propertyKey: PropertyKey<LetterSpacingType> { .letterSpacing }
    public var propertyValue: LetterSpacingType
    var _content = _PropertyContent<LetterSpacingType>()

    public init (_ type: LetterSpacingType) {
        propertyValue = type
    }

    public convenience init (_ type: State<LetterSpacingType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, LetterSpacingType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Increases or decreases the space between characters in a text
    public static var letterSpacing: PropertyKey<LetterSpacingType> { "letter-spacing".propertyKey() }
}

extension Stylesheet {
    /// Increases or decreases the space between characters in a text
    public typealias LetterSpacing = LetterSpacingProperty
}

extension CSSRulable {
    /// Increases or decreases the space between characters in a text
    public func letterSpacing(_ type: LetterSpacingType) -> Self {
        _addProperty(.letterSpacing, type)
        return self
    }

    /// Increases or decreases the space between characters in a text
    public func letterSpacing(_ type: State<LetterSpacingType>) -> Self {
        _addProperty(LetterSpacingProperty(type))
        return self
    }

    /// Increases or decreases the space between characters in a text
    public func letterSpacing<V>(_ type: ExpressableState<V, LetterSpacingType>) -> Self {
        letterSpacing(type.unwrap())
    }

    /// Increases or decreases the space between characters in a text
    public func letterSpacing<L: UnitValuable>(_ length: L) -> Self {
        letterSpacing(.length(length))
    }

    /// Increases or decreases the space between characters in a text
    public func letterSpacing<L: UnitValuable>(_ type: State<L>) -> Self {
        letterSpacing(type.map { .length($0) })
    }

    /// Increases or decreases the space between characters in a text
    public func letterSpacing<V, L: UnitValuable>(_ type: ExpressableState<V, L>) -> Self {
        letterSpacing(type.unwrap())
    }
}

// MARK: - LineBreakProperty

/// Specifies how/if to break lines
///
/// ```html
/// line-break: auto;
/// line-break: loose;
/// line-break: normal;
/// line-break: strict;
/// line-break: anywhere;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/line-break)
public class LineBreakProperty: _Property {
    public var propertyKey: PropertyKey<LineBreakType> { .lineBreak }
    public var propertyValue: LineBreakType
    var _content = _PropertyContent<LineBreakType>()

    public init (_ type: LineBreakType) {
        propertyValue = type
    }

    public convenience init (_ type: State<LineBreakType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, LineBreakType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies how/if to break lines
    public static var lineBreak: PropertyKey<LineBreakType> { "line-break".propertyKey() }
}

extension Stylesheet {
    /// Specifies how/if to break lines
    public typealias LineBreak = LineBreakProperty
}

extension CSSRulable {
    /// Specifies how/if to break lines
    public func lineBreak(_ type: LineBreakType) -> Self {
        _addProperty(.lineBreak, type)
        return self
    }

    /// Specifies how/if to break lines
    public func lineBreak(_ type: State<LineBreakType>) -> Self {
        _addProperty(LineBreakProperty(type))
        return self
    }

    /// Specifies how/if to break lines
    public func lineBreak<V>(_ type: ExpressableState<V, LineBreakType>) -> Self {
        lineBreak(type.unwrap())
    }
}

// MARK: - LineHeightProperty

/// Sets the line height
///
/// ```html
/// line-height: normal;
/// line-height: 1.6;
/// line-height: 80%;
/// line-height: 200%;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_dim_line-height.asp)
public class LineHeightProperty: _Property {
    public var propertyKey: PropertyKey<LineHeightType> { .lineHeight }
    public var propertyValue: LineHeightType
    var _content = _PropertyContent<LineHeightType>()

    public init (_ type: LineHeightType) {
        propertyValue = type
    }

    public convenience init (_ type: State<LineHeightType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, LineHeightType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the line height
    public static var lineHeight: PropertyKey<LineHeightType> { "line-height".propertyKey() }
}

extension Stylesheet {
    /// Sets the line height
    public typealias LineHeight = LineHeightProperty
}

extension CSSRulable {
    /// Sets the line height
    public func lineHeight(_ type: LineHeightType) -> Self {
        _addProperty(.lineHeight, type)
        return self
    }

    /// Sets the line height
    public func lineHeight(_ type: State<LineHeightType>) -> Self {
        _addProperty(LineHeightProperty(type))
        return self
    }

    /// Sets the line height
    public func lineHeight<V>(_ type: ExpressableState<V, LineHeightType>) -> Self {
        lineHeight(type.unwrap())
    }

    /// Sets the line height
    public func lineHeight<U: UnitValuable>(_ type: U) -> Self {
        lineHeight(.length(type))
    }

    /// Sets the line height
    public func lineHeight<U: UnitValuable>(_ type: State<U>) -> Self {
        lineHeight(type.map { .length($0) })
    }

    /// Sets the line height
    public func lineHeight<V, U: UnitValuable>(_ type: ExpressableState<V, U>) -> Self {
        lineHeight(type.unwrap())
    }
}

// MARK: - ListStyleImageProperty

/// Specifies an image as the list-item marker
///
/// ```html
/// ul {
///     list-style-image: url('sqpurple.gif');
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_list-style-image.asp)
public class ListStyleImageProperty: _Property {
    public var propertyKey: PropertyKey<URLValueContainer> { .listStyleImage }
    public var propertyValue: URLValueContainer
    var _content = _PropertyContent<URLValueContainer>()

    public init (_ v: URLValue) {
        propertyValue = URLValueContainer(v)
    }

    public convenience init (_ type: State<URLValue>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: .init($0)) }
    }

    public convenience init (_ type: State<String>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: .init($0)) }
    }

    public convenience init (_ type: State<URL>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: .init($0)) }
    }

    public convenience init <V>(_ type: ExpressableState<V, URLValue>) {
        self.init(type.unwrap())
    }

    public convenience init <V>(_ type: ExpressableState<V, String>) {
        self.init(type.unwrap())
    }

    public convenience init <V>(_ type: ExpressableState<V, URL>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies an image as the list-item marker
    public static var listStyleImage: PropertyKey<URLValueContainer> { "list-style-image".propertyKey() }
}

extension Stylesheet {
    /// Specifies an image as the list-item marker
    public typealias ListStyleImage = ListStyleImageProperty
}

extension CSSRulable {
    /// Specifies an image as the list-item marker
    public func listStyleImage(_ type: URLValue) -> Self {
        _addProperty(.listStyleImage, URLValueContainer(type))
        return self
    }

    /// Specifies an image as the list-item marker
    public func listStyleImage(_ type: State<URLValue>) -> Self {
        _addProperty(ListStyleImageProperty(type))
        return self
    }

    /// Specifies an image as the list-item marker
    public func listStyleImage(_ type: State<String>) -> Self {
        _addProperty(ListStyleImageProperty(type))
        return self
    }

    /// Specifies an image as the list-item marker
    public func listStyleImage(_ type: State<URL>) -> Self {
        _addProperty(ListStyleImageProperty(type))
        return self
    }

    /// Specifies an image as the list-item marker
    public func listStyleImage<V>(_ type: ExpressableState<V, URLValue>) -> Self {
        listStyleImage(type.unwrap())
    }

    /// Specifies an image as the list-item marker
    public func listStyleImage<V>(_ type: ExpressableState<V, String>) -> Self {
        listStyleImage(type.unwrap())
    }

    /// Specifies an image as the list-item marker
    public func listStyleImage<V>(_ type: ExpressableState<V, URL>) -> Self {
        listStyleImage(type.unwrap())
    }
}

// MARK: - ListStylePositionProperty

/// Specifies the position of the list-item markers (bullet points)
///
/// ```html
/// list-style-position: outside;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_list-style-position.asp)
public class ListStylePositionProperty: _Property {
    public var propertyKey: PropertyKey<ListStylePositionType> { .listStylePosition }
    public var propertyValue: ListStylePositionType
    var _content = _PropertyContent<ListStylePositionType>()

    public init (_ type: ListStylePositionType) {
        propertyValue = type
    }

    public convenience init (_ type: State<ListStylePositionType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, ListStylePositionType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the position of the list-item markers (bullet points)
    public static var listStylePosition: PropertyKey<ListStylePositionType> { "list-style-position".propertyKey() }
}

extension Stylesheet {
    /// Specifies the position of the list-item markers (bullet points)
    public typealias ListStylePosition = ListStylePositionProperty
}

extension CSSRulable {
    /// Specifies the position of the list-item markers (bullet points)
    public func listStylePosition(_ type: ListStylePositionType) -> Self {
        _addProperty(.listStylePosition, type)
        return self
    }

    /// Specifies the position of the list-item markers (bullet points)
    public func listStylePosition(_ type: State<ListStylePositionType>) -> Self {
        _addProperty(ListStylePositionProperty(type))
        return self
    }

    /// Specifies the position of the list-item markers (bullet points)
    public func listStylePosition<V>(_ type: ExpressableState<V, ListStylePositionType>) -> Self {
        listStylePosition(type.unwrap())
    }
}

// MARK: - ListStyleProperty

/// Sets all the properties for a list in one declaration
///
/// ```html
/// ul {
///     list-style: square inside url("sqpurple.gif");
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_list-style.asp)
public class ListStyleProperty: _Property {
    public var propertyKey: PropertyKey<ListStyleValue> { .listStyle }
    public var propertyValue: ListStyleValue
    var _content = _PropertyContent<ListStyleValue>()

    public init (_ type: ListStyleTypeType, _ position: ListStylePositionType, _ url: URLValue) {
        propertyValue = ListStyleValue(type, position, url)
    }
}

extension PropertyKey {
    /// Sets all the properties for a list in one declaration
    public static var listStyle: PropertyKey<ListStyleValue> { "list-style".propertyKey() }
}

public struct ListStyleValue: CustomStringConvertible {
    let value: String

    public init (_ type: ListStyleTypeType, _ position: ListStylePositionType, _ url: URLValue) {
        value = [type.value, position.value, url.urlValue].joined(separator: " ")
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Sets all the properties for a list in one declaration
    public typealias ListStyle = ListStyleProperty
}

extension CSSRulable {
    /// Sets all the properties for a list in one declaration
    public func listStyle(_ type: ListStyleTypeType, _ position: ListStylePositionType, _ url: URLValue) -> Self {
        _addProperty(ListStyleProperty(type, position, url))
        return self
    }
}

// MARK: - ListStyleTypeProperty

/// Specifies the type of list-item marker
///
/// ```html
/// ul.a { list-style-type: circle; }
/// ul.b { list-style-type: square; }
/// ol.c { list-style-type: upper-roman; }
/// ol.d { list-style-type: lower-alpha; }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_list-style-type.asp)
public class ListStyleTypeProperty: _Property {
    public var propertyKey: PropertyKey<ListStyleTypeType> { .listStyleType }
    public var propertyValue: ListStyleTypeType
    var _content = _PropertyContent<ListStyleTypeType>()

    public init (_ type: ListStyleTypeType) {
        propertyValue = type
    }

    public convenience init (_ type: State<ListStyleTypeType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, ListStyleTypeType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the type of list-item marker
    public static var listStyleType: PropertyKey<ListStyleTypeType> { "list-style-type".propertyKey() }
}

extension Stylesheet {
    /// Specifies the type of list-item marker
    public typealias ListStyleType = ListStyleTypeProperty
}

extension CSSRulable {
    /// Specifies the type of list-item marker
    public func listStyleType(_ type: ListStyleTypeType) -> Self {
        _addProperty(.listStyleType, type)
        return self
    }

    /// Specifies the type of list-item marker
    public func listStyleType(_ type: State<ListStyleTypeType>) -> Self {
        _addProperty(ListStyleTypeProperty(type))
        return self
    }

    /// Specifies the type of list-item marker
    public func listStyleType<V>(_ type: ExpressableState<V, ListStyleTypeType>) -> Self {
        listStyleType(type.unwrap())
    }
}

// MARK: - MarginBottomProperty

/// Sets the bottom margin of an element
///
/// ```html
/// margin-bottom: 25px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_margin-bottom.asp)
public class MarginBottomProperty: _Property {
    public var propertyKey: PropertyKey<MarginSideValue> { .marginBottom }
    public var propertyValue: MarginSideValue
    var _content = _PropertyContent<MarginSideValue>()

    public init(_ value: MarginSideValue) {
        propertyValue = value
    }
    
    public convenience init<U: UnitValuable>(_ value: U) {
        self.init(.init(UnitValue(value.value.doubleValue, value.unit)))
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: .init(UnitValue($0.value.doubleValue, $0.unit))) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    public static var marginBottom: PropertyKey<MarginSideValue> { "margin-bottom".propertyKey() }
}

public final class MarginSideValue: Autoable, CustomStringConvertible, _PropertyValueInnerChangeable {
    @State public var value = ""
    
    var _changeHandler = {}

    public init (_ value: String) {
        self.value = value
        $value.listen {
            self._changeHandler()
        }
    }
    
    public convenience init (_ type: UnitValueType) {
        self.init(type.value)
    }
    
    public convenience init (_ value: Double, _ unit: Unit) {
        self.init("\(value)\(unit.rawValue)")
    }
    
    public convenience init<U: UnitValuable>(_ value: U) {
        self.init(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen {
            self.value = "\($0.value.doubleValue)\($0.unit.rawValue)"
        }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Sets the bottom margin of an element
    public typealias MarginBottom = MarginBottomProperty
}

extension CSSRulable {
    /// Sets the bottom margin of an element
    public func marginBottom(_ value: MarginSideValue) -> Self {
        _addProperty(.marginBottom, value)
        return self
    }
    
    /// Sets the bottom margin of an element
    public func marginBottom<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.marginBottom, .init(UnitValue(value.value.doubleValue, value.unit)))
        return self
    }

    /// Sets the bottom margin of an element
    public func marginBottom<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(MarginBottomProperty(value))
        return self
    }

    /// Sets the bottom margin of an element
    public func marginBottom<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        marginBottom(value.unwrap())
    }

    // MARK: Extended

    /// Sets the bottom margin of an element
    public func marginBottom(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.marginBottom, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the bottom margin of an element
    public func marginBottom(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.marginBottom, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the bottom margin of an element
    public func marginBottom(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.marginBottom, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the bottom margin of an element
    public func marginBottom<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.marginBottom, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the bottom margin of an element
    public func marginBottom<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.marginBottom, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the bottom margin of an element
    public func marginBottom<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.marginBottom, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the bottom margin of an element
    public func marginBottom<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.marginBottom, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the bottom margin of an element
    public func marginBottom(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.marginBottom, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginBottom<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.marginBottom, .init(UnitValue(value, unit)))
        return self
    }
}

// MARK: - MarginLeftProperty

/// Sets the left margin of an element
///
/// ```html
/// margin-left: 30px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_margin-left.asp)
public class MarginLeftProperty: _Property {
    public var propertyKey: PropertyKey<MarginSideValue> { .marginLeft }
    public var propertyValue: MarginSideValue
    var _content = _PropertyContent<MarginSideValue>()

    public init(_ value: MarginSideValue) {
        propertyValue = value
    }

    public convenience init<U: UnitValuable>(_ value: U) {
        self.init(.init(UnitValue(value.value.doubleValue, value.unit)))
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: .init(UnitValue($0.value.doubleValue, $0.unit))) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    public static var marginLeft: PropertyKey<MarginSideValue> { "margin-left".propertyKey() }
}

extension Stylesheet {
    /// Sets the left margin of an element
    public typealias MarginLeft = MarginLeftProperty
}

extension CSSRulable {
    /// Sets the left margin of an element
    public func marginLeft(_ value: MarginSideValue) -> Self {
        _addProperty(.marginLeft, value)
        return self
    }
    
    /// Sets the left margin of an element
    public func marginLeft<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.marginLeft, .init(UnitValue(value.value.doubleValue, value.unit)))
        return self
    }

    /// Sets the left margin of an element
    public func marginLeft<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(MarginLeftProperty(value))
        return self
    }

    /// Sets the left margin of an element
    public func marginLeft<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        marginLeft(value.unwrap())
    }

    // MARK: Extended

    /// Sets the left margin of an element
    public func marginLeft(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.marginLeft, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the left margin of an element
    public func marginLeft(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.marginLeft, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the left margin of an element
    public func marginLeft(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.marginLeft, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the left margin of an element
    public func marginLeft<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.marginLeft, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the left margin of an element
    public func marginLeft<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.marginLeft, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the left margin of an element
    public func marginLeft<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.marginLeft, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the left margin of an element
    public func marginLeft<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.marginLeft, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the left margin of an element
    public func marginLeft(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.marginLeft, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the left margin of an element
    public func marginLeft<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.marginLeft, .init(UnitValue(value, unit)))
        return self
    }
}

// MARK: - MarginProperty

/// Sets all the margin properties in one declaration
///
/// ```html
/// margin: 35px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_margin.asp)
public class MarginProperty: _Property {
    public var propertyKey: PropertyKey<MarginValue> { .margin }
    public var propertyValue: MarginValue
    var _content = _PropertyContent<MarginValue>()

    public init <U: UnitValuable>(all: U) {
        propertyValue = MarginValue(all: all)
    }

    public convenience init <A>(all type: A) where A: StateConvertible, A.Value: UnitValuable {
        let state = type.stateValue
        self.init(all: state.wrappedValue)
        state.listen { self._changed(to: MarginValue(all: $0)) }
    }

    // MARK: V/H

    public init <U1: UnitValuable, U2: UnitValuable>(v: U1, h: U2) {
        propertyValue = MarginValue(v: v, h: h)
    }
    
    public init <U2: UnitValuable>(v: MarginSideValue, h: U2) {
        propertyValue = MarginValue(v: v, h: h)
    }
    
    public init <U1: UnitValuable>(v: U1, h: MarginSideValue) {
        propertyValue = MarginValue(v: v, h: h)
    }

    public convenience init <A, U2: UnitValuable>(v: A, h: U2) where A: StateConvertible, A.Value: UnitValuable {
        let v = v.stateValue
        self.init(v: v.wrappedValue, h: h)
        v.listen { self._changed(to: MarginValue(v: $0, h: h)) }
    }
    
    public convenience init <A>(v: A, h: MarginSideValue) where A: StateConvertible, A.Value: UnitValuable {
        let v = v.stateValue
        self.init(v: v.wrappedValue, h: h)
        v.listen { self._changed(to: MarginValue(v: $0, h: h)) }
    }

    public convenience init <U1: UnitValuable, B>(v: U1, h: B) where B: StateConvertible, B.Value: UnitValuable {
        let h = h.stateValue
        self.init(v: v, h: h.wrappedValue)
        h.listen { self._changed(to: MarginValue(v: v, h: $0)) }
    }
    
    public convenience init <B>(v: MarginSideValue, h: B) where B: StateConvertible, B.Value: UnitValuable {
        let h = h.stateValue
        self.init(v: v, h: h.wrappedValue)
        h.listen { self._changed(to: MarginValue(v: v, h: $0)) }
    }

    public convenience init <A, B>(v: A, h: B) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        let v = v.stateValue
        let h = h.stateValue
        self.init(v: v.wrappedValue, h: h.wrappedValue)
        v.listen { self._changed(to: MarginValue(v: $0, h: h.wrappedValue)) }
        h.listen { self._changed(to: MarginValue(v: v.wrappedValue, h: $0)) }
    }

    // MARK: Top/H/Bottom

    public init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable>(top: U1, h: U2, bottom: U3) {
        propertyValue = MarginValue(top: top, h: h, bottom: bottom)
    }
    
    public init <U1: UnitValuable, U3: UnitValuable>(top: U1, h: MarginSideValue, bottom: U3) {
        propertyValue = MarginValue(top: top, h: h, bottom: bottom)
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, A>(top: A, h: U1, bottom: U2) where A: StateConvertible, A.Value: UnitValuable {
        let top = top.stateValue
        self.init(top: top.wrappedValue, h: h, bottom: bottom)
        top.listen { self._changed(to: MarginValue(top: $0, h: h, bottom: bottom)) }
    }
    
    public convenience init <U3: UnitValuable, A>(top: A, h: MarginSideValue, bottom: U3) where A: StateConvertible, A.Value: UnitValuable {
        let top = top.stateValue
        self.init(top: top.wrappedValue, h: h, bottom: bottom)
        top.listen { self._changed(to: MarginValue(top: $0, h: h, bottom: bottom)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, B>(top: U1, h: B, bottom: U2) where B: StateConvertible, B.Value: UnitValuable {
        let h = h.stateValue
        self.init(top: top, h: h.wrappedValue, bottom: bottom)
        h.listen { self._changed(to: MarginValue(top: top, h: $0, bottom: bottom)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, C>(top: U1, h: U2, bottom: C) where C: StateConvertible, C.Value: UnitValuable {
        let bottom = bottom.stateValue
        self.init(top: top, h: h, bottom: bottom.wrappedValue)
        bottom.listen { self._changed(to: MarginValue(top: top, h: h, bottom: $0)) }
    }
    
    public convenience init <U1: UnitValuable, C>(top: U1, h: MarginSideValue, bottom: C) where C: StateConvertible, C.Value: UnitValuable {
        let bottom = bottom.stateValue
        self.init(top: top, h: h, bottom: bottom.wrappedValue)
        bottom.listen { self._changed(to: MarginValue(top: top, h: h, bottom: $0)) }
    }

    public convenience init <U1: UnitValuable, A, B>(top: A, h: B, bottom: U1) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        let top = top.stateValue
        let h = h.stateValue
        self.init(top: top.wrappedValue, h: h.wrappedValue, bottom: bottom)
        top.listen { self._changed(to: MarginValue(top: $0, h: h.wrappedValue, bottom: bottom)) }
        h.listen { self._changed(to: MarginValue(top: top.wrappedValue, h: $0, bottom: bottom)) }
    }

    public convenience init <U1: UnitValuable, A, C>(top: A, h: U1, bottom: C) where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let top = top.stateValue
        let bottom = bottom.stateValue
        self.init(top: top.wrappedValue, h: h, bottom: bottom.wrappedValue)
        top.listen { self._changed(to: MarginValue(top: $0, h: h, bottom: bottom.wrappedValue)) }
        bottom.listen { self._changed(to: MarginValue(top: top.wrappedValue, h: h, bottom: $0)) }
    }
    
    public convenience init <A, C>(top: A, h: MarginSideValue, bottom: C) where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let top = top.stateValue
        let bottom = bottom.stateValue
        self.init(top: top.wrappedValue, h: h, bottom: bottom.wrappedValue)
        top.listen { self._changed(to: MarginValue(top: $0, h: h, bottom: bottom.wrappedValue)) }
        bottom.listen { self._changed(to: MarginValue(top: top.wrappedValue, h: h, bottom: $0)) }
    }

    public convenience init <U1: UnitValuable, B, C>(top: U1, h: B, bottom: C) where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let h = h.stateValue
        let bottom = bottom.stateValue
        self.init(top: top, h: h.wrappedValue, bottom: bottom.wrappedValue)
        h.listen { self._changed(to: MarginValue(top: top, h: $0, bottom: bottom.wrappedValue)) }
        bottom.listen { self._changed(to: MarginValue(top: top, h: h.wrappedValue, bottom: $0)) }
    }

    public convenience init <A, B, C>(top: A, h: B, bottom: C) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let top = top.stateValue
        let h = h.stateValue
        let bottom = bottom.stateValue
        self.init(top: top.wrappedValue, h: h.wrappedValue, bottom: bottom.wrappedValue)
        top.listen { self._changed(to: MarginValue(top: $0, h: h.wrappedValue, bottom: bottom.wrappedValue)) }
        h.listen { self._changed(to: MarginValue(top: top.wrappedValue, h: $0, bottom: bottom.wrappedValue)) }
        bottom.listen { self._changed(to: MarginValue(top: top.wrappedValue, h: h.wrappedValue, bottom: $0)) }
    }

    // MARK: Top/Right/Bottom/Left

    public init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, U4: UnitValuable>(top: U1, right: U2, bottom: U3, left: U4) {
        propertyValue = MarginValue(top: top, right: right, bottom: bottom, left: left)
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, A>(top: A, right: U1, bottom: U2, left: U3) where A: StateConvertible, A.Value: UnitValuable {
        let top = top.stateValue
        self.init(top: top.wrappedValue, right: right, bottom: bottom, left: left)
        top.listen { self._changed(to: MarginValue(top: $0, right: right, bottom: bottom, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, B>(top: U1, right: B, bottom: U2, left: U3) where B: StateConvertible, B.Value: UnitValuable {
        let right = right.stateValue
        self.init(top: top, right: right.wrappedValue, bottom: bottom, left: left)
        right.listen { self._changed(to: MarginValue(top: top, right: $0, bottom: bottom, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, C>(top: U1, right: U2, bottom: C, left: U3) where C: StateConvertible, C.Value: UnitValuable {
        let bottom = bottom.stateValue
        self.init(top: top, right: right, bottom: bottom.wrappedValue, left: left)
        bottom.listen { self._changed(to: MarginValue(top: top, right: right, bottom: $0, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, D>(top: U1, right: U2, bottom: U3, left: D) where D: StateConvertible, D.Value: UnitValuable {
        let left = left.stateValue
        self.init(top: top, right: right, bottom: bottom, left: left.wrappedValue)
        left.listen { self._changed(to: MarginValue(top: top, right: right, bottom: bottom, left: $0)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, A, B>(top: A, right: B, bottom: U1, left: U2) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        let top = top.stateValue
        let right = right.stateValue
        self.init(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom, left: left)
        top.listen { self._changed(to: MarginValue(top: $0, right: right.wrappedValue, bottom: bottom, left: left)) }
        right.listen { self._changed(to: MarginValue(top: top.wrappedValue, right: $0, bottom: bottom, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, A, C>(top: A, right: U1, bottom: C, left: U2) where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let top = top.stateValue
        let bottom = bottom.stateValue
        self.init(top: top.wrappedValue, right: right, bottom: bottom.wrappedValue, left: left)
        top.listen { self._changed(to: MarginValue(top: $0, right: right, bottom: bottom.wrappedValue, left: left)) }
        bottom.listen { self._changed(to: MarginValue(top: top.wrappedValue, right: right, bottom: $0, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, A, D>(top: A, right: U1, bottom: U2, left: D) where A: StateConvertible, A.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let top = top.stateValue
        let left = left.stateValue
        self.init(top: top.wrappedValue, right: right, bottom: bottom, left: left.wrappedValue)
        top.listen { self._changed(to: MarginValue(top: $0, right: right, bottom: bottom, left: left.wrappedValue)) }
        left.listen { self._changed(to: MarginValue(top: top.wrappedValue, right: right, bottom: bottom, left: $0)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, B, C>(top: U1, right: B, bottom: C, left: U2) where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let right = right.stateValue
        let bottom = bottom.stateValue
        self.init(top: top, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left)
        right.listen { self._changed(to: MarginValue(top: top, right: $0, bottom: bottom.wrappedValue, left: left)) }
        bottom.listen { self._changed(to: MarginValue(top: top, right: right.wrappedValue, bottom: $0, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, B, D>(top: U1, right: B, bottom: U2, left: D) where B: StateConvertible, B.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let right = right.stateValue
        let left = left.stateValue
        self.init(top: top, right: right.wrappedValue, bottom: bottom, left: left.wrappedValue)
        right.listen { self._changed(to: MarginValue(top: top, right: $0, bottom: bottom, left: left.wrappedValue)) }
        left.listen { self._changed(to: MarginValue(top: top, right: right.wrappedValue, bottom: bottom, left: $0)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, C, D>(top: U1, right: U2, bottom: C, left: D) where C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let bottom = bottom.stateValue
        let left = left.stateValue
        self.init(top: top, right: right, bottom: bottom.wrappedValue, left: left.wrappedValue)
        bottom.listen { self._changed(to: MarginValue(top: top, right: right, bottom: $0, left: left.wrappedValue)) }
        left.listen { self._changed(to: MarginValue(top: top, right: right, bottom: bottom.wrappedValue, left: $0)) }
    }

    public convenience init <U1: UnitValuable, A, B, C>(top: A, right: B, bottom: C, left: U1) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let top = top.stateValue
        let right = right.stateValue
        let bottom = bottom.stateValue
        self.init(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left)
        top.listen { self._changed(to: MarginValue(top: $0, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left)) }
        right.listen { self._changed(to: MarginValue(top: top.wrappedValue, right: $0, bottom: bottom.wrappedValue, left: left)) }
        bottom.listen { self._changed(to: MarginValue(top: top.wrappedValue, right: right.wrappedValue, bottom: $0, left: left)) }
    }

    public convenience init <U1: UnitValuable, A, B, D>(top: A, right: B, bottom: U1, left: D) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let top = top.stateValue
        let right = right.stateValue
        let left = left.stateValue
        self.init(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom, left: left.wrappedValue)
        top.listen { self._changed(to: MarginValue(top: $0, right: right.wrappedValue, bottom: bottom, left: left.wrappedValue)) }
        right.listen { self._changed(to: MarginValue(top: top.wrappedValue, right: $0, bottom: bottom, left: left.wrappedValue)) }
        left.listen { self._changed(to: MarginValue(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom, left: $0)) }
    }

    public convenience init <U1: UnitValuable, A, C, D>(top: A, right: U1, bottom: C, left: D) where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let top = top.stateValue
        let bottom = bottom.stateValue
        let left = left.stateValue
        self.init(top: top.wrappedValue, right: right, bottom: bottom.wrappedValue, left: left.wrappedValue)
        top.listen { self._changed(to: MarginValue(top: $0, right: right, bottom: bottom.wrappedValue, left: left.wrappedValue)) }
        bottom.listen { self._changed(to: MarginValue(top: top.wrappedValue, right: right, bottom: $0, left: left.wrappedValue)) }
        left.listen { self._changed(to: MarginValue(top: top.wrappedValue, right: right, bottom: bottom.wrappedValue, left: $0)) }
    }

    public convenience init <U1: UnitValuable, B, C, D>(top: U1, right: B, bottom: C, left: D) where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let right = right.stateValue
        let bottom = bottom.stateValue
        let left = left.stateValue
        self.init(top: top, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left.wrappedValue)
        right.listen { self._changed(to: MarginValue(top: top, right: $0, bottom: bottom.wrappedValue, left: left.wrappedValue)) }
        bottom.listen { self._changed(to: MarginValue(top: top, right: right.wrappedValue, bottom: $0, left: left.wrappedValue)) }
        left.listen { self._changed(to: MarginValue(top: top, right: right.wrappedValue, bottom: bottom.wrappedValue, left: $0)) }
    }

    public convenience init <A, B, C, D>(top: A, right: B, bottom: C, left: D) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let top = top.stateValue
        let right = right.stateValue
        let bottom = bottom.stateValue
        let left = left.stateValue
        self.init(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left.wrappedValue)
        top.listen { self._changed(to: MarginValue(top: $0, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left.wrappedValue)) }
        right.listen { self._changed(to: MarginValue(top: top.wrappedValue, right: $0, bottom: bottom.wrappedValue, left: left.wrappedValue)) }
        bottom.listen { self._changed(to: MarginValue(top: top.wrappedValue, right: right.wrappedValue, bottom: $0, left: left.wrappedValue)) }
        left.listen { self._changed(to: MarginValue(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom.wrappedValue, left: $0)) }
    }
}

extension PropertyKey {
    public static var margin: PropertyKey<MarginValue> { "margin".propertyKey() }
}

public class MarginValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    @State public var value = ""

    var _changeHandler = {}

    private static func values(_ v: CustomStringConvertible...) -> String {
        v.map { $0.description }.joined(separator: " ")
    }

    public init <U: UnitValuable>(all: U) {
        value = all.description
        $value.listen {
            self._changeHandler()
        }
    }
    
    public convenience init <A>(all: A) where A: StateConvertible, A.Value: UnitValuable {
        let all = all.stateValue
        self.init(all: all.wrappedValue)
        all.listen {
            self.value = $0.description
        }
    }

    public init <U1: UnitValuable, U2: UnitValuable>(v: U1, h: U2) {
        value = Self.values(v, h)
        $value.listen {
            self._changeHandler()
        }
    }
    
    public init <U2: UnitValuable>(v: MarginSideValue, h: U2) {
        value = Self.values(v, h)
        $value.listen {
            self._changeHandler()
        }
    }
    
    public init <U1: UnitValuable>(v: U1, h: MarginSideValue) {
        value = Self.values(v, h)
        $value.listen {
            self._changeHandler()
        }
    }

    public init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable>(top: U1, h: U2, bottom: U3) {
        value = Self.values(top, h, bottom)
        $value.listen {
            self._changeHandler()
        }
    }
    
    public init <U1: UnitValuable, U3: UnitValuable>(top: U1, h: MarginSideValue, bottom: U3) {
        value = Self.values(top, h, bottom)
        $value.listen {
            self._changeHandler()
        }
    }

    public init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, U4: UnitValuable>(top: U1, right: U2, bottom: U3, left: U4) {
        value = Self.values(top, right, bottom, left)
        $value.listen {
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Sets all the margin properties in one declaration
    public typealias Margin = MarginProperty
}

extension CSSRulable {
    /// Sets all the margin properties in one declaration
    public func margin<U: UnitValuable>(all: U) -> Self {
        _addProperty(.margin, MarginValue(all: all))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<A>(all type: A) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(.margin, MarginValue(all: type))
        return self
    }

    // MARK: V/H

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable>(v: U1, h: U2) -> Self {
        _addProperty(.margin, MarginValue(v: v, h: h))
        return self
    }
    
    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable>(v: U1, h: MarginSideValue) -> Self {
        _addProperty(.margin, MarginValue(v: v, h: h))
        return self
    }
    
    /// Sets all the margin properties in one declaration
    public func margin<U2: UnitValuable>(v: MarginSideValue, h: U2) -> Self {
        _addProperty(.margin, MarginValue(v: v, h: h))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, A>(v: A, h: U1) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(MarginProperty(v: v, h: h))
        return self
    }
    
    /// Sets all the margin properties in one declaration
    public func margin<A>(v: A, h: MarginSideValue) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(MarginProperty(v: v, h: h))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, B>(v: U1, h: B) -> Self where B: StateConvertible, B.Value: UnitValuable {
        _addProperty(MarginProperty(v: v, h: h))
        return self
    }
    
    /// Sets all the margin properties in one declaration
    public func margin<B>(v: MarginSideValue, h: B) -> Self where B: StateConvertible, B.Value: UnitValuable {
        _addProperty(MarginProperty(v: v, h: h))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<A, B>(v: A, h: B) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        _addProperty(MarginProperty(v: v, h: h))
        return self
    }

    // MARK: Top/H/Bottom

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable>(top: U1, h: U2, bottom: U3) -> Self {
        _addProperty(MarginProperty(top: top, h: h, bottom: bottom))
        return self
    }
    
    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U3: UnitValuable>(top: U1, h: MarginSideValue, bottom: U3) -> Self {
        _addProperty(MarginProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, A>(top: A, h: U1, bottom: U2) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, h: h, bottom: bottom))
        return self
    }
    
    /// Sets all the margin properties in one declaration
    public func margin<U2: UnitValuable, A>(top: A, h: MarginSideValue, bottom: U2) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, B>(top: U1, h: B, bottom: U2) -> Self where B: StateConvertible, B.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, C>(top: U1, h: U2, bottom: C) -> Self where C: StateConvertible, C.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, h: h, bottom: bottom))
        return self
    }
    
    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, C>(top: U1, h: MarginSideValue, bottom: C) -> Self where C: StateConvertible, C.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, A, B>(top: A, h: B, bottom: U1) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, A, C>(top: A, h: U1, bottom: C) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, h: h, bottom: bottom))
        return self
    }
    
    /// Sets all the margin properties in one declaration
    public func margin<A, C>(top: A, h: MarginSideValue, bottom: C) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, B, C>(top: U1, h: B, bottom: C) -> Self where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<A, B, C>(top: A, h: B, bottom: C) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, h: h, bottom: bottom))
        return self
    }

    // MARK: Top/Right/Bottom/Left

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, U4: UnitValuable>(top: U1, right: U2, bottom: U3, left: U4) -> Self {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, A>(top: A, right: U1, bottom: U2, left: U3) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, B>(top: U1, right: B, bottom: U2, left: U3) -> Self where B: StateConvertible, B.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, C>(top: U1, right: U2, bottom: C, left: U3) -> Self where C: StateConvertible, C.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, D>(top: U1, right: U2, bottom: U3, left: D) -> Self where D: StateConvertible, D.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, A, B>(top: A, right: B, bottom: U1, left: U2) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, A, C>(top: A, right: U1, bottom: C, left: U2) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, A, D>(top: A, right: U1, bottom: U2, left: D) -> Self where A: StateConvertible, A.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, B, C>(top: U1, right: B, bottom: C, left: U2) -> Self where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, B, D>(top: U1, right: B, bottom: U2, left: D) -> Self where B: StateConvertible, B.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, U2: UnitValuable, C, D>(top: U1, right: U2, bottom: C, left: D) -> Self where C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, A, B, C>(top: A, right: B, bottom: C, left: U1) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, A, B, D>(top: A, right: B, bottom: U1, left: D) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, A, C, D>(top: A, right: U1, bottom: C, left: D) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<U1: UnitValuable, B, C, D>(top: U1, right: B, bottom: C, left: D) -> Self where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// Sets all the margin properties in one declaration
    public func margin<A, B, C, D>(top: A, right: B, bottom: C, left: D) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(MarginProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }
}

// MARK: - MarginRightProperty

/// Sets the right margin of an element
///
/// ```html
/// margin-right: 150px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_margin-right.asp)
public class MarginRightProperty: _Property {
    public var propertyKey: PropertyKey<MarginSideValue> { .marginRight }
    public var propertyValue: MarginSideValue
    var _content = _PropertyContent<MarginSideValue>()

    public init(_ value: MarginSideValue) {
        propertyValue = value
    }

    public convenience init<U: UnitValuable>(_ value: U) {
        self.init(.init(UnitValue(value.value.doubleValue, value.unit)))
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: .init(UnitValue($0.value.doubleValue, $0.unit))) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    public static var marginRight: PropertyKey<MarginSideValue> { "margin-right".propertyKey() }
}

extension Stylesheet {
    /// Sets the right margin of an element
    public typealias MarginRight = MarginRightProperty
}

extension CSSRulable {
    /// Sets the top margin of an element
    public func marginRight(_ value: MarginSideValue) -> Self {
        _addProperty(.marginRight, value)
        return self
    }
    
    /// Sets the right margin of an element
    public func marginRight<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.marginRight, .init(UnitValue(value.value.doubleValue, value.unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginRight<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(MarginRightProperty(value))
        return self
    }

    /// Sets the top margin of an element
    public func marginRight<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        marginRight(value.unwrap())
    }

    // MARK: Extended

    /// Sets the top margin of an element
    public func marginRight(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.marginRight, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginRight(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.marginRight, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginRight(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.marginRight, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginRight<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.marginRight, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginRight<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.marginRight, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginRight<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.marginRight, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginRight<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.marginRight, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginRight(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.marginRight, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginRight<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.marginRight, .init(UnitValue(value, unit)))
        return self
    }
}

// MARK: - MarginTopProperty

/// Sets the top margin of an element
///
/// ```html
/// margin-top: 25px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_margin-top.asp)
public class MarginTopProperty: _Property {
    public var propertyKey: PropertyKey<MarginSideValue> { .marginTop }
    public var propertyValue: MarginSideValue
    var _content = _PropertyContent<MarginSideValue>()

    public init(_ value: MarginSideValue) {
        propertyValue = value
    }

    public convenience init<U: UnitValuable>(_ value: U) {
        self.init(.init(UnitValue(value.value.doubleValue, value.unit)))
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: .init(UnitValue($0.value.doubleValue, $0.unit))) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Sets the top margin of an element
    public static var marginTop: PropertyKey<MarginSideValue> { "margin-top".propertyKey() }
}

extension Stylesheet {
    /// Sets the top margin of an element
    public typealias MarginTop = MarginTopProperty
}

extension CSSRulable {
    /// Sets the top margin of an element
    public func marginTop(_ value: MarginSideValue) -> Self {
        _addProperty(.marginTop, value)
        return self
    }
    
    /// Sets the top margin of an element
    public func marginTop<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.marginTop, .init(UnitValue(value.value.doubleValue, value.unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginTop<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(MarginTopProperty(value))
        return self
    }

    /// Sets the top margin of an element
    public func marginTop<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        marginTop(value.unwrap())
    }

    // MARK: Extended

    /// Sets the top margin of an element
    public func marginTop(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.marginTop, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginTop(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.marginTop, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginTop(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.marginTop, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginTop<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.marginTop, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginTop<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.marginTop, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginTop<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.marginTop, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginTop<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.marginTop, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginTop(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.marginTop, .init(UnitValue(value, unit)))
        return self
    }

    /// Sets the top margin of an element
    public func marginTop<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.marginTop, .init(UnitValue(value, unit)))
        return self
    }
}

// MARK: - MaxHeightProperty

/// Sets the maximum height of an element
///
/// ```html
/// max-height: 50px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_dim_max-height.asp)
public class MaxHeightProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .maxHeight }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    public static var maxHeight: PropertyKey<UnitValue> { "max-height".propertyKey() }
}

extension Stylesheet {
    /// Sets the maximum height of an element
    public typealias MaxHeight = MaxHeightProperty
}

extension CSSRulable {
    /// Sets the maximum height of an element
    public func maxHeight<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.maxHeight, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Sets the maximum height of an element
    public func maxHeight<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(MaxHeightProperty(value))
        return self
    }

    /// Sets the maximum height of an element
    public func maxHeight<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        maxHeight(value.unwrap())
    }

    // MARK: Extended

    /// Sets the maximum height of an element
    public func maxHeight(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.maxHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum height of an element
    public func maxHeight(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.maxHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum height of an element
    public func maxHeight(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.maxHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum height of an element
    public func maxHeight<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.maxHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum height of an element
    public func maxHeight<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.maxHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum height of an element
    public func maxHeight<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.maxHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum height of an element
    public func maxHeight<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.maxHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum height of an element
    public func maxHeight(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.maxHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum height of an element
    public func maxHeight<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.maxHeight, UnitValue(value, unit))
        return self
    }
}

// MARK: - MaxWidthProperty

/// Sets the maximum width of an element
///
/// ```html
/// max-width: 150px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_dim_max-width.asp)
public class MaxWidthProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .maxWidth }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Sets the maximum width of an element
    public static var maxWidth: PropertyKey<UnitValue> { "max-width".propertyKey() }
}

extension Stylesheet {
    /// Sets the maximum width of an element
    public typealias MaxWidth = MaxWidthProperty
}

extension CSSRulable {
    /// Sets the maximum width of an element
    public func maxWidth<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.maxWidth, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Sets the maximum width of an element
    public func maxWidth<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(MaxWidthProperty(value))
        return self
    }

    /// Sets the maximum width of an element
    public func maxWidth<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        maxWidth(value.unwrap())
    }

    // MARK: Extended

    /// Sets the maximum width of an element
    public func maxWidth(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.maxWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum width of an element
    public func maxWidth(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.maxWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum width of an element
    public func maxWidth(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.maxWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum width of an element
    public func maxWidth<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.maxWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum width of an element
    public func maxWidth<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.maxWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum width of an element
    public func maxWidth<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.maxWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum width of an element
    public func maxWidth<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.maxWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum width of an element
    public func maxWidth(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.maxWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the maximum width of an element
    public func maxWidth<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.maxWidth, UnitValue(value, unit))
        return self
    }
}

// MARK: - MinHeightProperty

/// Sets the minimum height of an element
///
/// ```html
/// min-height: 200px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_dim_min-height.asp)
public class MinHeightProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .minHeight }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Sets the minimum height of an element
    public static var minHeight: PropertyKey<UnitValue> { "min-height".propertyKey() }
}

extension Stylesheet {
    /// Sets the minimum height of an element
    public typealias MinHeight = MinHeightProperty
}

extension CSSRulable {
    /// Sets the minimum height of an element
    public func minHeight<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.minHeight, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Sets the minimum height of an element
    public func minHeight<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(MinHeightProperty(value))
        return self
    }

    /// Sets the minimum height of an element
    public func minHeight<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        minHeight(value.unwrap())
    }

    // MARK: Extended

    /// Sets the minimum height of an element
    public func minHeight(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.minHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum height of an element
    public func minHeight(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.minHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum height of an element
    public func minHeight(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.minHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum height of an element
    public func minHeight<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.minHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum height of an element
    public func minHeight<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.minHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum height of an element
    public func minHeight<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.minHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum height of an element
    public func minHeight<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.minHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum height of an element
    public func minHeight(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.minHeight, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum height of an element
    public func minHeight<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.minHeight, UnitValue(value, unit))
        return self
    }
}

// MARK: - MinWidthProperty

/// Sets the minimum width of an element
///
/// ```html
/// min-width: 500px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_dim_min-width.asp)
public class MinWidthProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .minWidth }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Sets the minimum width of an element
    public static var minWidth: PropertyKey<UnitValue> { "min-width".propertyKey() }
}

extension Stylesheet {
    /// Sets the minimum width of an element
    public typealias MinWidth = MinWidthProperty
}

extension CSSRulable {
    /// Sets the minimum width of an element
    public func minWidth<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.minWidth, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Sets the minimum width of an element
    public func minWidth<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(MinWidthProperty(value))
        return self
    }

    /// Sets the minimum width of an element
    public func minWidth<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        minWidth(value.unwrap())
    }

    // MARK: Extended

    /// Sets the minimum width of an element
    public func minWidth(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.minWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum width of an element
    public func minWidth(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.minWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum width of an element
    public func minWidth(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.minWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum width of an element
    public func minWidth<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.minWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum width of an element
    public func minWidth<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.minWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum width of an element
    public func minWidth<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.minWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum width of an element
    public func minWidth<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.minWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum width of an element
    public func minWidth(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.minWidth, UnitValue(value, unit))
        return self
    }

    /// Sets the minimum width of an element
    public func minWidth<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.minWidth, UnitValue(value, unit))
        return self
    }
}

// MARK: - MixBlendModeProperty

/// Specifies how an element's content should blend with its direct parent background
///
/// ```html
/// .container {
///     background-color: red;
/// }
///
/// .container img {
///     mix-blend-mode: darken;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_mix-blend-mode.asp)
public class MixBlendModeProperty: _Property {
    public var propertyKey: PropertyKey<MixBlendModeType> { .mixBlendMode }
    public var propertyValue: MixBlendModeType
    var _content = _PropertyContent<MixBlendModeType>()

    public init (_ type: MixBlendModeType) {
        propertyValue = type
    }

    public convenience init (_ type: State<MixBlendModeType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, MixBlendModeType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies how an element's content should blend with its direct parent background
    public static var mixBlendMode: PropertyKey<MixBlendModeType> { "mix-blend-mode".propertyKey() }
}

extension Stylesheet {
    /// Specifies how an element's content should blend with its direct parent background
    public typealias MixBlendMode = MixBlendModeProperty
}

extension CSSRulable {
    /// Specifies how an element's content should blend with its direct parent background
    public func mixBlendMode(_ type: MixBlendModeType) -> Self {
        _addProperty(.mixBlendMode, type)
        return self
    }

    /// Specifies how an element's content should blend with its direct parent background
    public func mixBlendMode(_ type: State<MixBlendModeType>) -> Self {
        _addProperty(MixBlendModeProperty(type))
        return self
    }

    /// Specifies how an element's content should blend with its direct parent background
    public func mixBlendMode<V>(_ type: ExpressableState<V, MixBlendModeType>) -> Self {
        mixBlendMode(type.unwrap())
    }
}

// MARK: - ObjectFitProperty

/// Specifies how the contents of a replaced element should be fitted to the box established by its used height and width
///
/// ```html
/// object-fit: cover;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_object-fit.asp)
public class ObjectFitProperty: _Property {
    public var propertyKey: PropertyKey<ObjectFitType> { .objectFit }
    public var propertyValue: ObjectFitType
    var _content = _PropertyContent<ObjectFitType>()

    public init (_ type: ObjectFitType) {
        propertyValue = type
    }

    public convenience init (_ type: State<ObjectFitType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, ObjectFitType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies how the contents of a replaced element should be fitted to the box established by its used height and width
    public static var objectFit: PropertyKey<ObjectFitType> { "object-fit".propertyKey() }
}

extension Stylesheet {
    /// Specifies how the contents of a replaced element should be fitted to the box established by its used height and width
    public typealias ObjectFit = ObjectFitProperty
}

extension CSSRulable {
    /// Specifies how the contents of a replaced element should be fitted to the box established by its used height and width
    public func objectFit(_ type: ObjectFitType) -> Self {
        _addProperty(.objectFit, type)
        return self
    }

    /// Specifies how the contents of a replaced element should be fitted to the box established by its used height and width
    public func objectFit(_ type: State<ObjectFitType>) -> Self {
        _addProperty(ObjectFitProperty(type))
        return self
    }

    /// Specifies how the contents of a replaced element should be fitted to the box established by its used height and width
    public func objectFit<V>(_ type: ExpressableState<V, ObjectFitType>) -> Self {
        objectFit(type.unwrap())
    }
}

// MARK: - ObjectPositionProperty

/// Specifies the alignment of the replaced element inside its box
///
/// ```html
/// object-position: center top;
/// object-position: 100px 50px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_object-position.asp)
public class ObjectPositionProperty: _Property {
    public var propertyKey: PropertyKey<ObjectPositionValue> { .objectPosition }
    public var propertyValue: ObjectPositionValue
    var _content = _PropertyContent<ObjectPositionValue>()

    public init (x: ObjectPositionXType) {
        propertyValue = .init(x: x)
    }

    public init <X>(x: X) where X: StateConvertible, X.Value == ObjectPositionXType {
        propertyValue = .init(x: x)
    }

    public init (y: ObjectPositionYType) {
        propertyValue = .init(y: y)
    }

    public init <Y>(y: Y) where Y: StateConvertible, Y.Value == ObjectPositionYType {
        propertyValue = .init(y: y)
    }

    public init (x: ObjectPositionXType, y: ObjectPositionYType) {
        propertyValue = .init(x: x, y: y)
    }

    public init <X>(x: X, y: ObjectPositionYType) where X: StateConvertible, X.Value == ObjectPositionXType {
        propertyValue = .init(x: x, y: y)
    }

    public init <Y>(x: ObjectPositionXType, y: Y) where Y: StateConvertible, Y.Value == ObjectPositionYType {
        propertyValue = .init(x: x, y: y)
    }

    public init <X, Y>(x: X, y: Y) where X: StateConvertible, X.Value == ObjectPositionXType, Y: StateConvertible, Y.Value == ObjectPositionYType {
        propertyValue = .init(x: x, y: y)
    }

    public init<X: UnitValuable>(x: X) {
        propertyValue = .init(x: x)
    }

    public init<X>(x: X) where X: StateConvertible, X.Value: UnitValuable {
        propertyValue = .init(x: x)
    }

    public init<Y: UnitValuable>(y: Y) {
        propertyValue = .init(y: y)
    }

    public init<Y>(y: Y) where Y: StateConvertible, Y.Value: UnitValuable {
        propertyValue = .init(y: y)
    }

    public init<X: UnitValuable, Y: UnitValuable>(x: X, y: Y) {
        propertyValue = .init(x: x, y: y)
    }

    public init<X, Y: UnitValuable>(x: X, y: Y) where X: StateConvertible, X.Value: UnitValuable {
        propertyValue = .init(x: x, y: y)
    }

    public init<X: UnitValuable, Y>(x: X, y: Y) where Y: StateConvertible, Y.Value: UnitValuable {
        propertyValue = .init(x: x, y: y)
    }

    public init<X, Y>(x: X, y: Y) where X: StateConvertible, X.Value: UnitValuable, Y: StateConvertible, Y.Value: UnitValuable {
        propertyValue = .init(x: x, y: y)
    }

    public init<X: UnitValuable>(x: X, y: ObjectPositionYType) {
        propertyValue = .init(x: x, y: y)
    }

    public init<X>(x: X, y: ObjectPositionYType) where X: StateConvertible, X.Value: UnitValuable {
        propertyValue = .init(x: x, y: y)
    }

    public init<Y: UnitValuable>(x: ObjectPositionXType, y: Y) {
        propertyValue = .init(x: x, y: y)
    }

    public init<Y>(x: ObjectPositionXType, y: Y) where Y: StateConvertible, Y.Value: UnitValuable {
        propertyValue = .init(x: x, y: y)
    }
}

extension PropertyKey {
    /// Specifies the alignment of the replaced element inside its box
    public static var objectPosition: PropertyKey<ObjectPositionValue> { "object-position".propertyKey() }
}

public class ObjectPositionValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (x: ObjectPositionXType) {
        value = x.value
    }

    public convenience init <X>(x: X) where X: StateConvertible, X.Value == ObjectPositionXType {
        let x = x.stateValue
        self.init(x: x.wrappedValue)
        x.listen {
            self.value = $0.value
            self._changeHandler()
        }
    }

    public init (y: ObjectPositionYType) {
        value = y.value
    }

    public convenience init <Y>(y: Y) where Y: StateConvertible, Y.Value == ObjectPositionYType {
        let y = y.stateValue
        self.init(y: y.wrappedValue)
        y.listen {
            self.value = $0.value
            self._changeHandler()
        }
    }

    public init (x: ObjectPositionXType, y: ObjectPositionYType) {
        value = [x.value, y.value].joined(separator: " ")
    }

    public convenience init <X>(x: X, y: ObjectPositionYType) where X: StateConvertible, X.Value == ObjectPositionXType {
        let x = x.stateValue
        self.init(x: x.wrappedValue, y: y)
        x.listen {
            self.value = [$0.value, y.value].joined(separator: " ")
            self._changeHandler()
        }
    }

    public convenience init <Y>(x: ObjectPositionXType, y: Y) where Y: StateConvertible, Y.Value == ObjectPositionYType {
        let y = y.stateValue
        self.init(x: x, y: y.wrappedValue)
        y.listen {
            self.value = [x.value, $0.value].joined(separator: " ")
            self._changeHandler()
        }
    }

    public convenience init <X, Y>(x: X, y: Y) where X: StateConvertible, X.Value == ObjectPositionXType, Y: StateConvertible, Y.Value == ObjectPositionYType {
        let x = x.stateValue
        let y = y.stateValue
        self.init(x: x.wrappedValue, y: y.wrappedValue)
        x.listen {
            self.value = [$0.value, y.wrappedValue.value].joined(separator: " ")
            self._changeHandler()
        }
        y.listen {
            self.value = [x.wrappedValue.value, $0.value].joined(separator: " ")
            self._changeHandler()
        }
    }

    public init<X: UnitValuable>(x: X) {
        value = x.description
    }

    public convenience init<X>(x: X) where X: StateConvertible, X.Value: UnitValuable {
        let x = x.stateValue
        self.init(x: x.wrappedValue)
        x.listen {
            self.value = $0.description
            self._changeHandler()
        }
    }

    public init<Y: UnitValuable>(y: Y) {
        value = y.description
    }

    public convenience init<Y>(y: Y) where Y: StateConvertible, Y.Value: UnitValuable {
        let y = y.stateValue
        self.init(y: y.wrappedValue)
        y.listen {
            self.value = $0.description
            self._changeHandler()
        }
    }

    public init<X: UnitValuable, Y: UnitValuable>(x: X, y: Y) {
        value = [x.description, y.description].joined(separator: " ")
    }

    public convenience init<X, Y: UnitValuable>(x: X, y: Y) where X: StateConvertible, X.Value: UnitValuable {
        let x = x.stateValue
        self.init(x: x.wrappedValue, y: y)
        x.listen {
            self.value = [$0.description, y.description].joined(separator: " ")
            self._changeHandler()
        }
    }

    public convenience init<X: UnitValuable, Y>(x: X, y: Y) where Y: StateConvertible, Y.Value: UnitValuable {
        let y = y.stateValue
        self.init(x: x, y: y.wrappedValue)
        y.listen {
            self.value = [x.description, $0.description].joined(separator: " ")
            self._changeHandler()
        }
    }

    public convenience init<X, Y>(x: X, y: Y) where X: StateConvertible, X.Value: UnitValuable, Y: StateConvertible, Y.Value: UnitValuable {
        let x = x.stateValue
        let y = y.stateValue
        self.init(x: x.wrappedValue, y: y.wrappedValue)
        x.listen {
            self.value = [$0.description, y.wrappedValue.description].joined(separator: " ")
            self._changeHandler()
        }
        y.listen {
            self.value = [x.wrappedValue.description, $0.description].joined(separator: " ")
            self._changeHandler()
        }
    }

    public init<X: UnitValuable>(x: X, y: ObjectPositionYType) {
        value = [x.description, y.value].joined(separator: " ")
    }

    public convenience init<X>(x: X, y: ObjectPositionYType) where X: StateConvertible, X.Value: UnitValuable {
        let x = x.stateValue
        self.init(x: x.wrappedValue, y: y)
        x.listen {
            self.value = [$0.description, y.value].joined(separator: " ")
            self._changeHandler()
        }
    }

    public init<Y: UnitValuable>(x: ObjectPositionXType, y: Y) {
        value = [x.value, y.description].joined(separator: " ")
    }

    public convenience init<Y>(x: ObjectPositionXType, y: Y) where Y: StateConvertible, Y.Value: UnitValuable {
        let y = y.stateValue
        self.init(x: x, y: y.wrappedValue)
        y.listen {
            self.value = [x.value, $0.description].joined(separator: " ")
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Specifies the alignment of the replaced element inside its box
    public typealias ObjectPosition = ObjectPositionProperty
}

extension CSSRulable {
    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition(x: ObjectPositionXType) -> Self {
        _addProperty(ObjectPositionProperty(x: x))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<X>(x: X) -> Self where X: StateConvertible, X.Value == ObjectPositionXType {
        _addProperty(ObjectPositionProperty(x: x))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition(y: ObjectPositionYType) -> Self {
        _addProperty(ObjectPositionProperty(y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<Y>(y: Y) -> Self where Y: StateConvertible, Y.Value == ObjectPositionYType {
        _addProperty(ObjectPositionProperty(y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition(x: ObjectPositionXType, y: ObjectPositionYType) -> Self {
        _addProperty(ObjectPositionProperty(x: x, y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<X>(x: X, y: ObjectPositionYType) -> Self where X: StateConvertible, X.Value == ObjectPositionXType {
        _addProperty(ObjectPositionProperty(x: x, y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<Y>(x: ObjectPositionXType, y: Y) -> Self where Y: StateConvertible, Y.Value == ObjectPositionYType {
        _addProperty(ObjectPositionProperty(x: x, y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<X, Y>(x: X, y: Y) -> Self where X: StateConvertible, X.Value == ObjectPositionXType, Y: StateConvertible, Y.Value == ObjectPositionYType {
        _addProperty(ObjectPositionProperty(x: x, y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<X: UnitValuable>(x: X) -> Self {
        _addProperty(ObjectPositionProperty(x: x))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<X>(x: X) -> Self where X: StateConvertible, X.Value: UnitValuable {
        _addProperty(ObjectPositionProperty(x: x))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<Y: UnitValuable>(y: Y) -> Self {
        _addProperty(ObjectPositionProperty(y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<Y>(y: Y) -> Self where Y: StateConvertible, Y.Value: UnitValuable {
        _addProperty(ObjectPositionProperty(y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<X: UnitValuable, Y: UnitValuable>(x: X, y: Y) -> Self {
        _addProperty(ObjectPositionProperty(x: x, y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<X, Y: UnitValuable>(x: X, y: Y) -> Self where X: StateConvertible, X.Value: UnitValuable {
        _addProperty(ObjectPositionProperty(x: x, y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<X: UnitValuable, Y>(x: X, y: Y) -> Self where Y: StateConvertible, Y.Value: UnitValuable {
        _addProperty(ObjectPositionProperty(x: x, y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<X, Y>(x: X, y: Y) -> Self where X: StateConvertible, X.Value: UnitValuable, Y: StateConvertible, Y.Value: UnitValuable {
        _addProperty(ObjectPositionProperty(x: x, y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<X: UnitValuable>(x: X, y: ObjectPositionYType) -> Self {
        _addProperty(ObjectPositionProperty(x: x, y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<X>(x: X, y: ObjectPositionYType) -> Self where X: StateConvertible, X.Value: UnitValuable {
        _addProperty(ObjectPositionProperty(x: x, y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<Y: UnitValuable>(x: ObjectPositionXType, y: Y) -> Self {
        _addProperty(ObjectPositionProperty(x: x, y: y))
        return self
    }

    /// Specifies the alignment of the replaced element inside its box
    public func objectPosition<Y>(x: ObjectPositionXType, y: Y) -> Self where Y: StateConvertible, Y.Value: UnitValuable {
        _addProperty(ObjectPositionProperty(x: x, y: y))
        return self
    }
}

// MARK: - OpacityProperty

/// Sets the opacity level for an element
///
/// ```html
/// opacity: 0.5
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_opacity.asp)
public class OpacityProperty: _Property {
    public var propertyKey: PropertyKey<NumericValueContainer> { .opacity }
    public var propertyValue: NumericValueContainer
    var _content = _PropertyContent<NumericValueContainer>()

    public init (_ v: NumericValue) {
        propertyValue = NumericValueContainer(v)
    }

    public convenience init (_ type: State<NumericValue>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: NumericValueContainer($0)) }
    }

    public convenience init <V>(_ type: ExpressableState<V, NumericValue>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the opacity level for an element
    public static var opacity: PropertyKey<NumericValueContainer> { "opacity".propertyKey() }
}

extension Stylesheet {
    /// Sets the opacity level for an element
    public typealias Opacity = OpacityProperty
}

extension CSSRulable {
    /// Sets the opacity level for an element
    public func opacity(_ value: NumericValue) -> Self {
        _addProperty(.opacity, NumericValueContainer(value))
        return self
    }

    /// Sets the opacity level for an element
    public func opacity(_ value: State<NumericValue>) -> Self {
        _addProperty(OpacityProperty(value))
        return self
    }

    /// Sets the opacity level for an element
    public func opacity<V>(_ value: ExpressableState<V, NumericValue>) -> Self {
        opacity(value.unwrap())
    }
}

// MARK: - OrderProperty

/// Sets the order of the flexible item, relative to the rest
///
/// ```html
/// order: 1;
/// order: 2;
/// order: 3;
/// order: 4;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_order.asp)
public class OrderProperty: _Property {
    public var propertyKey: PropertyKey<Int> { .order }
    public var propertyValue: Int
    var _content = _PropertyContent<Int>()

    public init (_ v: Int) {
        propertyValue = v
    }

    public convenience init (_ type: State<Int>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, Int>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the order of the flexible item, relative to the rest
    public static var order: PropertyKey<Int> { "order".propertyKey() }
}

extension Stylesheet {
    /// Sets the order of the flexible item, relative to the rest
    public typealias Order = OrderProperty
}

extension CSSRulable {
    /// Sets the order of the flexible item, relative to the rest
    public func order(_ type: Int) -> Self {
        _addProperty(.order, type)
        return self
    }

    /// Sets the order of the flexible item, relative to the rest
    public func order(_ type: State<Int>) -> Self {
        _addProperty(OrderProperty(type))
        return self
    }

    /// Sets the order of the flexible item, relative to the rest
    public func order<V>(_ type: ExpressableState<V, Int>) -> Self {
        order(type.unwrap())
    }
}

// MARK: - OrphansProperty

/// Sets the minimum number of lines that must be left at the bottom of a page when a page break occurs inside an element
///
/// ```html
/// orphans: 2;
/// orphans: 3;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/orphans)
public class OrphansProperty: _Property {
    public var propertyKey: PropertyKey<Int> { .orphans }
    public var propertyValue: Int
    var _content = _PropertyContent<Int>()

    public init (_ v: Int) {
        propertyValue = v
    }

    public convenience init (_ type: State<Int>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, Int>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the minimum number of lines that must be left at the bottom of a page when a page break occurs inside an element
    public static var orphans: PropertyKey<Int> { "orphans".propertyKey() }
}

extension Stylesheet {
    /// Sets the minimum number of lines that must be left at the bottom of a page when a page break occurs inside an element
    public typealias Orphans = OrphansProperty
}

extension CSSRulable {
    /// Sets the minimum number of lines that must be left at the bottom of a page when a page break occurs inside an element
    public func orphans(_ type: Int) -> Self {
        _addProperty(.orphans, type)
        return self
    }

    /// Sets the minimum number of lines that must be left at the bottom of a page when a page break occurs inside an element
    public func orphans(_ type: State<Int>) -> Self {
        _addProperty(OrphansProperty(type))
        return self
    }

    /// Sets the minimum number of lines that must be left at the bottom of a page when a page break occurs inside an element
    public func orphans<V>(_ type: ExpressableState<V, Int>) -> Self {
        orphans(type.unwrap())
    }
}

// MARK: - OutlineColorProperty

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
        _addProperty(.outlineColor, type)
        return self
    }

    /// Sets the color of an outline
    public func outlineColor<S>(_ type: S) -> Self where S: StateConvertible, S.Value == Color {
        _addProperty(OutlineColorProperty(type.stateValue))
        return self
    }
}

// MARK: - OutlineOffsetProperty

/// Offsets an outline, and draws it beyond the border edge
///
/// ```html
/// outline-offset: 15px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_outline-offset.asp)
public class OutlineOffsetProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .outlineOffset }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    public static var outlineOffset: PropertyKey<UnitValue> { "outline-offset".propertyKey() }
}

extension Stylesheet {
    /// Offsets an outline, and draws it beyond the border edge
    public typealias OutlineOffset = OutlineOffsetProperty
}

extension CSSRulable {
    /// Offsets an outline, and draws it beyond the border edge
    public func outlineOffset<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.outlineOffset, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Offsets an outline, and draws it beyond the border edge
    public func outlineOffset<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(OutlineOffsetProperty(value))
        return self
    }

    /// Offsets an outline, and draws it beyond the border edge
    public func outlineOffset<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        outlineOffset(value.unwrap())
    }

    // MARK: Extended

    /// Offsets an outline, and draws it beyond the border edge
    public func outlineOffset(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.outlineOffset, UnitValue(value, unit))
        return self
    }

    /// Offsets an outline, and draws it beyond the border edge
    public func outlineOffset(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.outlineOffset, UnitValue(value, unit))
        return self
    }

    /// Offsets an outline, and draws it beyond the border edge
    public func outlineOffset(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.outlineOffset, UnitValue(value, unit))
        return self
    }

    /// Offsets an outline, and draws it beyond the border edge
    public func outlineOffset<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.outlineOffset, UnitValue(value, unit))
        return self
    }

    /// Offsets an outline, and draws it beyond the border edge
    public func outlineOffset<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.outlineOffset, UnitValue(value, unit))
        return self
    }

    /// Offsets an outline, and draws it beyond the border edge
    public func outlineOffset<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.outlineOffset, UnitValue(value, unit))
        return self
    }

    /// Offsets an outline, and draws it beyond the border edge
    public func outlineOffset<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.outlineOffset, UnitValue(value, unit))
        return self
    }

    /// Offsets an outline, and draws it beyond the border edge
    public func outlineOffset(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.outlineOffset, UnitValue(value, unit))
        return self
    }

    /// Offsets an outline, and draws it beyond the border edge
    public func outlineOffset<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.outlineOffset, UnitValue(value, unit))
        return self
    }
}

// MARK: - OutlineProperty

/// A shorthand property for the outline-width, outline-style, and the outline-color properties
///
/// ```html
/// outline: 5px dotted green;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_outline.asp)
public class OutlineProperty: _Property {
    public var propertyKey: PropertyKey<OutlineValue> { .outline }
    public var propertyValue: OutlineValue
    var _content = _PropertyContent<OutlineValue>()

    public init<U: UnitValuable>(width: U, style: OutlineStyleType, color: Color) {
        propertyValue = OutlineValue(width: width, style: style, color: color)
    }
}

extension PropertyKey {
    /// A shorthand property for the outline-width, outline-style, and the outline-color properties
    public static var outline: PropertyKey<OutlineValue> { "outline".propertyKey() }
}

public struct OutlineValue: CustomStringConvertible {
    let width: UnitValue
    let style: OutlineStyleType
    let color: Color

    public init<U: UnitValuable>(width: U, style: OutlineStyleType, color: Color) {
        self.width = UnitValue(width.value.doubleValue, width.unit)
        self.style = style
        self.color = color
    }

    public var description: String {
        [width.description, style.value, color.description].joined(separator: " ")
    }
}

extension Stylesheet {
    /// A shorthand property for the outline-width, outline-style, and the outline-color properties
    public typealias Outline = OutlineProperty
}

extension CSSRulable {
    /// A shorthand property for the outline-width, outline-style, and the outline-color properties
    public func outline<U: UnitValuable>(width: U, style: OutlineStyleType, color: Color) -> Self {
        _addProperty(OutlineProperty(width: width, style: style, color: color))
        return self
    }
}

// MARK: - OutlineStyleProperty

/// Sets the style of an outline
///
/// ```html
/// outline-style: dotted;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_outline-style.asp)
public class OutlineStyleProperty: _Property {
    public var propertyKey: PropertyKey<OutlineStyleType> { .outlineStyle }
    public var propertyValue: OutlineStyleType
    var _content = _PropertyContent<OutlineStyleType>()

    public init (_ type: OutlineStyleType) {
        propertyValue = type
    }

    public convenience init (_ type: State<OutlineStyleType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, OutlineStyleType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the style of an outline
    public static var outlineStyle: PropertyKey<OutlineStyleType> { "outline-style".propertyKey() }
}

extension Stylesheet {
    /// Sets the style of an outline
    public typealias OutlineStyle = OutlineStyleProperty
}

extension CSSRulable {
    /// Sets the style of an outline
    public func outlineStyle(_ type: OutlineStyleType) -> Self {
        _addProperty(.outlineStyle, type)
        return self
    }

    /// Sets the style of an outline
    public func outlineStyle(_ type: State<OutlineStyleType>) -> Self {
        _addProperty(OutlineStyleProperty(type))
        return self
    }

    /// Sets the style of an outline
    public func outlineStyle<V>(_ type: ExpressableState<V, OutlineStyleType>) -> Self {
        outlineStyle(type.unwrap())
    }
}

// MARK: - OutlineWidthProperty

/// Sets the width of an outline
///
/// ```html
/// outline-width: thick;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_outline-width.asp)
public class OutlineWidthProperty: _Property {
    public var propertyKey: PropertyKey<OutlineWidthType> { .outlineWidth }
    public var propertyValue: OutlineWidthType
    var _content = _PropertyContent<OutlineWidthType>()

    public init (_ type: OutlineWidthType) {
        propertyValue = type
    }

    public convenience init (_ type: State<OutlineWidthType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, OutlineWidthType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the width of an outline
    public static var outlineWidth: PropertyKey<OutlineWidthType> { "outline-width".propertyKey() }
}

extension Stylesheet {
    /// Sets the width of an outline
    public typealias OutlineWidth = OutlineWidthProperty
}

extension CSSRulable {
    /// Sets the width of an outline
    public func outlineWidth(_ type: OutlineWidthType) -> Self {
        _addProperty(.outlineWidth, type)
        return self
    }

    /// Sets the width of an outline
    public func outlineWidth(_ type: State<OutlineWidthType>) -> Self {
        _addProperty(OutlineWidthProperty(type))
        return self
    }

    /// Sets the width of an outline
    public func outlineWidth<V>(_ type: ExpressableState<V, OutlineWidthType>) -> Self {
        outlineWidth(type.unwrap())
    }

    /// Sets the width of an outline
    public func outlineWidth<U: UnitValuable>(_ type: U) -> Self {
        outlineWidth(.length(type))
    }

    /// Sets the width of an outline
    public func outlineWidth<U: UnitValuable>(_ type: State<U>) -> Self {
        outlineWidth(type.map { .length($0) })
    }

    /// Sets the width of an outline
    public func outlineWidth<V, U: UnitValuable>(_ type: ExpressableState<V, U>) -> Self {
        outlineWidth(type.unwrap())
    }
}

// MARK: - OverflowProperty

/// Specifies what happens if content overflows an element's box
///
/// ```html
/// overflow: scroll;
/// overflow: hidden;
/// overflow: auto;
/// overflow: visible;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/overflow)
public class OverflowProperty: _Property {
    public var propertyKey: PropertyKey<OverflowType> { .overflow }
    public var propertyValue: OverflowType
    var _content = _PropertyContent<OverflowType>()

    public init (_ type: OverflowType) {
        propertyValue = type
    }

    public convenience init (_ type: State<OverflowType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, OverflowType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies what happens if content overflows an element's box
    public static var overflow: PropertyKey<OverflowType> { "overflow".propertyKey() }
}

extension Stylesheet {
    /// Specifies what happens if content overflows an element's box
    public typealias Overflow = OverflowProperty
}

extension CSSRulable {
    /// Specifies what happens if content overflows an element's box
    public func overflow(_ type: OverflowType) -> Self {
        _addProperty(.overflow, type)
        return self
    }

    /// Specifies what happens if content overflows an element's box
    public func overflow(_ type: State<OverflowType>) -> Self {
        _addProperty(OverflowProperty(type))
        return self
    }

    /// Specifies what happens if content overflows an element's box
    public func overflow<V>(_ type: ExpressableState<V, OverflowType>) -> Self {
        overflow(type.unwrap())
    }
}

// MARK: - OverflowWrapProperty

/// Specifies whether or not the browser may break lines within words
/// in order to prevent overflow (when a string is too long to fit its containing box)
///
/// ```html
/// overflow-wrap: normal;
/// overflow-wrap: break-word;
/// overflow-wrap: anywhere;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/overflow-wrap)
public class OverflowWrapProperty: _Property {
    public var propertyKey: PropertyKey<OverflowWrapType> { .overflowWrap }
    public var propertyValue: OverflowWrapType
    var _content = _PropertyContent<OverflowWrapType>()

    public init (_ type: OverflowWrapType) {
        propertyValue = type
    }

    public convenience init (_ type: State<OverflowWrapType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, OverflowWrapType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether or not the browser may break lines within words
    /// in order to prevent overflow (when a string is too long to fit its containing box)
    public static var overflowWrap: PropertyKey<OverflowWrapType> { "overflow-wrap".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether or not the browser may break lines within words
    /// in order to prevent overflow (when a string is too long to fit its containing box)
    public typealias OverflowWrap = OverflowWrapProperty
}

extension CSSRulable {
    /// Specifies whether or not the browser may break lines within words
    /// in order to prevent overflow (when a string is too long to fit its containing box)
    public func overflowWrap(_ type: OverflowWrapType) -> Self {
        _addProperty(.overflowWrap, type)
        return self
    }

    /// Specifies whether or not the browser may break lines within words
    /// in order to prevent overflow (when a string is too long to fit its containing box)
    public func overflowWrap(_ type: State<OverflowWrapType>) -> Self {
        _addProperty(OverflowWrapProperty(type))
        return self
    }

    /// Specifies whether or not the browser may break lines within words
    /// in order to prevent overflow (when a string is too long to fit its containing box)
    public func overflowWrap<V>(_ type: ExpressableState<V, OverflowWrapType>) -> Self {
        overflowWrap(type.unwrap())
    }
}

// MARK: - OverflowXProperty

/// Specifies whether or not to clip the left/right edges of the content, if it overflows the element's content area
///
/// ```html
/// overflow-x: scroll;
/// overflow-x: hidden;
/// overflow-x: auto;
/// overflow-x: visible;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_overflow-x.asp)
public class OverflowXProperty: _Property {
    public var propertyKey: PropertyKey<OverflowType> { .overflowX }
    public var propertyValue: OverflowType
    var _content = _PropertyContent<OverflowType>()

    public init (_ type: OverflowType) {
        propertyValue = type
    }

    public convenience init (_ type: State<OverflowType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, OverflowType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether or not to clip the left/right edges of the content, if it overflows the element's content area
    public static var overflowX: PropertyKey<OverflowType> { "overflow-x".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether or not to clip the left/right edges of the content, if it overflows the element's content area
    public typealias OverflowX = OverflowXProperty
}

extension CSSRulable {
    /// Specifies whether or not to clip the left/right edges of the content, if it overflows the element's content area
    public func overflowX(_ type: OverflowType) -> Self {
        _addProperty(.overflowX, type)
        return self
    }

    /// Specifies whether or not to clip the left/right edges of the content, if it overflows the element's content area
    public func overflowX(_ type: State<OverflowType>) -> Self {
        _addProperty(OverflowXProperty(type))
        return self
    }

    /// Specifies whether or not to clip the left/right edges of the content, if it overflows the element's content area
    public func overflowX<V>(_ type: ExpressableState<V, OverflowType>) -> Self {
        overflowX(type.unwrap())
    }
}

// MARK: - OverflowYProperty

/// Specifies whether or not to clip the top/bottom edges of the content, if it overflows the element's content area
///
/// ```html
/// overflow-y: scroll;
/// overflow-y: hidden;
/// overflow-y: auto;
/// overflow-y: visible;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_overflow-y.asp)
public class OverflowYProperty: _Property {
    public var propertyKey: PropertyKey<OverflowType> { .overflowY }
    public var propertyValue: OverflowType
    var _content = _PropertyContent<OverflowType>()

    public init (_ type: OverflowType) {
        propertyValue = type
    }

    public convenience init (_ type: State<OverflowType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, OverflowType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether or not to clip the top/bottom edges of the content, if it overflows the element's content area
    public static var overflowY: PropertyKey<OverflowType> { "overflow-y".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether or not to clip the top/bottom edges of the content, if it overflows the element's content area
    public typealias OverflowY = OverflowYProperty
}

extension CSSRulable {
    /// Specifies whether or not to clip the top/bottom edges of the content, if it overflows the element's content area
    public func overflowY(_ type: OverflowType) -> Self {
        _addProperty(.overflowY, type)
        return self
    }

    /// Specifies whether or not to clip the top/bottom edges of the content, if it overflows the element's content area
    public func overflowY(_ type: State<OverflowType>) -> Self {
        _addProperty(OverflowYProperty(type))
        return self
    }

    /// Specifies whether or not to clip the top/bottom edges of the content, if it overflows the element's content area
    public func overflowY<V>(_ type: ExpressableState<V, OverflowType>) -> Self {
        overflowY(type.unwrap())
    }
}

// MARK: - PaddingBottomProperty

/// Sets the bottom padding of an element
///
/// ```html
/// padding-bottom: 25px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_padding-bottom.asp)
public class PaddingBottomProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .paddingBottom }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Sets the bottom padding of an element
    public static var paddingBottom: PropertyKey<UnitValue> { "padding-bottom".propertyKey() }
}

extension Stylesheet {
    /// Sets the bottom padding of an element
    public typealias PaddingBottom = PaddingBottomProperty
}

extension CSSRulable {
    /// Sets the bottom padding of an element
    public func paddingBottom<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.paddingBottom, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Sets the bottom padding of an element
    public func paddingBottom<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(PaddingBottomProperty(value))
        return self
    }

    /// Sets the bottom padding of an element
    public func paddingBottom<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        paddingBottom(value.unwrap())
    }

    // MARK: Extended

    /// Sets the bottom padding of an element
    public func paddingBottom(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.paddingBottom, UnitValue(value, unit))
        return self
    }

    /// Sets the bottom padding of an element
    public func paddingBottom(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.paddingBottom, UnitValue(value, unit))
        return self
    }

    /// Sets the bottom padding of an element
    public func paddingBottom(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.paddingBottom, UnitValue(value, unit))
        return self
    }

    /// Sets the bottom padding of an element
    public func paddingBottom<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.paddingBottom, UnitValue(value, unit))
        return self
    }

    /// Sets the bottom padding of an element
    public func paddingBottom<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.paddingBottom, UnitValue(value, unit))
        return self
    }

    /// Sets the bottom padding of an element
    public func paddingBottom<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.paddingBottom, UnitValue(value, unit))
        return self
    }

    /// Sets the bottom padding of an element
    public func paddingBottom<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.paddingBottom, UnitValue(value, unit))
        return self
    }

    /// Sets the bottom padding of an element
    public func paddingBottom(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.paddingBottom, UnitValue(value, unit))
        return self
    }

    /// Sets the bottom padding of an element
    public func paddingBottom<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.paddingBottom, UnitValue(value, unit))
        return self
    }
}

// MARK: - PaddingLeftProperty

/// Sets the left padding of an element
///
/// ```html
/// padding-left: 25px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_padding-left.asp)
public class PaddingLeftProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .paddingLeft }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Sets the left padding of an element
    public static var paddingLeft: PropertyKey<UnitValue> { "padding-left".propertyKey() }
}

extension Stylesheet {
    /// Sets the left padding of an element
    public typealias PaddingLeft = PaddingLeftProperty
}

extension CSSRulable {
    /// Sets the left padding of an element
    public func paddingLeft<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.paddingLeft, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Sets the left padding of an element
    public func paddingLeft<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(PaddingLeftProperty(value))
        return self
    }

    /// Sets the left padding of an element
    public func paddingLeft<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        paddingLeft(value.unwrap())
    }

    // MARK: Extended

    /// Sets the left padding of an element
    public func paddingLeft(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.paddingLeft, UnitValue(value, unit))
        return self
    }

    /// Sets the left padding of an element
    public func paddingLeft(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.paddingLeft, UnitValue(value, unit))
        return self
    }

    /// Sets the left padding of an element
    public func paddingLeft(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.paddingLeft, UnitValue(value, unit))
        return self
    }

    /// Sets the left padding of an element
    public func paddingLeft<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.paddingLeft, UnitValue(value, unit))
        return self
    }

    /// Sets the left padding of an element
    public func paddingLeft<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.paddingLeft, UnitValue(value, unit))
        return self
    }

    /// Sets the left padding of an element
    public func paddingLeft<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.paddingLeft, UnitValue(value, unit))
        return self
    }

    /// Sets the left padding of an element
    public func paddingLeft<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.paddingLeft, UnitValue(value, unit))
        return self
    }

    /// Sets the left padding of an element
    public func paddingLeft(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.paddingLeft, UnitValue(value, unit))
        return self
    }

    /// Sets the left padding of an element
    public func paddingLeft<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.paddingLeft, UnitValue(value, unit))
        return self
    }
}

// MARK: - PaddingProperty

/// A shorthand property for all the padding-* properties
///
/// ```html
/// padding: 35px 12px 16px 35px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_padding.asp)
public class PaddingProperty: _Property {
    public var propertyKey: PropertyKey<PaddingValue> { .padding }
    public var propertyValue: PaddingValue
    var _content = _PropertyContent<PaddingValue>()

    public init <U: UnitValuable>(all: U) {
        propertyValue = PaddingValue(all: all)
    }

    public convenience init <A>(all type: A) where A: StateConvertible, A.Value: UnitValuable {
        let state = type.stateValue
        self.init(all: state.wrappedValue)
        state.listen { self._changed(to: PaddingValue(all: $0)) }
    }

    // MARK: V/H

    public init <U1: UnitValuable, U2: UnitValuable>(v: U1, h: U2) {
        propertyValue = PaddingValue(v: v, h: h)
    }

    public convenience init <U1: UnitValuable, A>(v: A, h: U1) where A: StateConvertible, A.Value: UnitValuable {
        let v = v.stateValue
        self.init(v: v.wrappedValue, h: h)
        v.listen { self._changed(to: PaddingValue(v: $0, h: h)) }
    }

    public convenience init <U1: UnitValuable, B>(v: U1, h: B) where B: StateConvertible, B.Value: UnitValuable {
        let h = h.stateValue
        self.init(v: v, h: h.wrappedValue)
        h.listen { self._changed(to: PaddingValue(v: v, h: $0)) }
    }

    public convenience init <A, B>(v: A, h: B) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        let v = v.stateValue
        let h = h.stateValue
        self.init(v: v.wrappedValue, h: h.wrappedValue)
        v.listen { self._changed(to: PaddingValue(v: $0, h: h.wrappedValue)) }
        h.listen { self._changed(to: PaddingValue(v: v.wrappedValue, h: $0)) }
    }

    // MARK: Top/H/Bottom

    public init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable>(top: U1, h: U2, bottom: U3) {
        propertyValue = PaddingValue(top: top, h: h, bottom: bottom)
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, A>(top: A, h: U1, bottom: U2) where A: StateConvertible, A.Value: UnitValuable {
        let top = top.stateValue
        self.init(top: top.wrappedValue, h: h, bottom: bottom)
        top.listen { self._changed(to: PaddingValue(top: $0, h: h, bottom: bottom)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, B>(top: U1, h: B, bottom: U2) where B: StateConvertible, B.Value: UnitValuable {
        let h = h.stateValue
        self.init(top: top, h: h.wrappedValue, bottom: bottom)
        h.listen { self._changed(to: PaddingValue(top: top, h: $0, bottom: bottom)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, C>(top: U1, h: U2, bottom: C) where C: StateConvertible, C.Value: UnitValuable {
        let bottom = bottom.stateValue
        self.init(top: top, h: h, bottom: bottom.wrappedValue)
        bottom.listen { self._changed(to: PaddingValue(top: top, h: h, bottom: $0)) }
    }

    public convenience init <U1: UnitValuable, A, B>(top: A, h: B, bottom: U1) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        let top = top.stateValue
        let h = h.stateValue
        self.init(top: top.wrappedValue, h: h.wrappedValue, bottom: bottom)
        top.listen { self._changed(to: PaddingValue(top: $0, h: h.wrappedValue, bottom: bottom)) }
        h.listen { self._changed(to: PaddingValue(top: top.wrappedValue, h: $0, bottom: bottom)) }
    }

    public convenience init <U1: UnitValuable, A, C>(top: A, h: U1, bottom: C) where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let top = top.stateValue
        let bottom = bottom.stateValue
        self.init(top: top.wrappedValue, h: h, bottom: bottom.wrappedValue)
        top.listen { self._changed(to: PaddingValue(top: $0, h: h, bottom: bottom.wrappedValue)) }
        bottom.listen { self._changed(to: PaddingValue(top: top.wrappedValue, h: h, bottom: $0)) }
    }

    public convenience init <U1: UnitValuable, B, C>(top: U1, h: B, bottom: C) where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let h = h.stateValue
        let bottom = bottom.stateValue
        self.init(top: top, h: h.wrappedValue, bottom: bottom.wrappedValue)
        h.listen { self._changed(to: PaddingValue(top: top, h: $0, bottom: bottom.wrappedValue)) }
        bottom.listen { self._changed(to: PaddingValue(top: top, h: h.wrappedValue, bottom: $0)) }
    }

    public convenience init <A, B, C>(top: A, h: B, bottom: C) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let top = top.stateValue
        let h = h.stateValue
        let bottom = bottom.stateValue
        self.init(top: top.wrappedValue, h: h.wrappedValue, bottom: bottom.wrappedValue)
        top.listen { self._changed(to: PaddingValue(top: $0, h: h.wrappedValue, bottom: bottom.wrappedValue)) }
        h.listen { self._changed(to: PaddingValue(top: top.wrappedValue, h: $0, bottom: bottom.wrappedValue)) }
        bottom.listen { self._changed(to: PaddingValue(top: top.wrappedValue, h: h.wrappedValue, bottom: $0)) }
    }

    // MARK: Top/Right/Bottom/Left

    public init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, U4: UnitValuable>(top: U1, right: U2, bottom: U3, left: U4) {
        propertyValue = PaddingValue(top: top, right: right, bottom: bottom, left: left)
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, A>(top: A, right: U1, bottom: U2, left: U3) where A: StateConvertible, A.Value: UnitValuable {
        let top = top.stateValue
        self.init(top: top.wrappedValue, right: right, bottom: bottom, left: left)
        top.listen { self._changed(to: PaddingValue(top: $0, right: right, bottom: bottom, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, B>(top: U1, right: B, bottom: U2, left: U3) where B: StateConvertible, B.Value: UnitValuable {
        let right = right.stateValue
        self.init(top: top, right: right.wrappedValue, bottom: bottom, left: left)
        right.listen { self._changed(to: PaddingValue(top: top, right: $0, bottom: bottom, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, C>(top: U1, right: U2, bottom: C, left: U3) where C: StateConvertible, C.Value: UnitValuable {
        let bottom = bottom.stateValue
        self.init(top: top, right: right, bottom: bottom.wrappedValue, left: left)
        bottom.listen { self._changed(to: PaddingValue(top: top, right: right, bottom: $0, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, D>(top: U1, right: U2, bottom: U3, left: D) where D: StateConvertible, D.Value: UnitValuable {
        let left = left.stateValue
        self.init(top: top, right: right, bottom: bottom, left: left.wrappedValue)
        left.listen { self._changed(to: PaddingValue(top: top, right: right, bottom: bottom, left: $0)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, A, B>(top: A, right: B, bottom: U1, left: U2) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        let top = top.stateValue
        let right = right.stateValue
        self.init(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom, left: left)
        top.listen { self._changed(to: PaddingValue(top: $0, right: right.wrappedValue, bottom: bottom, left: left)) }
        right.listen { self._changed(to: PaddingValue(top: top.wrappedValue, right: $0, bottom: bottom, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, A, C>(top: A, right: U1, bottom: C, left: U2) where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let top = top.stateValue
        let bottom = bottom.stateValue
        self.init(top: top.wrappedValue, right: right, bottom: bottom.wrappedValue, left: left)
        top.listen { self._changed(to: PaddingValue(top: $0, right: right, bottom: bottom.wrappedValue, left: left)) }
        bottom.listen { self._changed(to: PaddingValue(top: top.wrappedValue, right: right, bottom: $0, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, A, D>(top: A, right: U1, bottom: U2, left: D) where A: StateConvertible, A.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let top = top.stateValue
        let left = left.stateValue
        self.init(top: top.wrappedValue, right: right, bottom: bottom, left: left.wrappedValue)
        top.listen { self._changed(to: PaddingValue(top: $0, right: right, bottom: bottom, left: left.wrappedValue)) }
        left.listen { self._changed(to: PaddingValue(top: top.wrappedValue, right: right, bottom: bottom, left: $0)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, B, C>(top: U1, right: B, bottom: C, left: U2) where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let right = right.stateValue
        let bottom = bottom.stateValue
        self.init(top: top, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left)
        right.listen { self._changed(to: PaddingValue(top: top, right: $0, bottom: bottom.wrappedValue, left: left)) }
        bottom.listen { self._changed(to: PaddingValue(top: top, right: right.wrappedValue, bottom: $0, left: left)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, B, D>(top: U1, right: B, bottom: U2, left: D) where B: StateConvertible, B.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let right = right.stateValue
        let left = left.stateValue
        self.init(top: top, right: right.wrappedValue, bottom: bottom, left: left.wrappedValue)
        right.listen { self._changed(to: PaddingValue(top: top, right: $0, bottom: bottom, left: left.wrappedValue)) }
        left.listen { self._changed(to: PaddingValue(top: top, right: right.wrappedValue, bottom: bottom, left: $0)) }
    }

    public convenience init <U1: UnitValuable, U2: UnitValuable, C, D>(top: U1, right: U2, bottom: C, left: D) where C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let bottom = bottom.stateValue
        let left = left.stateValue
        self.init(top: top, right: right, bottom: bottom.wrappedValue, left: left.wrappedValue)
        bottom.listen { self._changed(to: PaddingValue(top: top, right: right, bottom: $0, left: left.wrappedValue)) }
        left.listen { self._changed(to: PaddingValue(top: top, right: right, bottom: bottom.wrappedValue, left: $0)) }
    }

    public convenience init <U1: UnitValuable, A, B, C>(top: A, right: B, bottom: C, left: U1) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        let top = top.stateValue
        let right = right.stateValue
        let bottom = bottom.stateValue
        self.init(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left)
        top.listen { self._changed(to: PaddingValue(top: $0, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left)) }
        right.listen { self._changed(to: PaddingValue(top: top.wrappedValue, right: $0, bottom: bottom.wrappedValue, left: left)) }
        bottom.listen { self._changed(to: PaddingValue(top: top.wrappedValue, right: right.wrappedValue, bottom: $0, left: left)) }
    }

    public convenience init <U1: UnitValuable, A, B, D>(top: A, right: B, bottom: U1, left: D) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let top = top.stateValue
        let right = right.stateValue
        let left = left.stateValue
        self.init(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom, left: left.wrappedValue)
        top.listen { self._changed(to: PaddingValue(top: $0, right: right.wrappedValue, bottom: bottom, left: left.wrappedValue)) }
        right.listen { self._changed(to: PaddingValue(top: top.wrappedValue, right: $0, bottom: bottom, left: left.wrappedValue)) }
        left.listen { self._changed(to: PaddingValue(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom, left: $0)) }
    }

    public convenience init <U1: UnitValuable, A, C, D>(top: A, right: U1, bottom: C, left: D) where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let top = top.stateValue
        let bottom = bottom.stateValue
        let left = left.stateValue
        self.init(top: top.wrappedValue, right: right, bottom: bottom.wrappedValue, left: left.wrappedValue)
        top.listen { self._changed(to: PaddingValue(top: $0, right: right, bottom: bottom.wrappedValue, left: left.wrappedValue)) }
        bottom.listen { self._changed(to: PaddingValue(top: top.wrappedValue, right: right, bottom: $0, left: left.wrappedValue)) }
        left.listen { self._changed(to: PaddingValue(top: top.wrappedValue, right: right, bottom: bottom.wrappedValue, left: $0)) }
    }

    public convenience init <U1: UnitValuable, B, C, D>(top: U1, right: B, bottom: C, left: D) where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let right = right.stateValue
        let bottom = bottom.stateValue
        let left = left.stateValue
        self.init(top: top, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left.wrappedValue)
        right.listen { self._changed(to: PaddingValue(top: top, right: $0, bottom: bottom.wrappedValue, left: left.wrappedValue)) }
        bottom.listen { self._changed(to: PaddingValue(top: top, right: right.wrappedValue, bottom: $0, left: left.wrappedValue)) }
        left.listen { self._changed(to: PaddingValue(top: top, right: right.wrappedValue, bottom: bottom.wrappedValue, left: $0)) }
    }

    public convenience init <A, B, C, D>(top: A, right: B, bottom: C, left: D) where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        let top = top.stateValue
        let right = right.stateValue
        let bottom = bottom.stateValue
        let left = left.stateValue
        self.init(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left.wrappedValue)
        top.listen { self._changed(to: PaddingValue(top: $0, right: right.wrappedValue, bottom: bottom.wrappedValue, left: left.wrappedValue)) }
        right.listen { self._changed(to: PaddingValue(top: top.wrappedValue, right: $0, bottom: bottom.wrappedValue, left: left.wrappedValue)) }
        bottom.listen { self._changed(to: PaddingValue(top: top.wrappedValue, right: right.wrappedValue, bottom: $0, left: left.wrappedValue)) }
        left.listen { self._changed(to: PaddingValue(top: top.wrappedValue, right: right.wrappedValue, bottom: bottom.wrappedValue, left: $0)) }
    }
}

extension PropertyKey {
    /// A shorthand property for all the padding-* properties
    public static var padding: PropertyKey<PaddingValue> { "padding".propertyKey() }
}

public class PaddingValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    @State public var value = ""

    var _changeHandler = {}

    private static func values(_ v: CustomStringConvertible...) -> String {
        v.map { $0.description }.joined(separator: " ")
    }

    public init <U: UnitValuable>(all: U) {
        value = all.description
        $value.listen {
            self._changeHandler()
        }
    }

    public init <U1: UnitValuable, U2: UnitValuable>(v: U1, h: U2) {
        value = Self.values(v, h)
        $value.listen {
            self._changeHandler()
        }
    }

    public init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable>(top: U1, h: U2, bottom: U3) {
        value = Self.values(top, h, bottom)
        $value.listen {
            self._changeHandler()
        }
    }

    public init <U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, U4: UnitValuable>(top: U1, right: U2, bottom: U3, left: U4) {
        value = Self.values(top, right, bottom, left)
        $value.listen {
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// A shorthand property for all the padding-* properties
    public typealias Padding = PaddingProperty
}

extension CSSRulable {
    /// A shorthand property for all the padding-* properties
    public func padding<U: UnitValuable>(all: U) -> Self {
        _addProperty(PaddingProperty(all: all))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<A>(all type: A) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(PaddingProperty(all: type))
        return self
    }

    // MARK: V/H

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable>(v: U1, h: U2) -> Self {
        _addProperty(PaddingProperty(v: v, h: h))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, A>(v: A, h: U1) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(PaddingProperty(v: v, h: h))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, B>(v: U1, h: B) -> Self where B: StateConvertible, B.Value: UnitValuable {
        _addProperty(PaddingProperty(v: v, h: h))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<A, B>(v: A, h: B) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        _addProperty(PaddingProperty(v: v, h: h))
        return self
    }

    // MARK: Top/H/Bottom

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable>(top: U1, h: U2, bottom: U3) -> Self {
        _addProperty(PaddingProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, A>(top: A, h: U1, bottom: U2) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, B>(top: U1, h: B, bottom: U2) -> Self where B: StateConvertible, B.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, C>(top: U1, h: U2, bottom: C) -> Self where C: StateConvertible, C.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, A, B>(top: A, h: B, bottom: U1) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, A, C>(top: A, h: U1, bottom: C) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, B, C>(top: U1, h: B, bottom: C) -> Self where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, h: h, bottom: bottom))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<A, B, C>(top: A, h: B, bottom: C) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, h: h, bottom: bottom))
        return self
    }

    // MARK: Top/Right/Bottom/Left

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, U4: UnitValuable>(top: U1, right: U2, bottom: U3, left: U4) -> Self {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, A>(top: A, right: U1, bottom: U2, left: U3) -> Self where A: StateConvertible, A.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, B>(top: U1, right: B, bottom: U2, left: U3) -> Self where B: StateConvertible, B.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, C>(top: U1, right: U2, bottom: C, left: U3) -> Self where C: StateConvertible, C.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, U3: UnitValuable, D>(top: U1, right: U2, bottom: U3, left: D) -> Self where D: StateConvertible, D.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, A, B>(top: A, right: B, bottom: U1, left: U2) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, A, C>(top: A, right: U1, bottom: C, left: U2) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, A, D>(top: A, right: U1, bottom: U2, left: D) -> Self where A: StateConvertible, A.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, B, C>(top: U1, right: B, bottom: C, left: U2) -> Self where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, B, D>(top: U1, right: B, bottom: U2, left: D) -> Self where B: StateConvertible, B.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, U2: UnitValuable, C, D>(top: U1, right: U2, bottom: C, left: D) -> Self where C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, A, B, C>(top: A, right: B, bottom: C, left: U1) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, A, B, D>(top: A, right: B, bottom: U1, left: D) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, A, C, D>(top: A, right: U1, bottom: C, left: D) -> Self where A: StateConvertible, A.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<U1: UnitValuable, B, C, D>(top: U1, right: B, bottom: C, left: D) -> Self where B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }

    /// A shorthand property for all the padding-* properties
    public func padding<A, B, C, D>(top: A, right: B, bottom: C, left: D) -> Self where A: StateConvertible, A.Value: UnitValuable, B: StateConvertible, B.Value: UnitValuable, C: StateConvertible, C.Value: UnitValuable, D: StateConvertible, D.Value: UnitValuable {
        _addProperty(PaddingProperty(top: top, right: right, bottom: bottom, left: left))
        return self
    }
}

// MARK: - PaddingRightProperty

/// Sets the right padding of an element
///
/// ```html
/// padding-right: 25px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_padding-right.asp)
public class PaddingRightProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .paddingRight }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Sets the right padding of an element
    public static var paddingRight: PropertyKey<UnitValue> { "padding-right".propertyKey() }
}

extension Stylesheet {
    /// Sets the right padding of an element
    public typealias PaddingRight = PaddingRightProperty
}

extension CSSRulable {
    /// Sets the right padding of an element
    public func paddingRight<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.paddingRight, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Sets the right padding of an element
    public func paddingRight<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(PaddingRightProperty(value))
        return self
    }

    /// Sets the right padding of an element
    public func paddingRight<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        paddingRight(value.unwrap())
    }

    // MARK: Extended

    /// Sets the right padding of an element
    public func paddingRight(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.paddingRight, UnitValue(value, unit))
        return self
    }

    /// Sets the right padding of an element
    public func paddingRight(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.paddingRight, UnitValue(value, unit))
        return self
    }

    /// Sets the right padding of an element
    public func paddingRight(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.paddingRight, UnitValue(value, unit))
        return self
    }

    /// Sets the right padding of an element
    public func paddingRight<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.paddingRight, UnitValue(value, unit))
        return self
    }

    /// Sets the right padding of an element
    public func paddingRight<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.paddingRight, UnitValue(value, unit))
        return self
    }

    /// Sets the right padding of an element
    public func paddingRight<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.paddingRight, UnitValue(value, unit))
        return self
    }

    /// Sets the right padding of an element
    public func paddingRight<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.paddingRight, UnitValue(value, unit))
        return self
    }

    /// Sets the right padding of an element
    public func paddingRight(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.paddingRight, UnitValue(value, unit))
        return self
    }

    /// Sets the right padding of an element
    public func paddingRight<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.paddingRight, UnitValue(value, unit))
        return self
    }
}

// MARK: - PaddingTopProperty

/// Sets the top padding of an element
///
/// ```html
/// padding-top: 25px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_padding-top.asp)
public class PaddingTopProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .paddingTop }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Sets the top padding of an element
    public static var paddingTop: PropertyKey<UnitValue> { "padding-top".propertyKey() }
}

extension Stylesheet {
    /// Sets the top padding of an element
    public typealias PaddingTop = PaddingTopProperty
}

extension CSSRulable {
    /// Sets the top padding of an element
    public func paddingTop<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.paddingTop, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Sets the top padding of an element
    public func paddingTop<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(PaddingTopProperty(value))
        return self
    }

    /// Sets the top padding of an element
    public func paddingTop<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        paddingTop(value.unwrap())
    }

    // MARK: Extended

    /// Sets the top padding of an element
    public func paddingTop(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.paddingTop, UnitValue(value, unit))
        return self
    }

    /// Sets the top padding of an element
    public func paddingTop(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.paddingTop, UnitValue(value, unit))
        return self
    }

    /// Sets the top padding of an element
    public func paddingTop(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.paddingTop, UnitValue(value, unit))
        return self
    }

    /// Sets the top padding of an element
    public func paddingTop<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.paddingTop, UnitValue(value, unit))
        return self
    }

    /// Sets the top padding of an element
    public func paddingTop<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.paddingTop, UnitValue(value, unit))
        return self
    }

    /// Sets the top padding of an element
    public func paddingTop<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.paddingTop, UnitValue(value, unit))
        return self
    }

    /// Sets the top padding of an element
    public func paddingTop<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.paddingTop, UnitValue(value, unit))
        return self
    }

    /// Sets the top padding of an element
    public func paddingTop(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.paddingTop, UnitValue(value, unit))
        return self
    }

    /// Sets the top padding of an element
    public func paddingTop<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.paddingTop, UnitValue(value, unit))
        return self
    }
}

// MARK: - PageBreakAfterProperty

/// Sets the page-break behavior after an element
///
/// ```html
/// page-break-after: always;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_print_pageba.asp)
public class PageBreakAfterProperty: _Property {
    public var propertyKey: PropertyKey<PageBreakAfterType> { .pageBreakAfter }
    public var propertyValue: PageBreakAfterType
    var _content = _PropertyContent<PageBreakAfterType>()

    public init (_ type: PageBreakAfterType) {
        propertyValue = type
    }

    public convenience init (_ type: State<PageBreakAfterType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, PageBreakAfterType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the page-break behavior after an element
    public static var pageBreakAfter: PropertyKey<PageBreakAfterType> { "page-break-after".propertyKey() }
}

extension Stylesheet {
    /// Sets the page-break behavior after an element
    public typealias PageBreakAfter = PageBreakAfterProperty
}

extension CSSRulable {
    /// Sets the page-break behavior after an element
    public func pageBreakAfter(_ type: PageBreakAfterType) -> Self {
        _addProperty(.pageBreakAfter, type)
        return self
    }

    /// Sets the page-break behavior after an element
    public func pageBreakAfter(_ type: State<PageBreakAfterType>) -> Self {
        _addProperty(PageBreakAfterProperty(type))
        return self
    }

    /// Sets the page-break behavior after an element
    public func pageBreakAfter<V>(_ type: ExpressableState<V, PageBreakAfterType>) -> Self {
        pageBreakAfter(type.unwrap())
    }
}

// MARK: - PageBreakBeforeProperty

/// Sets the page-break behavior before an element
///
/// ```html
/// page-break-before: always;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_print_pagebb.asp)
public class PageBreakBeforeProperty: _Property {
    public var propertyKey: PropertyKey<PageBreakBeforeType> { .pageBreakBefore }
    public var propertyValue: PageBreakBeforeType
    var _content = _PropertyContent<PageBreakBeforeType>()

    public init (_ type: PageBreakBeforeType) {
        propertyValue = type
    }

    public convenience init (_ type: State<PageBreakBeforeType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, PageBreakBeforeType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the page-break behavior before an element
    public static var pageBreakBefore: PropertyKey<PageBreakBeforeType> { "page-break-before".propertyKey() }
}

extension Stylesheet {
    /// Sets the page-break behavior before an element
    public typealias PageBreakBefore = PageBreakBeforeProperty
}

extension CSSRulable {
    /// Sets the page-break behavior before an element
    public func pageBreakBefore(_ type: PageBreakBeforeType) -> Self {
        _addProperty(.pageBreakBefore, type)
        return self
    }

    /// Sets the page-break behavior before an element
    public func pageBreakBefore(_ type: State<PageBreakBeforeType>) -> Self {
        _addProperty(PageBreakBeforeProperty(type))
        return self
    }

    /// Sets the page-break behavior before an element
    public func pageBreakBefore<V>(_ type: ExpressableState<V, PageBreakBeforeType>) -> Self {
        pageBreakBefore(type.unwrap())
    }
}

// MARK: - PageBreakInsideProperty

/// Sets the page-break behavior inside an element
///
/// ```html
/// page-break-inside: avoid;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_print_pagebi.asp)
public class PageBreakInsideProperty: _Property {
    public var propertyKey: PropertyKey<PageBreakInsideType> { .pageBreakInside }
    public var propertyValue: PageBreakInsideType
    var _content = _PropertyContent<PageBreakInsideType>()

    public init (_ type: PageBreakInsideType) {
        propertyValue = type
    }

    public convenience init (_ type: State<PageBreakInsideType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, PageBreakInsideType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the page-break behavior inside an element
    public static var pageBreakInside: PropertyKey<PageBreakInsideType> { "page-break-inside".propertyKey() }
}

extension Stylesheet {
    /// Sets the page-break behavior inside an element
    public typealias PageBreakInside = PageBreakInsideProperty
}

extension CSSRulable {
    /// Sets the page-break behavior inside an element
    public func pageBreakInside(_ type: PageBreakInsideType) -> Self {
        _addProperty(.pageBreakInside, type)
        return self
    }

    /// Sets the page-break behavior inside an element
    public func pageBreakInside(_ type: State<PageBreakInsideType>) -> Self {
        _addProperty(PageBreakInsideProperty(type))
        return self
    }

    /// Sets the page-break behavior inside an element
    public func pageBreakInside<V>(_ type: ExpressableState<V, PageBreakInsideType>) -> Self {
        pageBreakInside(type.unwrap())
    }
}

// MARK: - PerspectiveOriginProperty

/// Defines at which position the user is looking at the 3D-positioned element
///
/// ```html
/// perspective-origin: left;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_perspective-origin.asp)
public class PerspectiveOriginProperty: _Property {
    public var propertyKey: PropertyKey<PerspectiveOriginValue> { .perspectiveOrigin }
    public var propertyValue: PerspectiveOriginValue
    var _content = _PropertyContent<PerspectiveOriginValue>()

    public init (_ xAxis: XAxis, _ yAxis: YAxis) {
        propertyValue = PerspectiveOriginValue(xAxis, yAxis)
    }

    public init <X>(_ xAxis: X, _ yAxis: YAxis) where X: StateConvertible, X.Value == XAxis {
        propertyValue = PerspectiveOriginValue(xAxis, yAxis)
    }

    public init <Y>(_ xAxis: XAxis, _ yAxis: Y) where Y: StateConvertible, Y.Value == YAxis {
        propertyValue = PerspectiveOriginValue(xAxis, yAxis)
    }

    public init <X, Y>(_ xAxis: X, _ yAxis: Y) where X: StateConvertible, X.Value == XAxis, Y: StateConvertible, Y.Value == YAxis {
        propertyValue = PerspectiveOriginValue(xAxis, yAxis)
    }

    public init (_ xAxis: XAxis) {
        propertyValue = PerspectiveOriginValue(xAxis)
    }

    public init <X>(_ xAxis: X) where X: StateConvertible, X.Value == XAxis {
        propertyValue = PerspectiveOriginValue(xAxis)
    }

    public init (_ yAxis: YAxis) {
        propertyValue = PerspectiveOriginValue(yAxis)
    }

    public init <Y>(_ yAxis: Y) where Y: StateConvertible, Y.Value == YAxis {
        propertyValue = PerspectiveOriginValue(yAxis)
    }
}

extension PropertyKey {
    /// Defines at which position the user is looking at the 3D-positioned element
    public static var perspectiveOrigin: PropertyKey<PerspectiveOriginValue> { "perspective-origin".propertyKey() }
}

public class PerspectiveOriginValue: CustomStringConvertible, _PropertyValueInnerChangeable {
    public var value: String

    var _changeHandler = {}

    public init (_ xAxis: XAxis, _ yAxis: YAxis) {
        value = [xAxis.value, yAxis.value].joined(separator: " ")
    }

    public convenience init <X>(_ xAxis: X, _ yAxis: YAxis) where X: StateConvertible, X.Value == XAxis {
        let xAxis = xAxis.stateValue
        self.init(xAxis.wrappedValue, yAxis)
        xAxis.listen {
            self.value = [$0.value, yAxis.value].joined(separator: " ")
            self._changeHandler()
        }
    }

    public convenience init <Y>(_ xAxis: XAxis, _ yAxis: Y) where Y: StateConvertible, Y.Value == YAxis {
        let yAxis = yAxis.stateValue
        self.init(xAxis, yAxis.wrappedValue)
        yAxis.listen {
            self.value = [xAxis.value, $0.value].joined(separator: " ")
            self._changeHandler()
        }
    }

    public convenience init <X, Y>(_ xAxis: X, _ yAxis: Y) where X: StateConvertible, X.Value == XAxis, Y: StateConvertible, Y.Value == YAxis {
        let xAxis = xAxis.stateValue
        let yAxis = yAxis.stateValue
        self.init(xAxis.wrappedValue, yAxis.wrappedValue)
        xAxis.listen {
            self.value = [$0.value, yAxis.wrappedValue.value].joined(separator: " ")
            self._changeHandler()
        }
        yAxis.listen {
            self.value = [xAxis.wrappedValue.value, $0.value].joined(separator: " ")
            self._changeHandler()
        }
    }

    public init (_ xAxis: XAxis) {
        value = xAxis.value
    }

    public convenience init <X>(_ xAxis: X) where X: StateConvertible, X.Value == XAxis {
        let xAxis = xAxis.stateValue
        self.init(xAxis.wrappedValue)
        xAxis.listen {
            self.value = $0.value
            self._changeHandler()
        }
    }

    public init (_ yAxis: YAxis) {
        value = yAxis.value
    }

    public convenience init <Y>(_ yAxis: Y) where Y: StateConvertible, Y.Value == YAxis {
        let yAxis = yAxis.stateValue
        self.init(yAxis.wrappedValue)
        yAxis.listen {
            self.value = $0.value
            self._changeHandler()
        }
    }

    public var description: String { value }
}

extension Stylesheet {
    /// Defines at which position the user is looking at the 3D-positioned element
    public typealias PerspectiveOrigin = PerspectiveOriginProperty
}

extension CSSRulable {
    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin(_ xAxis: XAxis, _ yAxis: YAxis) -> Self {
        _addProperty(PerspectiveOriginProperty(xAxis, yAxis))
        return self
    }

    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin<X: UnitValuable>(_ xAxis: X, _ yAxis: YAxis) -> Self {
        perspectiveOrigin(.length(xAxis), yAxis)
    }

    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin<X>(_ xAxis: X, _ yAxis: YAxis) -> Self where X: StateConvertible, X.Value == XAxis {
        _addProperty(PerspectiveOriginProperty(xAxis, yAxis))
        return self
    }

    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin<X>(_ xAxis: X, _ yAxis: YAxis) -> Self where X: StateConvertible, X.Value: UnitValuable {
        perspectiveOrigin(xAxis.stateValue.map { .length($0) }, yAxis)
    }

    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin<Y>(_ xAxis: XAxis, _ yAxis: Y) -> Self where Y: StateConvertible, Y.Value == YAxis {
        _addProperty(PerspectiveOriginProperty(xAxis, yAxis))
        return self
    }

    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin<Y>(_ xAxis: XAxis, _ yAxis: Y) -> Self where Y: StateConvertible, Y.Value: UnitValuable {
        perspectiveOrigin(xAxis, yAxis.stateValue.map { .length($0) })
    }

    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin<X, Y>(_ xAxis: X, _ yAxis: Y) -> Self where X: StateConvertible, X.Value == XAxis, Y: StateConvertible, Y.Value == YAxis {
        _addProperty(PerspectiveOriginProperty(xAxis, yAxis))
        return self
    }

    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin<X, Y>(_ xAxis: X, _ yAxis: Y) -> Self where X: StateConvertible, X.Value: UnitValuable, Y: StateConvertible, Y.Value: UnitValuable {
        perspectiveOrigin(xAxis.stateValue.map { .length($0) }, yAxis.stateValue.map { .length($0) })
    }

    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin(_ xAxis: XAxis) -> Self {
        _addProperty(PerspectiveOriginProperty(xAxis))
        return self
    }

    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin<X>(_ xAxis: X) -> Self where X: StateConvertible, X.Value == XAxis {
        _addProperty(PerspectiveOriginProperty(xAxis))
        return self
    }

    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin(_ yAxis: YAxis) -> Self {
        _addProperty(PerspectiveOriginProperty(yAxis))
        return self
    }

    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin<Y>(_ yAxis: Y) -> Self where Y: StateConvertible, Y.Value == YAxis {
        _addProperty(PerspectiveOriginProperty(yAxis))
        return self
    }

    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin<U: UnitValuable>(_ value: U) -> Self {
        perspectiveOrigin(XAxis.length(value))
    }

    /// Defines at which position the user is looking at the 3D-positioned element
    public func perspectiveOrigin<U>(_ value: U) -> Self where U: StateConvertible, U.Value: UnitValuable {
        perspectiveOrigin(value.stateValue.map { XAxis.length($0) })
    }
}

// MARK: - PerspectiveProperty

/// Gives a 3D-positioned element some perspective
///
/// ```html
/// perspective: 100px;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_perspective.asp)
public class PerspectiveProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .perspective }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Gives a 3D-positioned element some perspective
    public static var perspective: PropertyKey<UnitValue> { "perspective".propertyKey() }
}

extension Stylesheet {
    /// Gives a 3D-positioned element some perspective
    public typealias Perspective = PerspectiveProperty
}

extension CSSRulable {
    /// Gives a 3D-positioned element some perspective
    public func perspective<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.perspective, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Gives a 3D-positioned element some perspective
    public func perspective<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(PerspectiveProperty(value))
        return self
    }

    /// Gives a 3D-positioned element some perspective
    public func perspective<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        perspective(value.unwrap())
    }

    // MARK: Extended

    /// Gives a 3D-positioned element some perspective
    public func perspective(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.perspective, UnitValue(value, unit))
        return self
    }

    /// Gives a 3D-positioned element some perspective
    public func perspective(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.perspective, UnitValue(value, unit))
        return self
    }

    /// Gives a 3D-positioned element some perspective
    public func perspective(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.perspective, UnitValue(value, unit))
        return self
    }

    /// Gives a 3D-positioned element some perspective
    public func perspective<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.perspective, UnitValue(value, unit))
        return self
    }

    /// Gives a 3D-positioned element some perspective
    public func perspective<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.perspective, UnitValue(value, unit))
        return self
    }

    /// Gives a 3D-positioned element some perspective
    public func perspective<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.perspective, UnitValue(value, unit))
        return self
    }

    /// Gives a 3D-positioned element some perspective
    public func perspective<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.perspective, UnitValue(value, unit))
        return self
    }

    /// Gives a 3D-positioned element some perspective
    public func perspective(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.perspective, UnitValue(value, unit))
        return self
    }

    /// Gives a 3D-positioned element some perspective
    public func perspective<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.perspective, UnitValue(value, unit))
        return self
    }
}

// MARK: - PointerEventsProperty

/// Defines whether or not an element reacts to pointer events
///
/// ```html
/// div.ex1 {
///     pointer-events: none;
/// }
///
/// div.ex2 {
///     pointer-events: auto;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_pointer-events.asp)
public class PointerEventsProperty: _Property {
    public var propertyKey: PropertyKey<PointerEventsType> { .pointerEvents }
    public var propertyValue: PointerEventsType
    var _content = _PropertyContent<PointerEventsType>()

    public init (_ type: PointerEventsType) {
        propertyValue = type
    }

    public convenience init <A>(_ type: A) where A: StateConvertible, A.Value == PointerEventsType {
        let type = type.stateValue
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }
}

extension PropertyKey {
    /// Defines whether or not an element reacts to pointer events
    public static var pointerEvents: PropertyKey<PointerEventsType> { "pointer-events".propertyKey() }
}

extension Stylesheet {
    /// Defines whether or not an element reacts to pointer events
    public typealias PointerEvents = PointerEventsProperty
}

extension CSSRulable {
    /// Defines whether or not an element reacts to pointer events
    public func pointerEvents(_ type: PointerEventsType) -> Self {
        _addProperty(.pointerEvents, type)
        return self
    }

    /// Defines whether or not an element reacts to pointer events
    public func pointerEvents<A>(_ type: A) -> Self where A: StateConvertible, A.Value == PointerEventsType {
        _addProperty(PointerEventsProperty(type))
        return self
    }
}

// MARK: - PositionProperty

/// Specifies the type of positioning method used for an element (static, relative, absolute or fixed)
///
/// ```html
/// h2 {
///     position: absolute;
///     left: 100px;
///     top: 150px;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_class_position.asp)
public class PositionProperty: _Property {
    public var propertyKey: PropertyKey<PositionType> { .position }
    public var propertyValue: PositionType
    var _content = _PropertyContent<PositionType>()

    public init (_ type: PositionType) {
        propertyValue = type
    }

    public convenience init (_ type: State<PositionType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, PositionType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the type of positioning method used for an element (static, relative, absolute or fixed)
    public static var position: PropertyKey<PositionType> { "position".propertyKey() }
}

extension Stylesheet {
    /// Specifies the type of positioning method used for an element (static, relative, absolute or fixed)
    public typealias Position = PositionProperty
}

extension CSSRulable {
    /// Specifies the type of positioning method used for an element (static, relative, absolute or fixed)
    public func position(_ type: PositionType) -> Self {
        _addProperty(.position, type)
        return self
    }

    /// Specifies the type of positioning method used for an element (static, relative, absolute or fixed)
    public func position(_ type: State<PositionType>) -> Self {
        _addProperty(PositionProperty(type))
        return self
    }

    /// Specifies the type of positioning method used for an element (static, relative, absolute or fixed)
    public func position<V>(_ type: ExpressableState<V, PositionType>) -> Self {
        position(type.unwrap())
    }
}

// MARK: - QuotesProperty

/// Sets the type of quotation marks for embedded quotations
///
/// ```html
/// #a {
///     quotes: "'" "'";
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_gen_quotes.asp)
public class QuotesProperty: _Property {
    public var propertyKey: PropertyKey<QuotesType> { .quotes }
    public var propertyValue: QuotesType
    var _content = _PropertyContent<QuotesType>()

    public init (_ type: QuotesType) {
        propertyValue = type
    }

    public convenience init (_ type: State<QuotesType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, QuotesType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the type of quotation marks for embedded quotations
    public static var quotes: PropertyKey<QuotesType> { "quotes".propertyKey() }
}

extension Stylesheet {
    /// Sets the type of quotation marks for embedded quotations
    public typealias Quotes = QuotesProperty
}

extension CSSRulable {
    /// Sets the type of quotation marks for embedded quotations
    public func quotes(_ type: QuotesType) -> Self {
        _addProperty(.quotes, type)
        return self
    }

    /// Sets the type of quotation marks for embedded quotations
    public func quotes(_ type: State<QuotesType>) -> Self {
        _addProperty(QuotesProperty(type))
        return self
    }

    /// Sets the type of quotation marks for embedded quotations
    public func quotes<V>(_ type: ExpressableState<V, QuotesType>) -> Self {
        quotes(type.unwrap())
    }
}

// MARK: - ResizeProperty

/// Defines if (and how) an element is resizable by the user
///
/// ```html
/// div {
///     resize: both;
///     overflow: auto;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_resize.asp)
public class ResizeProperty: _Property {
    public var propertyKey: PropertyKey<ResizeType> { .resize }
    public var propertyValue: ResizeType
    var _content = _PropertyContent<ResizeType>()

    public init (_ type: ResizeType) {
        propertyValue = type
    }

    public convenience init (_ type: State<ResizeType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, ResizeType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Defines if (and how) an element is resizable by the user
    public static var resize: PropertyKey<ResizeType> { "resize".propertyKey() }
}

extension Stylesheet {
    /// Defines if (and how) an element is resizable by the user
    public typealias Resize = ResizeProperty
}

extension CSSRulable {
    /// Defines if (and how) an element is resizable by the user
    public func resize(_ type: ResizeType) -> Self {
        _addProperty(.resize, type)
        return self
    }

    /// Defines if (and how) an element is resizable by the user
    public func resize(_ type: State<ResizeType>) -> Self {
        _addProperty(ResizeProperty(type))
        return self
    }

    /// Defines if (and how) an element is resizable by the user
    public func resize<V>(_ type: ExpressableState<V, ResizeType>) -> Self {
        resize(type.unwrap())
    }
}

// MARK: - RightProperty

/// Specifies the right position of a positioned element
///
/// ```html
/// div.absolute {
///     position: absolute;
///     right: 150px;
///     width: 200px;
///     height: 120px;
///     border: 3px solid green;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_pos_right.asp)
public class RightProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .right }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Specifies the right position of a positioned element
    public static var right: PropertyKey<UnitValue> { "right".propertyKey() }
}

extension Stylesheet {
    /// Specifies the right position of a positioned element
    public typealias Right = RightProperty
}

extension CSSRulable {
    /// Specifies the right position of a positioned element
    public func right<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.right, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Specifies the right position of a positioned element
    public func right<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(RightProperty(value))
        return self
    }

    /// Specifies the right position of a positioned element
    public func right<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        right(value.unwrap())
    }

    // MARK: Extended

    /// Specifies the right position of a positioned element
    public func right(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.right, UnitValue(value, unit))
        return self
    }

    /// Specifies the right position of a positioned element
    public func right(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.right, UnitValue(value, unit))
        return self
    }

    /// Specifies the right position of a positioned element
    public func right(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.right, UnitValue(value, unit))
        return self
    }

    /// Specifies the right position of a positioned element
    public func right<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.right, UnitValue(value, unit))
        return self
    }

    /// Specifies the right position of a positioned element
    public func right<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.right, UnitValue(value, unit))
        return self
    }

    /// Specifies the right position of a positioned element
    public func right<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.right, UnitValue(value, unit))
        return self
    }

    /// Specifies the right position of a positioned element
    public func right<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.right, UnitValue(value, unit))
        return self
    }

    /// Specifies the right position of a positioned element
    public func right(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.right, UnitValue(value, unit))
        return self
    }

    /// Specifies the right position of a positioned element
    public func right<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.right, UnitValue(value, unit))
        return self
    }
}

// MARK: - ScrollBehaviorProperty

/// Specifies whether to smoothly animate the scroll position in a scrollable box, instead of a straight jump
///
/// ```html
/// html {
///     scroll-behavior: smooth;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_scroll-behavior.asp)
public class ScrollBehaviorProperty: _Property {
    public var propertyKey: PropertyKey<ScrollBehaviorType> { .scrollBehavior }
    public var propertyValue: ScrollBehaviorType
    var _content = _PropertyContent<ScrollBehaviorType>()

    public init (_ type: ScrollBehaviorType) {
        propertyValue = type
    }

    public convenience init (_ type: State<ScrollBehaviorType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, ScrollBehaviorType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether to smoothly animate the scroll position in a scrollable box, instead of a straight jump
    public static var scrollBehavior: PropertyKey<ScrollBehaviorType> { "scroll-behavior".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether to smoothly animate the scroll position in a scrollable box, instead of a straight jump
    public typealias ScrollBehavior = ScrollBehaviorProperty
}

extension CSSRulable {
    /// Specifies whether to smoothly animate the scroll position in a scrollable box, instead of a straight jump
    public func scrollBehavior(_ type: ScrollBehaviorType) -> Self {
        _addProperty(.scrollBehavior, type)
        return self
    }

    /// Specifies whether to smoothly animate the scroll position in a scrollable box, instead of a straight jump
    public func scrollBehavior(_ type: State<ScrollBehaviorType>) -> Self {
        _addProperty(ScrollBehaviorProperty(type))
        return self
    }

    /// Specifies whether to smoothly animate the scroll position in a scrollable box, instead of a straight jump
    public func scrollBehavior<V>(_ type: ExpressableState<V, ScrollBehaviorType>) -> Self {
        scrollBehavior(type.unwrap())
    }
}

// MARK: - TableLayoutProperty

/// Defines the algorithm used to lay out table cells, rows, and columns
///
/// ```html
/// table-layout: auto;
/// table-layout: fixed;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_tab_table-layout.asp)
public class TableLayoutProperty: _Property {
    public var propertyKey: PropertyKey<TableLayoutType> { .tableLayout }
    public var propertyValue: TableLayoutType
    var _content = _PropertyContent<TableLayoutType>()

    public init (_ type: TableLayoutType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TableLayoutType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TableLayoutType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Defines the algorithm used to lay out table cells, rows, and columns
    public static var tableLayout: PropertyKey<TableLayoutType> { "table-layout".propertyKey() }
}

extension Stylesheet {
    /// Defines the algorithm used to lay out table cells, rows, and columns
    public typealias TableLayout = TableLayoutProperty
}

extension CSSRulable {
    /// Defines the algorithm used to lay out table cells, rows, and columns
    public func tableLayout(_ type: TableLayoutType) -> Self {
        _addProperty(.tableLayout, type)
        return self
    }

    /// Defines the algorithm used to lay out table cells, rows, and columns
    public func tableLayout(_ type: State<TableLayoutType>) -> Self {
        _addProperty(TableLayoutProperty(type))
        return self
    }

    /// Defines the algorithm used to lay out table cells, rows, and columns
    public func tableLayout<V>(_ type: ExpressableState<V, TableLayoutType>) -> Self {
        tableLayout(type.unwrap())
    }
}

// MARK: - TabSizeProperty

/// Specifies the width of a tab character
///
/// ```html
/// /* <integer> values */
/// tab-size: 4;
/// tab-size: 0;
///
/// /* <length> values */
/// tab-size: 10px;
/// tab-size: 2em;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/tab-size)
public class TabSizeProperty: _Property {
    public var propertyKey: PropertyKey<TabSizeType> { .tabSize }
    public var propertyValue: TabSizeType
    var _content = _PropertyContent<TabSizeType>()

    public init (_ type: TabSizeType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TabSizeType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TabSizeType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the width of a tab character
    public static var tabSize: PropertyKey<TabSizeType> { "tab-size".propertyKey() }
}

extension Stylesheet {
    /// Specifies the width of a tab character
    public typealias TabSize = TabSizeProperty
}

extension CSSRulable {
    /// Specifies the width of a tab character
    public func tabSize(_ type: TabSizeType) -> Self {
        _addProperty(.tabSize, type)
        return self
    }

    /// Specifies the width of a tab character/// Specifies the width of a tab character
    public func tabSize(_ type: State<TabSizeType>) -> Self {
        _addProperty(TabSizeProperty(type))
        return self
    }

    /// Specifies the width of a tab character
    public func tabSize<V>(_ type: ExpressableState<V, TabSizeType>) -> Self {
        tabSize(type.unwrap())
    }

    /// Specifies the width of a tab character
    public func tabSize<U: UnitValuable>(_ type: U) -> Self {
        tabSize(.length(type))
    }

    /// Specifies the width of a tab character/// Specifies the width of a tab character
    public func tabSize<U: UnitValuable>(_ type: State<U>) -> Self {
        tabSize(type.map { .length($0) })
    }

    /// Specifies the width of a tab character
    public func tabSize<V, U: UnitValuable>(_ type: ExpressableState<V, U>) -> Self {
        tabSize(type.unwrap())
    }
}

// MARK: - TextAlignLastProperty

/// Describes how the last line of a block or a line right before a forced line break is aligned when text-align is "justify"
///
/// ```html
/// text-align-last: right;
/// text-align-last: center;
/// text-align-last: justify;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_text-align-last.asp)
public class TextAlignLastProperty: _Property {
    public var propertyKey: PropertyKey<TextAlignLastType> { .textAlignLast }
    public var propertyValue: TextAlignLastType
    var _content = _PropertyContent<TextAlignLastType>()

    public init (_ type: TextAlignLastType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TextAlignLastType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TextAlignLastType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Describes how the last line of a block or a line right before a forced line break is aligned when text-align is "justify"
    public static var textAlignLast: PropertyKey<TextAlignLastType> { "text-align-last".propertyKey() }
}

extension Stylesheet {
    /// Describes how the last line of a block or a line right before a forced line break is aligned when text-align is "justify"
    public typealias TextAlignLast = TextAlignLastProperty
}

extension CSSRulable {
    /// Describes how the last line of a block or a line right before a forced line break is aligned when text-align is "justify"
    public func textAlignLast(_ type: TextAlignLastType) -> Self {
        _addProperty(.textAlignLast, type)
        return self
    }

    /// Describes how the last line of a block or a line right before a forced line break is aligned when text-align is "justify"
    public func textAlignLast(_ type: State<TextAlignLastType>) -> Self {
        _addProperty(TextAlignLastProperty(type))
        return self
    }

    /// Describes how the last line of a block or a line right before a forced line break is aligned when text-align is "justify"
    public func textAlignLast<V>(_ type: ExpressableState<V, TextAlignLastType>) -> Self {
        textAlignLast(type.unwrap())
    }
}

// MARK: - TextAlignProperty

/// Specifies the horizontal alignment of text
///
/// ```html
/// text-align: center;
/// text-align: left;
/// text-align: right;
/// text-align: justify;
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_text_text-align.asp)
public class TextAlignProperty: _Property {
    public var propertyKey: PropertyKey<TextAlignType> { .textAlign }
    public var propertyValue: TextAlignType
    var _content = _PropertyContent<TextAlignType>()

    public init (_ type: TextAlignType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TextAlignType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TextAlignType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the horizontal alignment of text
    public static var textAlign: PropertyKey<TextAlignType> { "text-align".propertyKey() }
}

extension Stylesheet {
    /// Specifies the horizontal alignment of text
    public typealias TextAlign = TextAlignProperty
}

extension CSSRulable {
    /// Specifies the horizontal alignment of text
    public func textAlign(_ type: TextAlignType) -> Self {
        _addProperty(.textAlign, type)
        return self
    }

    /// Specifies the horizontal alignment of text
    public func textAlign(_ type: State<TextAlignType>) -> Self {
        _addProperty(TextAlignProperty(type))
        return self
    }

    /// Specifies the horizontal alignment of text
    public func textAlign<V>(_ type: ExpressableState<V, TextAlignType>) -> Self {
        textAlign(type.unwrap())
    }
}

// MARK: - TextCombineUprightProperty

/// Specifies the combination of multiple characters into the space of a single character
///
/// ```html
/// /* Keyword values */
/// text-combine-upright: none;
/// text-combine-upright: all;
///
/// /* Digits values */
/// text-combine-upright: digits;     /* fits 2 consecutive digits horizontally inside vertical text */
/// text-combine-upright: digits 4;   /* fits up to 4 consecutive digits horizontally inside vertical text */
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/text-combine-upright)
public class TextCombineUprightProperty: _Property {
    public var propertyKey: PropertyKey<TextCombineUprightType> { .textCombineUpright }
    public var propertyValue: TextCombineUprightType
    var _content = _PropertyContent<TextCombineUprightType>()

    public init (_ type: TextCombineUprightType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TextCombineUprightType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TextCombineUprightType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the combination of multiple characters into the space of a single character
    public static var textCombineUpright: PropertyKey<TextCombineUprightType> { "text-combine-upright".propertyKey() }
}

extension Stylesheet {
    /// Specifies the combination of multiple characters into the space of a single character
    public typealias TextCombineUpright = TextCombineUprightProperty
}

extension CSSRulable {
    /// Specifies the combination of multiple characters into the space of a single character
    public func textCombineUpright(_ type: TextCombineUprightType) -> Self {
        _addProperty(.textCombineUpright, type)
        return self
    }

    /// Specifies the combination of multiple characters into the space of a single character
    public func textCombineUpright(_ type: State<TextCombineUprightType>) -> Self {
        _addProperty(TextCombineUprightProperty(type))
        return self
    }

    /// Specifies the combination of multiple characters into the space of a single character
    public func textCombineUpright<V>(_ type: ExpressableState<V, TextCombineUprightType>) -> Self {
        textCombineUpright(type.unwrap())
    }
}

// MARK: - TextDecorationColorProperty

/// Specifies the color of the text-decoration
///
/// ```html
/// p {
///     text-decoration: underline;
///     text-decoration-color: red;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_text-decoration-color.asp)
public class TextDecorationColorProperty: _Property {
    public var propertyKey: PropertyKey<Color> { .textDecorationColor }
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
    /// Specifies the color of the text-decoration
    public static var textDecorationColor: PropertyKey<Color> { "text-decoration-color".propertyKey() }
}

extension Stylesheet {
    /// Specifies the color of the text-decoration
    public typealias TextDecorationColor = TextDecorationColorProperty
}

extension CSSRulable {
    /// Specifies the color of the text-decoration
    public func textDecorationColor(_ type: Color) -> Self {
        _addProperty(.textDecorationColor, type)
        return self
    }

    /// Specifies the color of the text-decoration
    public func textDecorationColor<S>(_ type: S) -> Self where S: StateConvertible, S.Value == Color {
        _addProperty(TextDecorationColorProperty(type.stateValue))
        return self
    }
}

// MARK: - TextDecorationLineProperty

/// Specifies the type of line in a text-decoration
///
/// ```html
/// div.a {
///     text-decoration-line: overline;
/// }
///
/// div.b {
///     text-decoration-line: underline;
/// }
///
/// div.c {
///     text-decoration-line: line-through;
/// }
///
/// div.d {
///     text-decoration-line: overline underline;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_text-decoration-line.asp)
public class TextDecorationLineProperty: _Property {
    public var propertyKey: PropertyKey<TextDecorationLineType> { .textDecorationLine }
    public var propertyValue: TextDecorationLineType
    var _content = _PropertyContent<TextDecorationLineType>()

    public init (_ type: TextDecorationLineType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TextDecorationLineType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TextDecorationLineType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the type of line in a text-decoration
    public static var textDecorationLine: PropertyKey<TextDecorationLineType> { "text-decoration-line".propertyKey() }
}

extension Stylesheet {
    /// Specifies the type of line in a text-decoration
    public typealias TextDecorationLine = TextDecorationLineProperty
}

extension CSSRulable {
    /// Specifies the type of line in a text-decoration
    public func textDecorationLine(_ type: TextDecorationLineType) -> Self {
        _addProperty(.textDecorationLine, type)
        return self
    }

    /// Specifies the type of line in a text-decoration
    public func textDecorationLine(_ type: State<TextDecorationLineType>) -> Self {
        _addProperty(TextDecorationLineProperty(type))
        return self
    }

    /// Specifies the type of line in a text-decoration
    public func textDecorationLine<V>(_ type: ExpressableState<V, TextDecorationLineType>) -> Self {
        textDecorationLine(type.unwrap())
    }
}

// MARK: - TextDecorationProperty

/// Specifies the decoration added to text
///
/// ```html
/// h1 {
///     text-decoration: overline;
/// }
///
/// h2 {
///     text-decoration: line-through;
/// }
///
/// h3 {
///     text-decoration: underline;
/// }
///
/// h4 {
///     text-decoration: underline overline;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_text_text-decoration.asp)
public class TextDecorationProperty: _Property {
    public var propertyKey: PropertyKey<TextDecorationValue> { .textDecoration }
    public var propertyValue: TextDecorationValue
    var _content = _PropertyContent<TextDecorationValue>()

    public init (_ line: TextDecorationLineType, _ color: Color, _ style: TextDecorationStyleType) {
        propertyValue = TextDecorationValue(line, color, style)
    }
}

extension PropertyKey {
    public static var textDecoration: PropertyKey<TextDecorationValue> { "text-decoration".propertyKey() }
}

public struct TextDecorationValue: CustomStringConvertible {
    let line: TextDecorationLineType
    let color: Color
    let style: TextDecorationStyleType

    public init (_ line: TextDecorationLineType, _ color: Color, _ style: TextDecorationStyleType) {
        self.line = line
        self.color = color
        self.style = style
    }

    public var description: String {
        [line.value, color.description, style.value].joined(separator: " ")
    }
}

extension Stylesheet {
    /// Specifies the decoration added to text
    public typealias TextDecoration = TextDecorationProperty
}

extension CSSRulable {
    /// Specifies the decoration added to text
    public func textDecoration(_ line: TextDecorationLineType, _ color: Color, _ style: TextDecorationStyleType) -> Self {
        _addProperty(TextDecorationProperty(line, color, style))
        return self
    }
}

// MARK: - TextDecorationStyleProperty

/// Specifies the style of the line in a text decoration
///
/// ```html
/// div.a {
///     text-decoration-line: underline;
///     text-decoration-style: solid;
/// }
///
/// div.b {
///     text-decoration-line: underline;
///     text-decoration-style: wavy;
/// }
///
/// div.c {
///     text-decoration-line: underline;
///     text-decoration-style: double;
/// }
///
/// div.d {
///     text-decoration-line: overline underline;
///     text-decoration-style: wavy;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_text-decoration-style.asp)
public class TextDecorationStyleProperty: _Property {
    public var propertyKey: PropertyKey<TextDecorationStyleType> { .textDecorationStyle }
    public var propertyValue: TextDecorationStyleType
    var _content = _PropertyContent<TextDecorationStyleType>()

    public init (_ type: TextDecorationStyleType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TextDecorationStyleType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TextDecorationStyleType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the style of the line in a text decoration
    public static var textDecorationStyle: PropertyKey<TextDecorationStyleType> { "text-decoration-style".propertyKey() }
}

extension Stylesheet {
    /// Specifies the style of the line in a text decoration
    public typealias TextDecorationStyle = TextDecorationStyleProperty
}

extension CSSRulable {
    /// Specifies the style of the line in a text decoration
    public func textDecorationStyle(_ type: TextDecorationStyleType) -> Self {
        _addProperty(.textDecorationStyle, type)
        return self
    }

    /// Specifies the style of the line in a text decoration
    public func textDecorationStyle(_ type: State<TextDecorationStyleType>) -> Self {
        _addProperty(TextDecorationStyleProperty(type))
        return self
    }

    /// Specifies the style of the line in a text decoration
    public func textDecorationStyle<V>(_ type: ExpressableState<V, TextDecorationStyleType>) -> Self {
        textDecorationStyle(type.unwrap())
    }
}

// MARK: - TextIndentProperty

/// Specifies the indentation of the first line in a text-block
///
/// ```html
/// div.a {
///     text-indent: 50px;
/// }
///
/// div.b {
///     text-indent: -2em;
/// }
///
/// div.c {
///     text-indent: 30%;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_text_text-indent.asp)
public class TextIndentProperty: _Property {
    public var propertyKey: PropertyKey<TextIndentType> { .textIndent }
    public var propertyValue: TextIndentType
    var _content = _PropertyContent<TextIndentType>()

    public init (_ type: TextIndentType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TextIndentType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TextIndentType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the indentation of the first line in a text-block
    public static var textIndent: PropertyKey<TextIndentType> { "text-indent".propertyKey() }
}

extension Stylesheet {
    /// Specifies the indentation of the first line in a text-block
    public typealias TextIndent = TextIndentProperty
}

extension CSSRulable {
    /// Specifies the indentation of the first line in a text-block
    public func textIndent(_ type: TextIndentType) -> Self {
        _addProperty(.textIndent, type)
        return self
    }

    /// Specifies the indentation of the first line in a text-block
    public func textIndent(_ type: State<TextIndentType>) -> Self {
        _addProperty(TextIndentProperty(type))
        return self
    }

    /// Specifies the indentation of the first line in a text-block
    public func textIndent<V>(_ type: ExpressableState<V, TextIndentType>) -> Self {
        textIndent(type.unwrap())
    }

    /// Specifies the indentation of the first line in a text-block
    public func textIndent<U: UnitValuable>(_ type: U) -> Self {
        textIndent(.length(type))
    }

    /// Specifies the indentation of the first line in a text-block
    public func textIndent<U: UnitValuable>(_ type: State<U>) -> Self {
        textIndent(type.map { .length($0) })
    }

    /// Specifies the indentation of the first line in a text-block
    public func textIndent<V, U: UnitValuable>(_ type: ExpressableState<V, U>) -> Self {
        textIndent(type.unwrap())
    }
}

// MARK: - TextJustifyProperty

/// Specifies the justification method used when text-align is "justify"
///
/// ```html
/// text-justify: none;
/// text-justify: auto;
/// text-justify: inter-word;
/// text-justify: inter-character;
/// text-justify: distribute; /* Deprecated value */
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/text-justify)
public class TextJustifyProperty: _Property {
    public var propertyKey: PropertyKey<TextJustifyType> { .textJustify }
    public var propertyValue: TextJustifyType
    var _content = _PropertyContent<TextJustifyType>()

    public init (_ type: TextJustifyType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TextJustifyType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TextJustifyType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the justification method used when text-align is "justify"
    public static var textJustify: PropertyKey<TextJustifyType> { "text-justify".propertyKey() }
}

extension Stylesheet {
    /// Specifies the justification method used when text-align is "justify"
    public typealias TextJustify = TextJustifyProperty
}

extension CSSRulable {
    /// Specifies the justification method used when text-align is "justify"
    public func textJustify(_ type: TextJustifyType) -> Self {
        _addProperty(.textJustify, type)
        return self
    }

    /// Specifies the justification method used when text-align is "justify"
    public func textJustify(_ type: State<TextJustifyType>) -> Self {
        _addProperty(TextJustifyProperty(type))
        return self
    }

    /// Specifies the justification method used when text-align is "justify"
    public func textJustify<V>(_ type: ExpressableState<V, TextJustifyType>) -> Self {
        textJustify(type.unwrap())
    }
}

// MARK: - TextOrientationProperty

/// Defines the orientation of the text in a line
///
/// ```html
/// text-orientation: mixed;
/// text-orientation: upright;
/// text-orientation: sideways-right;
/// text-orientation: sideways;
/// text-orientation: use-glyph-orientation;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/text-orientation)
public class TextOrientationProperty: _Property {
    public var propertyKey: PropertyKey<TextOrientationType> { .textOrientation }
    public var propertyValue: TextOrientationType
    var _content = _PropertyContent<TextOrientationType>()

    public init (_ type: TextOrientationType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TextOrientationType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TextOrientationType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Defines the orientation of the text in a line
    public static var textOrientation: PropertyKey<TextOrientationType> { "text-orientation".propertyKey() }
}

extension Stylesheet {
    /// Defines the orientation of the text in a line
    public typealias TextOrientation = TextOrientationProperty
}

extension CSSRulable {
    /// Defines the orientation of the text in a line
    public func textOrientation(_ type: TextOrientationType) -> Self {
        _addProperty(.textOrientation, type)
        return self
    }

    /// Defines the orientation of the text in a line
    public func textOrientation(_ type: State<TextOrientationType>) -> Self {
        _addProperty(TextOrientationProperty(type))
        return self
    }

    /// Defines the orientation of the text in a line
    public func textOrientation<V>(_ type: ExpressableState<V, TextOrientationType>) -> Self {
        textOrientation(type.unwrap())
    }
}

// MARK: - TextOverflowProperty

/// Specifies what should happen when text overflows the containing element
///
/// ```html
/// div {
///     white-space: nowrap;
///     overflow: hidden;
///     text-overflow: ellipsis;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_text-overflow.asp)
public class TextOverflowProperty: _Property {
    public var propertyKey: PropertyKey<TextOverflowType> { .textOverflow }
    public var propertyValue: TextOverflowType
    var _content = _PropertyContent<TextOverflowType>()

    public init (_ type: TextOverflowType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TextOverflowType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TextOverflowType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies what should happen when text overflows the containing element
    public static var textOverflow: PropertyKey<TextOverflowType> { "text-overflow".propertyKey() }
}

extension Stylesheet {
    /// Specifies what should happen when text overflows the containing element
    public typealias TextOverflow = TextOverflowProperty
}

extension CSSRulable {
    /// Specifies what should happen when text overflows the containing element
    public func textOverflow(_ type: TextOverflowType) -> Self {
        _addProperty(.textOverflow, type)
        return self
    }

    /// Specifies what should happen when text overflows the containing element
    public func textOverflow(_ type: State<TextOverflowType>) -> Self {
        _addProperty(TextOverflowProperty(type))
        return self
    }

    /// Specifies what should happen when text overflows the containing element
    public func textOverflow<V>(_ type: ExpressableState<V, TextOverflowType>) -> Self {
        textOverflow(type.unwrap())
    }
}

// MARK: - TextShadowProperty

/// Adds shadow to text
///
/// ```html
/// h1 {
///     text-shadow: 2px 2px #ff0000;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_text-shadow.asp)
public class TextShadowProperty: _Property {
    public var propertyKey: PropertyKey<[TextShadowType]> { .textShadows }
    public var propertyValue: [TextShadowType]
    var _content = _PropertyContent<[TextShadowType]>()

    public init (_ type: TextShadowType...) {
        propertyValue = type
    }

    public init (_ type: [TextShadowType]) {
        propertyValue = type
    }

    public convenience init <A>(_ value: A) where A: StateConvertible, A.Value == [TextShadowType] {
        let value = value.stateValue
        self.init(value.wrappedValue)
        value.listen { self._changed(to: $0) }
    }

    public convenience init <A>(_ value: A) where A: StateConvertible, A.Value == TextShadowType {
        let value = value.stateValue
        self.init(value.wrappedValue)
        value.listen { self._changed(to: [$0]) }
    }
}

extension PropertyKey {
    /// Adds shadow to text
    public static var textShadows: PropertyKey<[TextShadowType]> { "text-shadow".propertyKey() }
    /// Adds shadow to text
    public static var textShadow: PropertyKey<TextShadowType> { "text-shadow".propertyKey() }
}

extension Array where Element == TextShadowType {
    public var description: String {
        map { $0.value }.joined(separator: ", ")
    }
}

extension Stylesheet {
    /// Adds shadow to text
    public typealias TextShadow = TextShadowProperty
}

extension CSSRulable {
    /// Adds shadow to text
    public func textShadow(_ type: TextShadowType...) -> Self {
        textShadow(type)
    }

    /// Adds shadow to text
    public func textShadow(_ types: [TextShadowType]) -> Self {
        _addProperty(TextShadowProperty(types))
        return self
    }

    /// Adds shadow to text
    public func textShadow<A>(_ value: A) -> Self where A: StateConvertible, A.Value == [TextShadowType] {
        _addProperty(TextShadowProperty(value))
        return self
    }

    /// Adds shadow to text
    public func textShadow<A>(_ value: A) -> Self where A: StateConvertible, A.Value == TextShadowType {
        _addProperty(TextShadowProperty(value))
        return self
    }
}

// MARK: - TextTransformProperty

/// Controls the capitalization of text
///
/// ```html
/// div.a {
///     text-transform: uppercase;
/// }
///
/// div.b {
///     text-transform: lowercase;
/// }
///
/// div.c {
///     text-transform: capitalize;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_text_text-transform.asp)
public class TextTransformProperty: _Property {
    public var propertyKey: PropertyKey<TextTransformType> { .textTransform }
    public var propertyValue: TextTransformType
    var _content = _PropertyContent<TextTransformType>()

    public init (_ type: TextTransformType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TextTransformType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TextTransformType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Controls the capitalization of text
    public static var textTransform: PropertyKey<TextTransformType> { "text-transform".propertyKey() }
}

extension Stylesheet {
    /// Controls the capitalization of text
    public typealias TextTransform = TextTransformProperty
}

extension CSSRulable {
    /// Controls the capitalization of text
    public func textTransform(_ type: TextTransformType) -> Self {
        _addProperty(.textTransform, type)
        return self
    }

    /// Controls the capitalization of text
    public func textTransform(_ type: State<TextTransformType>) -> Self {
        _addProperty(TextTransformProperty(type))
        return self
    }

    /// Controls the capitalization of text
    public func textTransform<V>(_ type: ExpressableState<V, TextTransformType>) -> Self {
        textTransform(type.unwrap())
    }
}

// MARK: - TextUnderlinePositionProperty

/// Specifies the position of the underline which is set using the text-decoration property
///
/// ```html
/// /* Single keyword */
/// text-underline-position: auto;
/// text-underline-position: under;
/// text-underline-position: left;
/// text-underline-position: right;
///
/// /* Multiple keywords */
/// text-underline-position: under left;
/// text-underline-position: right under;
///
/// /* Global values */
/// text-underline-position: inherit;
/// text-underline-position: initial;
/// text-underline-position: unset;
/// ```
///
/// [Learn more](https://developer.mozilla.org/en-US/docs/Web/CSS/text-underline-position)
public class TextUnderlinePositionProperty: _Property {
    public var propertyKey: PropertyKey<[TextUnderlinePositionType]> { .textUnderlinePositions }
    public var propertyValue: [TextUnderlinePositionType]
    var _content = _PropertyContent<[TextUnderlinePositionType]>()

    public init (_ type: TextUnderlinePositionType...) {
        propertyValue = type
    }

    public init (_ types: [TextUnderlinePositionType]) {
        propertyValue = types
    }

    public convenience init <A>(_ value: A) where A: StateConvertible, A.Value == [TextUnderlinePositionType] {
        let value = value.stateValue
        self.init(value.wrappedValue)
        value.listen { self._changed(to: $0) }
    }

    public convenience init <A>(_ value: A) where A: StateConvertible, A.Value == TextUnderlinePositionType {
        let value = value.stateValue
        self.init(value.wrappedValue)
        value.listen { self._changed(to: [$0]) }
    }
}

extension PropertyKey {
    /// Specifies the position of the underline which is set using the text-decoration property
    public static var textUnderlinePositions: PropertyKey<[TextUnderlinePositionType]> { "text-underline-position".propertyKey() }
    /// Specifies the position of the underline which is set using the text-decoration property
    public static var textUnderlinePosition: PropertyKey<TextUnderlinePositionType> { "text-underline-position".propertyKey() }
}

extension Array where Element == TextUnderlinePositionType {
    public var description: String {
        map { $0.value }.joined(separator: " ")
    }
}

extension Stylesheet {
    /// Specifies the position of the underline which is set using the text-decoration property
    public typealias TextUnderlinePosition = TextUnderlinePositionProperty
}

extension CSSRulable {
    /// Specifies the position of the underline which is set using the text-decoration property
    public func textUnderlinePosition(_ type: TextUnderlinePositionType...) -> Self {
        textUnderlinePosition(type)
    }

    /// Specifies the position of the underline which is set using the text-decoration property
    public func textUnderlinePosition(_ types: [TextUnderlinePositionType]) -> Self {
        _addProperty(TextUnderlinePositionProperty(types))
        return self
    }

    /// Specifies the position of the underline which is set using the text-decoration property
    public func textUnderlinePosition<A>(_ value: A) -> Self where A: StateConvertible, A.Value == [TextUnderlinePositionType] {
        _addProperty(TextUnderlinePositionProperty(value))
        return self
    }

    /// Specifies the position of the underline which is set using the text-decoration property
    public func textUnderlinePosition<A>(_ value: A) -> Self where A: StateConvertible, A.Value == TextUnderlinePositionType {
        _addProperty(TextUnderlinePositionProperty(value))
        return self
    }
}

// MARK: - TopProperty

/// Specifies the top position of a positioned element
///
/// ```html
/// div {
///     position: absolute;
///     top: 50px;
///     border: 3px solid green;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_pos_top.asp)
public class TopProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .top }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Specifies the top position of a positioned element
    public static var top: PropertyKey<UnitValue> { "top".propertyKey() }
}

extension Stylesheet {
    /// Specifies the top position of a positioned element
    public typealias Top = TopProperty
}

extension CSSRulable {
    /// Specifies the top position of a positioned element
    public func top<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.top, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Specifies the top position of a positioned element
    public func top<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(TopProperty(value))
        return self
    }

    /// Specifies the top position of a positioned element
    public func top<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        top(value.unwrap())
    }

    // MARK: Extended

    /// Specifies the top position of a positioned element
    public func top(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.top, UnitValue(value, unit))
        return self
    }

    /// Specifies the top position of a positioned element
    public func top(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.top, UnitValue(value, unit))
        return self
    }

    /// Specifies the top position of a positioned element
    public func top(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.top, UnitValue(value, unit))
        return self
    }

    /// Specifies the top position of a positioned element
    public func top<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.top, UnitValue(value, unit))
        return self
    }

    /// Specifies the top position of a positioned element
    public func top<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.top, UnitValue(value, unit))
        return self
    }

    /// Specifies the top position of a positioned element
    public func top<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.top, UnitValue(value, unit))
        return self
    }

    /// Specifies the top position of a positioned element
    public func top<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.top, UnitValue(value, unit))
        return self
    }

    /// Specifies the top position of a positioned element
    public func top(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.top, UnitValue(value, unit))
        return self
    }

    /// Specifies the top position of a positioned element
    public func top<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.top, UnitValue(value, unit))
        return self
    }
}

// MARK: - TransformOriginProperty

/// Allows you to change the position on transformed elements
///
/// ```html
/// div {
///     transform: rotate(45deg);
///     transform-origin: 20% 40%;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_transform-origin.asp)
public class TransformOriginProperty: _Property {
    public var propertyKey: PropertyKey<TransformOriginType> { .transformOrigin }
    public var propertyValue: TransformOriginType
    var _content = _PropertyContent<TransformOriginType>()

    public init (_ type: TransformOriginType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TransformOriginType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TransformOriginType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Allows you to change the position on transformed elements
    public static var transformOrigin: PropertyKey<TransformOriginType> { "transform-origin".propertyKey() }
}

extension Stylesheet {
    /// Allows you to change the position on transformed elements
    public typealias TransformOrigin = TransformOriginProperty
}

extension CSSRulable {
    /// Allows you to change the position on transformed elements
    public func transformOrigin(_ type: TransformOriginType) -> Self {
        _addProperty(.transformOrigin, type)
        return self
    }

    /// Allows you to change the position on transformed elements
    public func transformOrigin(_ type: State<TransformOriginType>) -> Self {
        _addProperty(TransformOriginProperty(type))
        return self
    }

    /// Allows you to change the position on transformed elements
    public func transformOrigin<V>(_ type: ExpressableState<V, TransformOriginType>) -> Self {
        transformOrigin(type.unwrap())
    }
}

// MARK: - TransformProperty

/// Applies a 2D or 3D transformation to an element
///
/// ```html
/// div.a {
///     transform: rotate(20deg);
/// }
///
/// div.b {
///     transform: skewY(20deg);
/// }
///
/// div.c {
///     transform: scaleY(1.5);
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_transform.asp)
public class TransformProperty: _Property {
    public var propertyKey: PropertyKey<TransformFunction> { .transform }
    public var propertyValue: TransformFunction
    var _content = _PropertyContent<TransformFunction>()

    public init (_ func: TransformFunction) {
        propertyValue = `func`
    }

    public convenience init (_ type: State<TransformFunction>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TransformFunction>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Applies a 2D or 3D transformation to an element
    public static var transform: PropertyKey<TransformFunction> { "transform".propertyKey() }
}

extension Stylesheet {
    /// Applies a 2D or 3D transformation to an element
    public typealias Transform = TransformProperty
}

extension CSSRulable {
    /// Applies a 2D or 3D transformation to an element
    public func transform(_ type: TransformFunction) -> Self {
        _addProperty(.transform, type)
        return self
    }

    /// Applies a 2D or 3D transformation to an element
    public func transform(_ type: State<TransformFunction>) -> Self {
        _addProperty(TransformProperty(type))
        return self
    }

    /// Applies a 2D or 3D transformation to an element
    public func transform<V>(_ type: ExpressableState<V, TransformFunction>) -> Self {
        transform(type.unwrap())
    }
}

// MARK: - TransformStyleProperty

/// Specifies how nested elements are rendered in 3D space
///
/// ```html
/// div {
///     transform: rotateY(60deg);
///     transform-style: preserve-3d;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_transform-style.asp)
public class TransformStyleProperty: _Property {
    public var propertyKey: PropertyKey<TransformStyleType> { .transformStyle }
    public var propertyValue: TransformStyleType
    var _content = _PropertyContent<TransformStyleType>()

    public init (_ type: TransformStyleType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TransformStyleType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TransformStyleType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies how nested elements are rendered in 3D space
    public static var transformStyle: PropertyKey<TransformStyleType> { "transform-style".propertyKey() }
}

extension Stylesheet {
    /// Specifies how nested elements are rendered in 3D space
    public typealias TransformStyle = TransformStyleProperty
}

extension CSSRulable {
    /// Specifies how nested elements are rendered in 3D space
    public func transformStyle(_ type: TransformStyleType) -> Self {
        _addProperty(.transformStyle, type)
        return self
    }

    /// Specifies how nested elements are rendered in 3D space
    public func transformStyle(_ type: State<TransformStyleType>) -> Self {
        _addProperty(TransformStyleProperty(type))
        return self
    }

    /// Specifies how nested elements are rendered in 3D space
    public func transformStyle<V>(_ type: ExpressableState<V, TransformStyleType>) -> Self {
        transformStyle(type.unwrap())
    }
}

// MARK: - TransitionDelayProperty

/// Specifies when the transition effect will start
///
/// ```html
/// div {
///     transition-delay: 2s;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_transition-delay.asp)
public class TransitionDelayProperty: _Property {
    public var propertyKey: PropertyKey<TimeType> { .transitionDelay }
    public var propertyValue: TimeType
    var _content = _PropertyContent<TimeType>()

    public init (_ type: TimeType) {
        propertyValue = type
    }

    public convenience init <A>(_ value: A) where A: StateConvertible, A.Value == TimeType {
        let value = value.stateValue
        self.init(value.wrappedValue)
        value.listen { self._changed(to: $0) }
    }
}

extension PropertyKey {
    /// Specifies when the transition effect will start
    public static var transitionDelay: PropertyKey<TimeType> { "transition-delay".propertyKey() }
}

extension Stylesheet {
    /// Specifies when the transition effect will start
    public typealias TransitionDelay = TransitionDelayProperty
}

extension CSSRulable {
    /// Specifies when the transition effect will start
    public func transitionDelay(_ type: TimeType) -> Self {
        _addProperty(TransitionDelayProperty(type))
        return self
    }

    /// Specifies when the transition effect will start
    public func transitionDelay<A>(_ value: A) -> Self where A: StateConvertible, A.Value == TimeType {
        _addProperty(TransitionDelayProperty(value))
        return self
    }
}

// MARK: - TransitionDurationProperty

/// Specifies how many seconds or milliseconds a transition effect takes to complete
///
/// ```html
/// div {
///     transition-duration: 5s;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_transition-duration.asp)
public class TransitionDurationProperty: _Property {
    public var propertyKey: PropertyKey<TimeType> { .transitionDuration }
    public var propertyValue: TimeType
    var _content = _PropertyContent<TimeType>()

    public init (_ type: TimeType) {
        propertyValue = type
    }

    public convenience init <A>(_ value: A) where A: StateConvertible, A.Value == TimeType {
        let value = value.stateValue
        self.init(value.wrappedValue)
        value.listen { self._changed(to: $0) }
    }
}

extension PropertyKey {
    /// Specifies how many seconds or milliseconds a transition effect takes to complete
    public static var transitionDuration: PropertyKey<TimeType> { "transition-duration".propertyKey() }
}

extension Stylesheet {
    /// Specifies how many seconds or milliseconds a transition effect takes to complete
    public typealias TransitionDuration = TransitionDurationProperty
}

extension CSSRulable {
    /// Specifies how many seconds or milliseconds a transition effect takes to complete
    public func transitionDuration(_ type: TimeType) -> Self {
        _addProperty(TransitionDurationProperty(type))
        return self
    }

    /// Specifies how many seconds or milliseconds a transition effect takes to complete
    public func transitionDuration<A>(_ value: A) -> Self where A: StateConvertible, A.Value == TimeType {
        _addProperty(TransitionDurationProperty(value))
        return self
    }
}

// MARK: - TransitionProperty

/// A shorthand property for all the transition-* properties
///
/// ```html
/// div {
///     width: 100px;
///     transition: width 2s;
/// }
///
/// div:hover {
///     width: 300px;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_transition.asp)
public class TransitionProperty: _Property {
    public var propertyKey: PropertyKey<TransitionValue> { .transition }
    public var propertyValue: TransitionValue
    var _content = _PropertyContent<TransitionValue>()

    public init (_ properties: [TransitionPropertyType], duration: TimeType, timingFunction: TransitionTimingFunctionType? = nil, delay: TimeType? = nil) {
        propertyValue = TransitionValue(properties, duration: duration, timingFunction: timingFunction, delay: delay)
    }

    public convenience init (_ properties: TransitionPropertyType..., duration: TimeType, timingFunction: TransitionTimingFunctionType? = nil, delay: TimeType? = nil) {
        self.init(properties, duration: duration, timingFunction: timingFunction, delay: delay)
    }
}

extension PropertyKey {
    /// A shorthand property for all the transition-* properties
    public static var transition: PropertyKey<TransitionValue> { "transition".propertyKey() }
}

public struct TransitionValue: CustomStringConvertible {
    let properties: [TransitionPropertyType]
    let duration: TimeType
    let timingFunction: TransitionTimingFunctionType?
    let delay: TimeType?

    public init (_ properties: [TransitionPropertyType], duration: TimeType, timingFunction: TransitionTimingFunctionType? = nil, delay: TimeType? = nil) {
        self.properties = properties
        self.duration = duration
        self.timingFunction = timingFunction
        self.delay = delay
    }

    public var description: String {
        var values: [String] = []
        values.append(properties.map { $0.value }.joined(separator: ", "))
        values.append(duration.value)
        if let timingFunction = timingFunction {
            values.append(timingFunction.value)
        }
        if let delay = delay {
            values.append(delay.value)
        }
        return values.joined(separator: " ")
    }
}

extension Stylesheet {
    /// A shorthand property for all the transition-* properties
    public typealias Transition = TransitionProperty
}

extension CSSRulable {
    /// A shorthand property for all the transition-* properties
    public func transition(_ properties: [TransitionPropertyType], duration: TimeType, timingFunction: TransitionTimingFunctionType? = nil, delay: TimeType? = nil) -> Self {
        _addProperty(TransitionProperty(properties, duration: duration, timingFunction: timingFunction, delay: delay))
        return self
    }

    /// A shorthand property for all the transition-* properties
    public func transition(_ properties: TransitionPropertyType..., duration: TimeType, timingFunction: TransitionTimingFunctionType? = nil, delay: TimeType? = nil) -> Self {
        transition(properties, duration: duration, timingFunction: timingFunction, delay: delay)
    }
}

// MARK: - TransitionPropertyProperty

/// Specifies the name of the CSS property the transition effect is for
///
/// ```html
/// div {
///     transition-property: width;
/// }
///
/// div:hover {
///     width: 300px;
/// }
/// ```
///
/// ```html
/// div {
///     transition-property: width, height;
/// }
///
/// div:hover {
///     width: 300px;
///     height: 300px;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_transition-property.asp)
public class TransitionPropertyProperty: _Property {
    public var propertyKey: PropertyKey<TransitionPropertyType> { .transitionProperty }
    public var propertyValue: TransitionPropertyType
    var _content = _PropertyContent<TransitionPropertyType>()

    public init (_ type: TransitionPropertyType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TransitionPropertyType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TransitionPropertyType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the name of the CSS property the transition effect is for
    public static var transitionProperty: PropertyKey<TransitionPropertyType> { "transition-property".propertyKey() }
}

extension Stylesheet {
    /// Specifies the name of the CSS property the transition effect is for
    public typealias TransitionProperty = TransitionPropertyProperty
}

extension CSSRulable {
    /// Specifies the name of the CSS property the transition effect is for
    public func transitionProperty(_ type: TransitionPropertyType) -> Self {
        _addProperty(.transitionProperty, type)
        return self
    }

    /// Specifies the name of the CSS property the transition effect is for
    public func transitionProperty(_ type: State<TransitionPropertyType>) -> Self {
        _addProperty(TransitionPropertyProperty(type))
        return self
    }

    /// Specifies the name of the CSS property the transition effect is for
    public func transitionProperty<V>(_ type: ExpressableState<V, TransitionPropertyType>) -> Self {
        transitionProperty(type.unwrap())
    }
}

// MARK: - TransitionTimingFunctionProperty

/// Specifies the speed curve of the transition effect
///
/// ```html
/// div {
///     transition-timing-function: linear;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_transition-timing-function.asp)
public class TransitionTimingFunctionProperty: _Property {
    public var propertyKey: PropertyKey<TransitionTimingFunctionType> { .transitionTimingFunction }
    public var propertyValue: TransitionTimingFunctionType
    var _content = _PropertyContent<TransitionTimingFunctionType>()

    public init (_ type: TransitionTimingFunctionType) {
        propertyValue = type
    }

    public convenience init (_ type: State<TransitionTimingFunctionType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, TransitionTimingFunctionType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies the speed curve of the transition effect
    public static var transitionTimingFunction: PropertyKey<TransitionTimingFunctionType> { "transition-timing-function".propertyKey() }
}

extension Stylesheet {
    /// Specifies the speed curve of the transition effect
    public typealias TransitionTimingFunction = TransitionTimingFunctionProperty
}

extension CSSRulable {
    /// Specifies the speed curve of the transition effect
    public func transitionTimingFunction(_ type: TransitionTimingFunctionType) -> Self {
        _addProperty(.transitionTimingFunction, type)
        return self
    }

    /// Specifies the speed curve of the transition effect
    public func transitionTimingFunction(_ type: State<TransitionTimingFunctionType>) -> Self {
        _addProperty(TransitionTimingFunctionProperty(type))
        return self
    }

    /// Specifies the speed curve of the transition effect
    public func transitionTimingFunction<V>(_ type: ExpressableState<V, TransitionTimingFunctionType>) -> Self {
        transitionTimingFunction(type.unwrap())
    }
}

// MARK: - UnicodeBidiProperty

/// Used together with the direction property to set or return whether the text
/// should be overridden to support multiple languages in the same document
///
/// ```html
/// div {
///    direction: rtl;
///    unicode-bidi: bidi-override;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_text_unicode-bidi.asp)
public class UnicodeBidiProperty: _Property {
    public var propertyKey: PropertyKey<UnicodeBidiType> { .unicodeBidi }
    public var propertyValue: UnicodeBidiType
    var _content = _PropertyContent<UnicodeBidiType>()

    public init (_ type: UnicodeBidiType) {
        propertyValue = type
    }

    public convenience init (_ type: State<UnicodeBidiType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, UnicodeBidiType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Used together with the direction property to set or return whether the text
    /// should be overridden to support multiple languages in the same document
    public static var unicodeBidi: PropertyKey<UnicodeBidiType> { "unicode-bidi".propertyKey() }
}

extension Stylesheet {
    /// Used together with the direction property to set or return whether the text
    /// should be overridden to support multiple languages in the same document
    public typealias UnicodeBidi = UnicodeBidiProperty
}

extension CSSRulable {
    /// Used together with the direction property to set or return whether the text
    /// should be overridden to support multiple languages in the same document
    public func unicodeBidi(_ type: UnicodeBidiType) -> Self {
        _addProperty(.unicodeBidi, type)
        return self
    }

    /// Used together with the direction property to set or return whether the text
    /// should be overridden to support multiple languages in the same document
    public func unicodeBidi(_ type: State<UnicodeBidiType>) -> Self {
        _addProperty(UnicodeBidiProperty(type))
        return self
    }

    /// Used together with the direction property to set or return whether the text
    /// should be overridden to support multiple languages in the same document
    public func unicodeBidi<V>(_ type: ExpressableState<V, UnicodeBidiType>) -> Self {
        unicodeBidi(type.unwrap())
    }
}

// MARK: - UserSelectProperty

/// Specifies whether the text of an element can be selected
///
/// ```html
/// div {
///     -webkit-user-select: none; /* Safari */
///     -ms-user-select: none; /* IE 10+ and Edge */
///     user-select: none; /* Standard syntax */
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_user-select.asp)
public class UserSelectProperty: _Property {
    public var propertyKey: PropertyKey<UserSelectType> { .userSelect }
    public var propertyValue: UserSelectType
    public var propertyAliases: [AnyProperty]
    var _content = _PropertyContent<UserSelectType>()

    public init (_ type: UserSelectType) {
        propertyValue = type
        propertyAliases = [Webkit(type), MS(type)]
    }

    public convenience init (_ type: State<UserSelectType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, UserSelectType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether the text of an element can be selected
    public static var userSelect: PropertyKey<UserSelectType> { "user-select".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether the text of an element can be selected
    public typealias UserSelect = UserSelectProperty
}

extension CSSRulable {
    /// Specifies whether the text of an element can be selected
    public func userSelect(_ type: UserSelectType) -> Self {
        _addProperty(.userSelect, type)
        return self
    }

    /// Specifies whether the text of an element can be selected
    public func userSelect(_ type: State<UserSelectType>) -> Self {
        _addProperty(UserSelectProperty(type))
        return self
    }

    /// Specifies whether the text of an element can be selected
    public func userSelect<V>(_ type: ExpressableState<V, UserSelectType>) -> Self {
        userSelect(type.unwrap())
    }
}

extension UserSelectProperty {
    public class MS: _Property {
        public var propertyKey: PropertyKey<UserSelectType> { .userSelect_ms }
        public var propertyValue: UserSelectType
        var _content = _PropertyContent<UserSelectType>()

        public init (_ type: UserSelectType) {
            propertyValue = type
        }

        public convenience init (_ type: State<UserSelectType>) {
            self.init(type.wrappedValue)
            type.listen { self._changed(to: $0) }
        }

        public convenience init <V>(_ type: ExpressableState<V, UserSelectType>) {
            self.init(type.unwrap())
        }
    }
}

extension PropertyKey {
    public static var userSelect_ms: PropertyKey<UserSelectType> { "-ms-user-select".propertyKey() }
}

extension UserSelectProperty {
    public class Webkit: _Property {
        public var propertyKey: PropertyKey<UserSelectType> { .userSelect_webKit }
        public var propertyValue: UserSelectType
        var _content = _PropertyContent<UserSelectType>()

        public init (_ type: UserSelectType) {
            propertyValue = type
        }

        public convenience init (_ type: State<UserSelectType>) {
            self.init(type.wrappedValue)
            type.listen { self._changed(to: $0) }
        }

        public convenience init <V>(_ type: ExpressableState<V, UserSelectType>) {
            self.init(type.unwrap())
        }
    }
}

extension PropertyKey {
    public static var userSelect_webKit: PropertyKey<UserSelectType> { "-webkit-user-select".propertyKey() }
}

// MARK: - VerticalAlignProperty

/// Sets the vertical alignment of an element
///
/// ```html
/// img.a {
///     vertical-align: baseline;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_pos_vertical-align.asp)
public class VerticalAlignProperty: _Property {
    public var propertyKey: PropertyKey<VerticalAlignType> { .verticalAlign }
    public var propertyValue: VerticalAlignType
    var _content = _PropertyContent<VerticalAlignType>()

    public init (_ type: VerticalAlignType) {
        propertyValue = type
    }

    public convenience init (_ type: State<VerticalAlignType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, VerticalAlignType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the vertical alignment of an element
    public static var verticalAlign: PropertyKey<VerticalAlignType> { "vertical-align".propertyKey() }
}

extension Stylesheet {
    /// Sets the vertical alignment of an element
    public typealias VerticalAlign = VerticalAlignProperty
}

extension CSSRulable {
    /// Sets the vertical alignment of an element
    public func verticalAlign(_ type: VerticalAlignType) -> Self {
        _addProperty(.verticalAlign, type)
        return self
    }

    /// Sets the vertical alignment of an element
    public func verticalAlign(_ type: State<VerticalAlignType>) -> Self {
        _addProperty(VerticalAlignProperty(type))
        return self
    }

    /// Sets the vertical alignment of an element
    public func verticalAlign<V>(_ type: ExpressableState<V, VerticalAlignType>) -> Self {
        verticalAlign(type.unwrap())
    }

    /// Sets the vertical alignment of an element
    public func verticalAlign<U: UnitValuable>(_ type: U) -> Self {
        verticalAlign(.length(type))
    }

    /// Sets the vertical alignment of an element
    public func verticalAlign<U: UnitValuable>(_ type: State<U>) -> Self {
        verticalAlign(type.map { .length($0) })
    }

    /// Sets the vertical alignment of an element
    public func verticalAlign<V, U: UnitValuable>(_ type: ExpressableState<V, U>) -> Self {
        verticalAlign(type.unwrap())
    }
}

// MARK: - VisibilityProperty

/// Specifies whether or not an element is visible
///
/// ```html
/// h2.a {
///     visibility: visible;
/// }
///
/// h2.b {
///     visibility: hidden;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_class_visibility.asp)
public class VisibilityProperty: _Property {
    public var propertyKey: PropertyKey<VisibilityType> { .visibility }
    public var propertyValue: VisibilityType
    var _content = _PropertyContent<VisibilityType>()

    public init (_ type: VisibilityType) {
        propertyValue = type
    }

    public convenience init (_ type: State<VisibilityType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, VisibilityType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether or not an element is visible
    public static var visibility: PropertyKey<VisibilityType> { "visibility".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether or not an element is visible
    public typealias Visibility = VisibilityProperty
}

extension CSSRulable {
    /// Specifies whether or not an element is visible
    public func visibility(_ type: VisibilityType) -> Self {
        _addProperty(.visibility, type)
        return self
    }

    /// Specifies whether or not an element is visible
    public func visibility(_ type: State<VisibilityType>) -> Self {
        _addProperty(VisibilityProperty(type))
        return self
    }

    /// Specifies whether or not an element is visible
    public func visibility<V>(_ type: ExpressableState<V, VisibilityType>) -> Self {
        visibility(type.unwrap())
    }
}

// MARK: - WhiteSpaceProperty

/// Specifies how white-space inside an element is handled
///
/// ```html
/// p.a {
///     white-space: nowrap;
/// }
///
/// p.b {
///     white-space: normal;
/// }
///
/// p.c {
///     white-space: pre;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_text_white-space.asp)
public class WhiteSpaceProperty: _Property {
    public var propertyKey: PropertyKey<WhiteSpaceType> { .whiteSpace }
    public var propertyValue: WhiteSpaceType
    var _content = _PropertyContent<WhiteSpaceType>()

    public init (_ type: WhiteSpaceType) {
        propertyValue = type
    }

    public convenience init (_ type: State<WhiteSpaceType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, WhiteSpaceType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies how white-space inside an element is handled
    public static var whiteSpace: PropertyKey<WhiteSpaceType> { "white-space".propertyKey() }
}

extension Stylesheet {
    /// Specifies how white-space inside an element is handled
    public typealias WhiteSpace = WhiteSpaceProperty
}

extension CSSRulable {
    /// Specifies how white-space inside an element is handled
    public func whiteSpace(_ type: WhiteSpaceType) -> Self {
        _addProperty(.whiteSpace, type)
        return self
    }

    /// Specifies how white-space inside an element is handled
    public func whiteSpace(_ type: State<WhiteSpaceType>) -> Self {
        _addProperty(WhiteSpaceProperty(type))
        return self
    }

    /// Specifies how white-space inside an element is handled
    public func whiteSpace<V>(_ type: ExpressableState<V, WhiteSpaceType>) -> Self {
        whiteSpace(type.unwrap())
    }
}

// MARK: - WidowsProperty

/// Sets the minimum number of lines that must be left at the top of a page when a page break occurs inside an element
public class WidowsProperty: _Property {
    public var propertyKey: PropertyKey<Int> { .widows }
    public var propertyValue: Int
    var _content = _PropertyContent<Int>()

    public init (_ value: Int) {
        propertyValue = value
    }

    public convenience init (_ type: State<Int>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, Int>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the minimum number of lines that must be left at the top of a page when a page break occurs inside an element
    public static var widows: PropertyKey<Int> { "widows".propertyKey() }
}

extension Stylesheet {
    /// Sets the minimum number of lines that must be left at the top of a page when a page break occurs inside an element
    public typealias Widows = WidowsProperty
}

extension CSSRulable {
    /// Sets the minimum number of lines that must be left at the top of a page when a page break occurs inside an element
    public func widows(_ type: Int) -> Self {
        _addProperty(.widows, type)
        return self
    }

    /// Sets the minimum number of lines that must be left at the top of a page when a page break occurs inside an element
    public func widows(_ type: State<Int>) -> Self {
        _addProperty(WidowsProperty(type))
        return self
    }

    /// Sets the minimum number of lines that must be left at the top of a page when a page break occurs inside an element
    public func widows<V>(_ type: ExpressableState<V, Int>) -> Self {
        widows(type.unwrap())
    }
}

// MARK: - WidthProperty

/// Sets the width of an element
///
/// ```html
/// div.a {
///     width: auto;
///     border: 1px solid black;
/// }
///
/// div.b {
///     width: 150px;
///     border: 1px solid black;
/// }
///
/// div.c {
///     width: 50%;
///     border: 1px solid black;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_dim_width.asp)
public class WidthProperty: _Property {
    public var propertyKey: PropertyKey<UnitValue> { .width }
    public var propertyValue: UnitValue
    var _content = _PropertyContent<UnitValue>()

    public init<U: UnitValuable>(_ value: U) {
        propertyValue = UnitValue(value.value.doubleValue, value.unit)
    }

    public convenience init <U: UnitValuable>(_ value: State<U>) {
        self.init(value.wrappedValue)
        value.listen { self._changed(to: UnitValue($0.value.doubleValue, $0.unit)) }
    }

    public convenience init <V, U: UnitValuable>(_ value: ExpressableState<V, U>) {
        self.init(value.unwrap())
    }

    // MARK: Extended

    public convenience init (_ value: Double, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: Double, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: Unit) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: Double, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init (_ value: State<Double>, _ unit: State<Unit>) {
        self.init(UnitValue(value, unit))
    }

    public convenience init <V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) {
        self.init(UnitValue(value, unit))
    }
}

extension PropertyKey {
    /// Sets the width of an element
    public static var width: PropertyKey<UnitValue> { "width".propertyKey() }
}

extension Stylesheet {
    /// Sets the width of an element
    public typealias Width = WidthProperty
}

extension CSSRulable {
    /// Sets the width of an element
    public func width<U: UnitValuable>(_ value: U) -> Self {
        _addProperty(.width, UnitValue(value.value.doubleValue, value.unit))
        return self
    }

    /// Sets the width of an element
    public func width<U: UnitValuable>(_ value: State<U>) -> Self {
        _addProperty(WidthProperty(value))
        return self
    }

    /// Sets the width of an element
    public func width<V, U: UnitValuable>(_ value: ExpressableState<V, U>) -> Self {
        width(value.unwrap())
    }

    // MARK: Extended

    /// Sets the width of an element
    public func width(_ value: Double, _ unit: Unit) -> Self {
        _addProperty(.width, UnitValue(value, unit))
        return self
    }

    /// Sets the width of an element
    public func width(_ value: State<Double>, _ unit: Unit) -> Self {
        _addProperty(.width, UnitValue(value, unit))
        return self
    }

    /// Sets the width of an element
    public func width(_ value: Double, _ unit: State<Unit>) -> Self {
        _addProperty(.width, UnitValue(value, unit))
        return self
    }

    /// Sets the width of an element
    public func width<V>(_ value: ExpressableState<V, Double>, _ unit: Unit) -> Self {
        _addProperty(.width, UnitValue(value, unit))
        return self
    }

    /// Sets the width of an element
    public func width<V>(_ value: Double, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.width, UnitValue(value, unit))
        return self
    }

    /// Sets the width of an element
    public func width<V>(_ value: State<Double>, _ unit: ExpressableState<V, Unit>) -> Self {
        _addProperty(.width, UnitValue(value, unit))
        return self
    }

    /// Sets the width of an element
    public func width<V>(_ value: ExpressableState<V, Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.width, UnitValue(value, unit))
        return self
    }

    /// Sets the width of an element
    public func width(_ value: State<Double>, _ unit: State<Unit>) -> Self {
        _addProperty(.width, UnitValue(value, unit))
        return self
    }

    /// Sets the width of an element
    public func width<V, U>(_ value: ExpressableState<V, Double>, _ unit: ExpressableState<U, Unit>) -> Self {
        _addProperty(.width, UnitValue(value, unit))
        return self
    }
}

// MARK: - WordBreakProperty

/// Specifies how words should break when reaching the end of a line
///
/// ```html
/// p.a {
///    word-break: break-all;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_word-break.asp)
public class WordBreakProperty: _Property {
    public var propertyKey: PropertyKey<WordBreakType> { .wordBreak }
    public var propertyValue: WordBreakType
    var _content = _PropertyContent<WordBreakType>()

    public init (_ type: WordBreakType) {
        propertyValue = type
    }

    public convenience init (_ type: State<WordBreakType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, WordBreakType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies how words should break when reaching the end of a line
    public static var wordBreak: PropertyKey<WordBreakType> { "word-break".propertyKey() }
}

extension Stylesheet {
    /// Specifies how words should break when reaching the end of a line
    public typealias WordBreak = WordBreakProperty
}

extension CSSRulable {
    /// Specifies how words should break when reaching the end of a line
    public func wordBreak(_ type: WordBreakType) -> Self {
        _addProperty(.wordBreak, type)
        return self
    }

    /// Specifies how words should break when reaching the end of a line
    public func wordBreak(_ type: State<WordBreakType>) -> Self {
        _addProperty(WordBreakProperty(type))
        return self
    }

    /// Specifies how words should break when reaching the end of a line
    public func wordBreak<V>(_ type: ExpressableState<V, WordBreakType>) -> Self {
        wordBreak(type.unwrap())
    }
}

// MARK: - WordSpacingProperty

/// Increases or decreases the space between words in a text
///
/// ```html
/// p {
///    word-spacing: 30px;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_text_word-spacing.asp)
public class WordSpacingProperty: _Property {
    public var propertyKey: PropertyKey<WordSpacingType> { .wordSpacing }
    public var propertyValue: WordSpacingType
    var _content = _PropertyContent<WordSpacingType>()

    public init (_ type: WordSpacingType) {
        propertyValue = type
    }

    public convenience init (_ type: State<WordSpacingType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, WordSpacingType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Increases or decreases the space between words in a text
    public static var wordSpacing: PropertyKey<WordSpacingType> { "word-spacing".propertyKey() }
}

extension Stylesheet {
    /// Increases or decreases the space between words in a text
    public typealias WordSpacing = WordSpacingProperty
}

extension CSSRulable {
    /// Increases or decreases the space between words in a text
    public func wordSpacing(_ type: WordSpacingType) -> Self {
        _addProperty(.wordSpacing, type)
        return self
    }

    /// Increases or decreases the space between words in a text
    public func wordSpacing(_ type: State<WordSpacingType>) -> Self {
        _addProperty(WordSpacingProperty(type))
        return self
    }

    /// Increases or decreases the space between words in a text
    public func wordSpacing<V>(_ type: ExpressableState<V, WordSpacingType>) -> Self {
        wordSpacing(type.unwrap())
    }

    /// Increases or decreases the space between words in a text
    public func wordSpacing<U: UnitValuable>(_ type: U) -> Self {
        wordSpacing(.length(type))
    }

    /// Increases or decreases the space between words in a text
    public func wordSpacing<U: UnitValuable>(_ type: State<U>) -> Self {
        wordSpacing(type.map { .length($0) })
    }

    /// Increases or decreases the space between words in a text
    public func wordSpacing<V, U: UnitValuable>(_ type: ExpressableState<V, U>) -> Self {
        wordSpacing(type.unwrap())
    }
}

// MARK: - WordWrapProperty

/// Allows long, unbreakable words to be broken and wrap to the next line
///
/// ```html
/// div {
///    word-wrap: break-word;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_word-wrap.asp)
public class WordWrapProperty: _Property {
    public var propertyKey: PropertyKey<WordWrapType> { .wordWrap }
    public var propertyValue: WordWrapType
    var _content = _PropertyContent<WordWrapType>()

    public init (_ type: WordWrapType) {
        propertyValue = type
    }

    public convenience init (_ type: State<WordWrapType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, WordWrapType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Allows long, unbreakable words to be broken and wrap to the next line
    public static var wordWrap: PropertyKey<WordWrapType> { "word-wrap".propertyKey() }
}

extension Stylesheet {
    /// Allows long, unbreakable words to be broken and wrap to the next line
    public typealias WordWrap = WordWrapProperty
}

extension CSSRulable {
    /// Allows long, unbreakable words to be broken and wrap to the next line
    public func wordWrap(_ type: WordWrapType) -> Self {
        _addProperty(.wordWrap, type)
        return self
    }

    /// Allows long, unbreakable words to be broken and wrap to the next line
    public func wordWrap(_ type: State<WordWrapType>) -> Self {
        _addProperty(WordWrapProperty(type))
        return self
    }

    /// Allows long, unbreakable words to be broken and wrap to the next line
    public func wordWrap<V>(_ type: ExpressableState<V, WordWrapType>) -> Self {
        wordWrap(type.unwrap())
    }
}

// MARK: - WritingModeProperty

/// Specifies whether lines of text are laid out horizontally or vertically
///
/// ```html
/// p.test1 {
///     writing-mode: horizontal-tb;
/// }
///
/// p.test2 {
///     writing-mode: vertical-rl;
/// }
///
/// span.test2 {
///     writing-mode: vertical-rl;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/css3_pr_writing-mode.asp)
public class WritingModeProperty: _Property {
    public var propertyKey: PropertyKey<WritingModeType> { .writingMode }
    public var propertyValue: WritingModeType
    var _content = _PropertyContent<WritingModeType>()

    public init (_ type: WritingModeType) {
        propertyValue = type
    }

    public convenience init (_ type: State<WritingModeType>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, WritingModeType>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Specifies whether lines of text are laid out horizontally or vertically
    public static var writingMode: PropertyKey<WritingModeType> { "writing-mode".propertyKey() }
}

extension Stylesheet {
    /// Specifies whether lines of text are laid out horizontally or vertically
    public typealias WritingMode = WritingModeProperty
}

extension CSSRulable {
    /// Specifies whether lines of text are laid out horizontally or vertically
    public func writingMode(_ type: WritingModeType) -> Self {
        _addProperty(.writingMode, type)
        return self
    }

    /// Specifies whether lines of text are laid out horizontally or vertically
    public func writingMode(_ type: State<WritingModeType>) -> Self {
        _addProperty(WritingModeProperty(type))
        return self
    }

    /// Specifies whether lines of text are laid out horizontally or vertically
    public func writingMode<V>(_ type: ExpressableState<V, WritingModeType>) -> Self {
        writingMode(type.unwrap())
    }
}

// MARK: - ZIndexProperty

/// Sets the stack order of a positioned element
///
/// ```html
/// img {
///     position: absolute;
///     left: 0px;
///     top: 0px;
///     z-index: -1;
/// }
/// ```
///
/// [Learn more](https://www.w3schools.com/cssref/pr_pos_z-index.asp)
public class ZIndexProperty: _Property {
    public var propertyKey: PropertyKey<Int> { .zIndex }
    public var propertyValue: Int
    var _content = _PropertyContent<Int>()

    public init (_ value: Int) {
        propertyValue = value
    }

    public convenience init (_ type: State<Int>) {
        self.init(type.wrappedValue)
        type.listen { self._changed(to: $0) }
    }

    public convenience init <V>(_ type: ExpressableState<V, Int>) {
        self.init(type.unwrap())
    }
}

extension PropertyKey {
    /// Sets the stack order of a positioned element
    public static var zIndex: PropertyKey<Int> { "z-index".propertyKey() }
}

extension Stylesheet {
    /// Sets the stack order of a positioned element
    public typealias ZIndex = ZIndexProperty
}

extension CSSRulable {
    /// Sets the stack order of a positioned element
    public func zIndex(_ type: Int) -> Self {
        _addProperty(.zIndex, type)
        return self
    }

    /// Sets the stack order of a positioned element
    public func zIndex(_ type: State<Int>) -> Self {
        _addProperty(ZIndexProperty(type))
        return self
    }

    /// Sets the stack order of a positioned element
    public func zIndex<V>(_ type: ExpressableState<V, Int>) -> Self {
        zIndex(type.unwrap())
    }
}
