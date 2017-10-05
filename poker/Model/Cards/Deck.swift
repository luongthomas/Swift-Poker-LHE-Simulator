//
//  Deck.swift
//  poker
//
//  Created by Puroof on 10/3/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import Foundation

class Deck {
    var cards = [Card]()
    var suits = [Suit]()
    var ranks = [Rank]()
    
    init() {
        self.initializeTypes()
        self.createDeck()
        self.shuffleDeck()
    }
    
    func initializeTypes() {
        suits.append(contentsOf: [.spade, .club, .heart, .diamond])
        ranks.append(contentsOf: [.ace, .two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .queen, .king])
    }
    
    func createDeck() {
        for rank in ranks {
            for suit in suits {
                let card = Card(suit: suit, rank: rank)
                cards.append(card)
            }
        }
    }
    
    func shuffleDeck() {
        self.cards = self.cards.shuffled()
    }
    
    func drawCard() -> Card {
        return self.cards.remove(at: 0)
    }
}


