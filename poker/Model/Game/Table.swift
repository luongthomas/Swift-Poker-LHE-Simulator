//
//  Game.swift
//  poker
//
//  Created by Puroof on 10/3/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import Foundation

class Table {
    
    var seat1: Seat 
    var seat2: Seat
    var seat3: Seat
    var seat4: Seat
    var seat5: Seat
    var seat6: Seat
    var seat7: Seat
    var seat8: Seat
    var seat9: Seat
    var seats = [Seat]()
    
    init() {
        let emptyPlayer = Player(chips: nil, name: nil, card1: nil, card2: nil, action: nil, position: nil)
        seat1 = Seat(seat: tableSeat.seat1, player: emptyPlayer)
        seat2 = Seat(seat: tableSeat.seat2, player: emptyPlayer)
        seat3 = Seat(seat: tableSeat.seat3, player: emptyPlayer)
        seat4 = Seat(seat: tableSeat.seat4, player: emptyPlayer)
        seat5 = Seat(seat: tableSeat.seat5, player: emptyPlayer)
        seat6 = Seat(seat: tableSeat.seat6, player: emptyPlayer)
        seat7 = Seat(seat: tableSeat.seat7, player: emptyPlayer)
        seat8 = Seat(seat: tableSeat.seat8, player: emptyPlayer)
        seat9 = Seat(seat: tableSeat.seat9, player: emptyPlayer)
        seats.append(contentsOf: [seat1, seat2, seat3, seat4, seat5, seat6, seat7, seat8, seat9])
    }
    
    func playerSitDown(player: Player) {
        var emptySeatIndex = -1
        for (i, seat) in seats.enumerated() {
            if seat.player?.name == nil {
                emptySeatIndex = i
            }
        }
        
        self.seats[emptySeatIndex].player? = player.copy() as! Player
        
    }
    
    func playerSitUp(player: Player) {
        // Loop through all positions and if player matches, then the position is now nil
        // TODO: Will this make the Player Nil?
    }
    
    
    
}
