//
//  String+Random.swift
//  
//
//  Created by Mihael Isaev on 15.11.2020.
//

import Foundation

extension String {
    static func shuffledAlphabet(_ length: Int) -> String {
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        var randomString = ""
        for _ in 0...length-1 {
            let rand = arc4random() % UInt32(letters.count)
            let ind = Int(rand)
            let character = letters[letters.index(letters.startIndex, offsetBy: ind)]
            randomString.append(character)
        }
        return randomString
    }
}