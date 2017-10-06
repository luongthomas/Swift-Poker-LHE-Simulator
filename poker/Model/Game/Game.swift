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
    
    var positions = [Position]()
    
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
        positions.append(contentsOf: [smallBlind, bigBlind, utg, utg1, utg2, mp1, mp2, cutoff, button])
        
    }
    
    
    func rotateGamePositions() {
        let firstSeat = self.table.seats.first?.player?.position
        let lastSeatIndex = self.table.seats.endIndex - 1
        var lastSeat = self.table.seats[lastSeatIndex].player?.position
        
        for (i, seat) in self.table.seats.enumerated() {
            //print("Swap Player before \(seat.player!.name) \(seat.player!.position)")
            if (seat.player!.position != lastSeat) {
                seat.player!.position = self.table.seats[i + 1].player!.position
            }
            //print("Swap Player after \(seat.player!.name) \(seat.player!.position)")
        }
        self.table.seats[lastSeatIndex].player?.position = firstSeat
        print("Rotated game positions")
    }
}
