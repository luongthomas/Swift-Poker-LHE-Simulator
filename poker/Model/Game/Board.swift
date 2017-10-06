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
        self.drawBurnCard(deck: deck)
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
    
    
    func drawTurnCard(deck: Deck) {
        if (turnCard.suit == .none) {
            self.drawBurnCard(deck: deck)
            let drawnCard = deck.drawCard()
            turnCard = drawnCard
            print("Turn card: \(turnCard.suit) \(turnCard.rank)")
        }
    }
    
    func drawRiverCard(deck: Deck) {
        if (riverCard.suit == .none) {
            self.drawBurnCard(deck: deck)
            let drawnCard = deck.drawCard()
            riverCard = drawnCard
            print("River card: \(riverCard.suit) \(riverCard.rank)")
        }
    }
    
    
    func drawBurnCard(deck: Deck) {
        let burnCard = deck.drawCard()
        print("Burn card: \(burnCard.suit) \(burnCard.rank)")
//        print("Burned one card")
    }
}
