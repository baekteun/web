//
//  InputImage.swift
//  WasmApp
//
//  Created by Mihael Isaev on 25.12.2020.
//

import Foundation

/// A graphical submit button.
/// Displays an image defined by the src attribute.
/// The alt attribute displays if the image src is missing.
///
/// The HTML `<input>` element is used to create interactive controls
/// for web-based forms in order to accept data from the user;
/// a wide variety of types of input data and control widgets are available,
/// depending on the device and user agent.
///
/// [Learn more ->](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/image)
open class InputImage: BaseActiveElement, _ErrorHandleable {
    public override class var name: String { "input" }
    
    var errorClosure: ErrorClosure?
    var errorHandler: (ProgressEvent) -> Void = { _ in }
    
    deinit {
        errorClosure?.release()
    }
    
    public required init() {
        super.init()
        domElement.type = "image".jsValue()
    }
}
