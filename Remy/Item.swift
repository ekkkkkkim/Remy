//
//  Item.swift
//  Remy
//
//  Created by Eugene Kim on 3/11/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
