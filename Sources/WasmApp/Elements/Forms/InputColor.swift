//
//  InputColor.swift
//  WasmApp
//
//  Created by Mihael Isaev on 25.12.2020.
//

import Foundation

/// A control for specifying a color;
/// opening a color picker when active in supporting browsers.
///
/// The HTML `<input>` element is used to create interactive controls
/// for web-based forms in order to accept data from the user;
/// a wide variety of types of input data and control widgets are available,
/// depending on the device and user agent.
///
/// [Learn more ->](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/color)
open class InputColor: BaseActiveElement, _ChangeHandleable, _InvalidHandleable, _InputHandleable {
    public override class var name: String { "input" }
    
    @State public var text: String = "#000000"
    
    var inputEventHasNeverFired = true
    var changeClosure: ChangeClosure?
    var changeHandler: (HandledEvent) -> Void = { _ in }
    
    /// Convenience getter
    var _value: String? {
        domElement.value.string
    }
    
    func _updateStateWithValue() {
        guard let value = _value else { return }
        self.text = value
    }
    
    func onChange(_ event: HandledEvent) {
        guard inputEventHasNeverFired else { return }
        _updateStateWithValue()
    }
    
    var inputClosure: InputClosure?
    var inputHandler: (InputEvent) -> Void = { _ in }
    
    func onInput(_ event: InputEvent) {
        inputEventHasNeverFired = false
        _updateStateWithValue()
    }
    
    var invalidClosure: InvalidClosure?
    var invalidHandler: (HandledEvent) -> Void = { _ in }
    
    deinit {
        changeClosure?.release()
        inputClosure?.release()
        invalidClosure?.release()
    }
    
    public required init() {
        super.init()
        subscribeToChanges()
        subscribeToInput()
        domElement.type = "color".jsValue()
        domElement.value = text.jsValue()
    }
    
    public required convenience init(_ value: String) {
        self.init()
        domElement.value = value.jsValue()
        self.text = value
        _text.listen {
            self.domElement.value = $0.jsValue()
        }
    }
    
    public required convenience init(_ value: State<String>) {
        self.init()
        domElement.value = value.wrappedValue.jsValue()
        _text.wrappedValue = value.wrappedValue
        _text.merge(with: value, leftChanged: { new in
            self.domElement.value = new.jsValue()
        }, rightChanged: { new in
            self.domElement.value = new.jsValue()
        })
    }
}

extension InputColor: _Selectable {}
