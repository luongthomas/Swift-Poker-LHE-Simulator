//
//  Card.swift
//  poker
//
//  Created by Puroof on 10/3/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import Foundation


struct Card {
    let suit: Suit
    let rank: Rank
    
    public static func ==(lhs: Card, rhs: Card) -> Bool{
        return
                lhs.suit == rhs.suit &&
                lhs.rank == rhs.rank
    }
    
    public static func !=(lhs: Card, rhs: Card) -> Bool{
        return
                lhs.suit != rhs.suit &&
                lhs.rank != rhs.rank
    }
}
