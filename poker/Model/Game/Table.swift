//
//  Game.swift
//  poker
//
//  Created by Puroof on 10/3/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import Foundation

class Table {
    
    var seat1: Player?
    var seat2: Player?
    var seat3: Player?
    var seat4: Player?
    var seat5: Player?
    var seat6: Player?
    var seat7: Player?
    var seat8: Player?
    var seat9: Player?
    
    
    init() {
        
    }
    
    func playerSitDown(player: Player, pos: PositionType) {
        
    }
    
    func playerSitUp(player: Player) {
        // Loop through all positions and if player matches, then the position is now nil
        // TODO: Will this make the Player Nil?
    }
    
    
    
}
