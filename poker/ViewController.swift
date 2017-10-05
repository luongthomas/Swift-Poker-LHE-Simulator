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
        
        let deck = Deck()
        for card in deck.cards {
            print(card.suit, card.rank)
        }
        
//        var drawnCard = deck.drawCard()
//        print("Drawn card: \(drawnCard.suit) \(drawnCard.rank)")
//
        let board = Board()
        board.drawFlopCards(deck: deck)
        
        
        print("Number of cards left in the deck: \(deck.cards.count)")

        let table = Table()
        for (i, person) in table.players.enumerated() {
            print("Person \(i + 1): \(person.name)")
        }
        
        
        let player1 = Player(chips: 100, name: "John Doe", card1: nil, card2: nil, action: nil)
        let player2 = Player(chips: 100, name: "Jake Doe", card1: nil, card2: nil, action: nil)
        let player3 = Player(chips: 100, name: "Joe Doe", card1: nil, card2: nil, action: nil)
        let player4 = Player(chips: 100, name: "Joke Doe", card1: nil, card2: nil, action: nil)
        let player5 = Player(chips: 100, name: "Jane Doe", card1: nil, card2: nil, action: nil)
        let player6 = Player(chips: 100, name: "Joeseph Doe", card1: nil, card2: nil, action: nil)
        let player7 = Player(chips: 100, name: "Johnny Doe", card1: nil, card2: nil, action: nil)
        let player8 = Player(chips: 100, name: "Jope Doe", card1: nil, card2: nil, action: nil)
        let player9 = Player(chips: 100, name: "Jolle Doe", card1: nil, card2: nil, action: nil)
        
        
        // If I change the instance here of player1, then the table.bigBlind (assigned as player1) also changes properties
        
        
        
        
        table.bigBlind.player = player1
        table.smallBlind.player = player2
        table.utg.player = player3
        table.utg1.player = player4
        table.utg2.player = player5
        table.mp1.player = player6
        table.mp2.player = player7
        table.cutoff.player = player8
        table.button.player = player9
        
        var playerTestArray = [Player]()
        playerTestArray.append(contentsOf: [table.bigBlind.player!, table.smallBlind.player!, table.utg.player!, table.utg1.player!, table.utg2.player!, table.mp1.player!, table.mp2.player!, table.cutoff.player!, table.button.player!])
        
        player1.card1 = Card(suit: Suit.diamond, rank: Rank.eight)
        print("\(player1.card1!.suit) \(player1.card1!.rank)")
        
        
        
        
        
        
        
//        table.bigBlind.player!.card1 = Card(suit: Suit.club, rank: Rank.ace)
//        player1.card1 = Card(suit: Suit.heart, rank: Rank.king)
//        table.bigBlind.player!.card1 = Card(suit: Suit.club, rank: Rank.ace)
        

//        print("\(table.bigBlind.player!.card1!.suit) \(table.bigBlind.player!.card1!.rank)")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

