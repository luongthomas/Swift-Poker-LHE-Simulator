//
//  Game.swift
//  poker
//
//  Created by Puroof on 10/3/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import Foundation


class Game {
    
    var table: Table
    var board: Board
    
    var players = [Player]()
    var smallBlind = Position(position: .smallBlind)
    var bigBlind = Position(position: .bigBlind)
    var utg = Position(position: .utg)
    var utg1 = Position(position: .utg1)
    var utg2 = Position(position: .utg2)
    var mp1 = Position(position: .mp1)
    var mp2 = Position(position: .mp2)
    var cutoff = Position(position: .cutoff)
    var button = Position(position: .button)
    
    init(table: Table, board: Board) {
        self.table = table
        self.board = board
    }
}
