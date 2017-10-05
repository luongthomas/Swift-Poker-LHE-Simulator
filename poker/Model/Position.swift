//
//  Position.swift
//  poker
//
//  Created by Puroof on 10/3/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import Foundation

enum PositionType {
    case smallBlind, bigBlind, utg, utg1, utg2, mp1, mp2, cutoff, button
}

struct Position {
    var player: Player? {
        didSet {
            self.player?.position = self.position
        }
    }
    var position: PositionType
    
    init(player: Player? = nil, position: PositionType) {
//        self.player = player
        self.position = position
    }
}
