//
//  ViewController.swift
//  poker
//
//  Created by Puroof on 10/3/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var positionLbl: UILabel!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var chipsLbl: UILabel!
    
    @IBOutlet weak var suit1Lbl: UILabel!
    @IBOutlet weak var suit2Lbl: UILabel!
    @IBOutlet weak var rank1Lbl: UILabel!
    @IBOutlet weak var rank2Lbl: UILabel!
    
    @IBAction func doBet(_ sender: Any) {
        print("Betting")
    }
    @IBAction func doCheck(_ sender: Any) {
        print("Checking")
        
    }
    
    @IBAction func doFold(_ sender: Any) {
        print("Folding")
    }
    
    
    
    @IBOutlet weak var checkBtn: UIButton!
    @IBOutlet weak var betBtn: UIButton!
    @IBOutlet weak var foldBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        doCheck(self)
        let game = Game()
        
        game.beginPreflop()
        
        
        for (i, seat) in game.table.seats.enumerated() {
            if let currentSeat = seat as? Seat{
                print("Name of Person \(i + 1): \(String(describing: currentSeat.player!.name))")
            }
            
        }
        
        
        for (i, seat) in game.table.seats.enumerated() {
            guard let suit1 = seat.player!.card1?.suit else { return }
            guard let suit2 = seat.player!.card2?.suit else { return }
            guard let rank1 = seat.player!.card1?.rank else { return }
            guard let rank2 = seat.player!.card2?.rank else { return }
            
            print("Player name \(i): \(seat.player!.name!), \(String(describing: seat.player!.position!)), \(String(describing: suit1)) \(String(describing: rank1)), \(String(describing: suit2)) \(String(describing: rank2))")
        }
        
        
        for (i, element) in game.board.boardCards.enumerated() {
            print("Board card (\(i)): \(element.suit) \(element.rank)")
        }
        
        game.startTurn()
        game.startRiver()
        
        print("Number of cards left in the deck: \(game.deck.cards.count)")
        
        
        
        game.rotateGamePositions()
        
        for (i, seat) in game.table.seats.enumerated() {
            guard let suit1 = seat.player!.card1?.suit else { return }
            guard let suit2 = seat.player!.card2?.suit else { return }
            guard let rank1 = seat.player!.card1?.rank else { return }
            guard let rank2 = seat.player!.card2?.rank else { return }
            
            print("Player name \(i): \(seat.player!.name!), \(String(describing: seat.player!.position!)), \(String(describing: suit1)) \(String(describing: rank1)), \(String(describing: suit2)) \(String(describing: rank2))")
        }
        
        
        game.updateValues(nameLabel: nameLbl, chipsLabel: chipsLbl, positionLabel: positionLbl, suit1Label: suit1Lbl, suit2Label: suit2Lbl, rank1Label: rank1Lbl, rank2Label: rank2Lbl)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

