//
//  Select.swift
//  WasmApp
//
//  Created by Mihael Isaev on 16.12.2020.
//

import Foundation

/// The HTML `<select>` element represents a control that provides a menu of options
///
/// ```swift
/// Select($selectedAnimal) {
///     Option("Select animal")
///     OptGroup("In-Home") {
///         Option("Cat").value("cat")
///         Option("Dog").value("dog")
///     }
///     OptGroup("Outside") {
///         Option("Duck").value("duck")
///         Option("Horse").value("horse")
///     }
/// }
/// ```
///
/// [Learn more ->](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select)
open class Select: BaseActiveElement, _ChangeHandleable, _ScrollHandleable {
    @State public var text: String = ""
    
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
        _updateStateWithValue()
    }
    
    var scrollClosure: ScrollClosure?
    var scrollHandler: (UIEvent) -> Void = { _ in }
    
    deinit {
        changeClosure?.release()
        scrollClosure?.release()
    }
    
    public required init() {
        super.init()
        subscribeToChanges()
        domElement.value = text.jsValue()
    }
    
    public var value: String {
        domElement.value.string ?? ""
    }
    
    public required convenience init(_ value: String) {
        self.init()
        domElement.value = value.jsValue()
        self.text = value
        _text.listen {
            self.domElement.value = $0.jsValue()
        }
    }
    
    public convenience init(_ value: String, @BodyBuilder content: @escaping BodyBuilder.Block) {
        self.init(value)
        parseBodyBuilderItem(content().bodyBuilderContent)
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
    
    public convenience init(_ value: State<String>, @BodyBuilder content: @escaping BodyBuilder.Block) {
        self.init(value)
        parseBodyBuilderItem(content().bodyBuilderContent)
    }
    
    public func checkValidity() {
        domElement.checkValidity.function?.callAsFunction(this: domElement.object)
    }
}
