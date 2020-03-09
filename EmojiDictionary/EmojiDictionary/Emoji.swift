//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Scout on 3/6/20.
//  Copyright © 2020 Scout. All rights reserved.
//

import Foundation

struct Emoji {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
