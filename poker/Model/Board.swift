//
//  Board.swift
//  poker
//
//  Created by Puroof on 10/4/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import Foundation


class Board {
    var flopCards = [Card]()
    var turnCard: Card
    var riverCard: Card
    var boardCards = [Card]()
    
    init() {
        turnCard = Card(suit: .none, rank: .none)
        riverCard = Card(suit: .none, rank: .none)
    }
    
    // uses board, remaining cards in deck, and cards in hand
    func calculateOdds(deck: Deck, card1: Card, card2: Card) {
        
    }
    
    
    func drawFlopCards(deck: Deck) {
        let drawnCard = deck.drawCard()
        let secondDrawnCard = deck.drawCard()
        let thirdDrawnCard = deck.drawCard()
        
        print("There are \(deck.cards.count) left in the deck")
        boardCards.append(drawnCard)
        boardCards.append(secondDrawnCard)
        boardCards.append(thirdDrawnCard)
        
        for (i, element) in boardCards.enumerated() {
            print("Board card (\(i)): \(element.suit) \(element.rank)")
        }
    }
}
