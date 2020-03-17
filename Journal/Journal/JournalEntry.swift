//
//  JournalEntry.swift
//  Journal
//
//  Created by Scout on 3/11/20.
//  Copyright © 2020 Scout. All rights reserved.
//

import Foundation

struct JournalEntry: CustomStringConvertible {
    
    let date: Date
    let contents: String
    let dateFormatter = DateFormatter()
    
    var description: String {
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: date)
    }
    
}
