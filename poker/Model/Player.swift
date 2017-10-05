//
//  Player.swift
//  poker
//
//  Created by Puroof on 10/3/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import Foundation


class Player {
    
    var chips: Double
    var name: String
    var card1: Card?
    var card2: Card?
    var action: Action?
    
    init(chips: Double, name: String, card1: Card? = nil, card2: Card? = nil, action: Action? = nil) {
        self.chips = chips
        self.name = name
        self.card1 = card1
        self.card2 = card2
        self.action = action
    }
}
