//
//  Seat.swift
//  poker
//
//  Created by Puroof on 10/5/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import Foundation

enum tableSeat {
    case seat1, seat2, seat3, seat4, seat5, seat6, seat7, seat8, seat9
}

struct Seat {

    let seat: tableSeat
    var player: Player?
    
    public static func ==(lhs: Seat, rhs: Seat) -> Bool{
        return
            lhs.seat == rhs.seat &&
            lhs.player! == rhs.player!
    }
    
    public static func !=(lhs: Seat, rhs: Seat) -> Bool{
        return
                lhs.seat != rhs.seat &&
                lhs.player! != rhs.player!
    }
    
}



