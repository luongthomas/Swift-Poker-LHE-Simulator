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
    var deck: Deck
    lazy var currentPlayerTurn: Player = {
        let player = Player(chips: nil, name: nil, card1: nil, card2: nil, action: nil, position: nil)
        return player
    }()
    
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
    
    
    init() {
        self.table = Table()
        self.board = Board()
        self.deck = Deck()
        positions.append(contentsOf: [smallBlind, bigBlind, utg, utg1, utg2, mp1, mp2, cutoff, button])
        self.populateTable()
    }
    
    func populateTable() {
        let player1 = Player(chips: 100, name: "John Doe", card1: nil, card2: nil, action: nil, position: nil)
        let player2 = Player(chips: 100, name: "Jake Doe", card1: nil, card2: nil, action: nil, position: nil)
        let player3 = Player(chips: 100, name: "Joe Doe", card1: nil, card2: nil, action: nil, position: nil)
        let player4 = Player(chips: 100, name: "Joke Doe", card1: nil, card2: nil, action: nil, position: nil)
        let player5 = Player(chips: 100, name: "Jane Doe", card1: nil, card2: nil, action: nil, position: nil)
        let player6 = Player(chips: 100, name: "Joseph Doe", card1: nil, card2: nil, action: nil, position: nil)
        let player7 = Player(chips: 100, name: "Johnny Doe", card1: nil, card2: nil, action: nil, position: nil)
        let player8 = Player(chips: 100, name: "Jope Doe", card1: nil, card2: nil, action: nil, position: nil)
        let player9 = Player(chips: 100, name: "Jolle Doe", card1: nil, card2: nil, action: nil, position: nil)
        
        
        var players = [Player]()
        players.append(contentsOf: [player1, player2, player3, player4, player5, player6, player7, player8, player9])
        
        // If I change the instance here of player1, then the game.bigBlind (assigned as player1) also changes properties
        self.smallBlind.player = player1
        self.bigBlind.player = player2
        self.utg.player = player3
        self.utg1.player = player4
        self.utg2.player = player5
        self.mp1.player = player6
        self.mp2.player = player7
        self.cutoff.player = player8
        self.button.player = player9
        
        
        for player in players {
            self.table.playerSitDown(player: player)
        }
    }
    
    
    func rotateGamePositions() {
        let firstSeat = self.table.seats.first?.player?.position
        let lastSeatIndex = self.table.seats.endIndex - 1
        let lastSeat = self.table.seats[lastSeatIndex].player?.position
        
        for (i, seat) in self.table.seats.enumerated() {
            //print("Swap Player before \(seat.player!.name) \(seat.player!.position)")
            if (seat.player!.position != lastSeat) {
                seat.player!.position = self.table.seats[i + 1].player!.position
            }
            //print("Swap Player after \(seat.player!.name) \(seat.player!.position)")
        }
        
        // Replace the last seat with the first seat
        // can't use lastSeat because it is just a local copy
        self.table.seats[lastSeatIndex].player?.position = firstSeat
        print("Rotated game positions")
    }
    
    func beginPreflop() {
        for seat in self.table.seats {
            let drawnCard = self.deck.drawCard()
            seat.player!.card1 = drawnCard
        }
        
        for seat in self.table.seats {
            let drawnCard = self.deck.drawCard()
            seat.player!.card2 = drawnCard
        }
        
        
    }
    
    func startFlop() {
        self.board.drawFlopCards(deck: self.deck)
        
        
    }
    
    func startTurn() {
        self.board.drawTurnCard(deck: self.deck)
    }
    
    func startRiver() {
        self.board.drawRiverCard(deck: self.deck)
    }
    
    
    
}
