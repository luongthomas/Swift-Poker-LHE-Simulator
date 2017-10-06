//
//  ViewController.swift
//  poker
//
//  Created by Puroof on 10/3/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let game = Game()
        
        
        
        
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
        game.smallBlind.player = player1
        game.bigBlind.player = player2
        game.utg.player = player3
        game.utg1.player = player4
        game.utg2.player = player5
        game.mp1.player = player6
        game.mp2.player = player7
        game.cutoff.player = player8
        game.button.player = player9

        
        for player in players {
            game.table.playerSitDown(player: player)
        }
        
        
        for (i, seat) in game.table.seats.enumerated() {
            if let currentSeat = seat as? Seat{
                print("Name of Person \(i + 1): \(String(describing: currentSeat.player!.name))")
            }
            
        }
        
//        var playerTestArray = [Player]()
//        playerTestArray.append(contentsOf: [game.smallBlind.player!, game.bigBlind.player!, game.utg.player!, game.utg1.player!, game.utg2.player!, game.mp1.player!, game.mp2.player!, game.cutoff.player!, game.button.player!])
        
//        player1.card1 = Card(suit: Suit.diamond, rank: Rank.eight)
//        playerTestArray[0].card1 = Card(suit: Suit.diamond, rank: Rank.nine)
//        print("\(player1.card1!.suit) \(player1.card1!.rank)")
//        print("\(playerTestArray[0].card1!.suit) \(playerTestArray[0].card1!.rank)")
//
        
        
        for seat in game.table.seats {
            let drawnCard = game.deck.drawCard()
            seat.player!.card1 = drawnCard
        }
        
        for seat in game.table.seats {
            let drawnCard = game.deck.drawCard()
            seat.player!.card2 = drawnCard
        }
        
        for seat in game.table.seats {
            print("Player name: \(seat.player!.name!), \(String(describing: seat.player!.position!)), \(String(describing: seat.player!.card1?.suit)) \(String(describing: seat.player!.card1?.rank)), \(String(describing: seat.player!.card2?.suit)) \(String(describing: seat.player!.card2?.rank))")
        }
        
        
        for (i, element) in game.board.boardCards.enumerated() {
            print("Board card (\(i)): \(element.suit) \(element.rank)")
        }
        
        game.startTurn()
        game.startRiver()
        
        print("Number of cards left in the deck: \(game.deck.cards.count)")
        
        
        
        game.rotateGamePositions()
        
        for seat in game.table.seats {
            print("Player name: \(seat.player!.name!), \(String(describing: seat.player!.position!)), \(String(describing: seat.player!.card1?.suit)) \(String(describing: seat.player!.card1?.rank)), \(String(describing: seat.player!.card2?.suit)) \(String(describing: seat.player!.card2?.rank))")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

