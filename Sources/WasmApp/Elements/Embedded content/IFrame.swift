//
//  IFrame.swift
//  WasmApp
//
//  Created by Mihael Isaev on 16.12.2020.
//

import Foundation

///
///
/// [Learn more ->](<#T##c: Character##Character#>)
open class IFrame: BaseElement, _LoadHandleable {
    var loadClosure: LoadClosure?
    var loadHandler: (UIEvent) -> Void = { _ in }
    
    deinit {
        loadClosure?.release()
    }
}
