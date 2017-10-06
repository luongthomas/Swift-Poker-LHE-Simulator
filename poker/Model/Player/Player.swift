//
//  Player.swift
//  poker
//
//  Created by Puroof on 10/3/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import Foundation


class Player: NSCopying {
    
    //https://stackoverflow.com/questions/32111868/how-to-conform-to-nscopying-and-implement-copywithzone-in-swift-2
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Player(chips: self.chips, name: self.name, card1: self.card1, card2: self.card2, action: self.action, position: self.position)
        return copy
    }
    
    
    var chips: Double?
    var name: String?
    var card1: Card?
    var card2: Card?
    var action: Action?
    var position: PositionType?
    
    // table seat?
    
    init(chips: Double? = nil, name: String? = nil, card1: Card? = nil, card2: Card? = nil, action: Action? = nil, position: PositionType? = nil) {
        self.chips = chips
        self.name = name
        self.card1 = card1
        self.card2 = card2
        self.action = action
        self.position = position
    }
    
    public static func ==(lhs: Player, rhs: Player) -> Bool{
        return
                lhs.chips! == rhs.chips! &&
                lhs.name! == rhs.name! &&
                lhs.card1! == rhs.card1! &&
                lhs.card2! == rhs.card2! &&
                lhs.action == rhs.action! &&
                lhs.position! == rhs.position!
    }
    
    public static func !=(lhs: Player, rhs: Player) -> Bool{
        return
                lhs.chips! != rhs.chips! &&
                lhs.name! != rhs.name! &&
                lhs.card1! != rhs.card1! &&
                lhs.card2! != rhs.card2! &&
                lhs.action != rhs.action! &&
                lhs.position! != rhs.position!
    }
}
