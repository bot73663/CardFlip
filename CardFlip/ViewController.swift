//
//  ViewController.swift
//  CardFlip
//
//  Created by azeem gaileh on 10/11/23.
//

import UIKit
var counter = 0
var card1Image = "cardBack"
var card2Image = "cardBack"
var card3Image = "cardBack"
var card4Image = "cardBack"
var card5Image = "cardBack"
var card6Image = "cardBack"
var card7Image = "cardBack"
var card8Image = "cardBack"
var card9Image = "cardBack"
var card10Image = "cardBack"
var card11Image = "cardBack"
var card12Image = "cardBack"
var card1Flipped = true
var card2Flipped = true
var card3Flipped = true
var card4Flipped = true
var card5Flipped = true
var card6Flipped = true
var card7Flipped = true
var card8Flipped = true
var card9Flipped = true
var card10Flipped = true
var card11Flipped = true
var card12Flipped = true
var cards = ["ace", "ace", "king", "king", "queen", "queen", "jack", "jack", "ten", "ten", "nine", "nine"]
var allCards = ["cardBack","cardBack","cardBack","cardBack","cardBack","cardBack","cardBack","cardBack","cardBack","cardBack","cardBack","cardBack"]
var card1Selected = ""
var card2Selected = ""
var card1Position = 0
var card2Position = 0

var matched = [0,0,0,0,0,0,0,0,0,0,0,0]
class ViewController: UIViewController {
    
    func dealCards() {
//        cards.shuffle()
      
    }
    
    @IBOutlet var tapCollection: [UIButton]!
    
    
    @IBOutlet weak var cardView: UIImageView!
    
    @IBOutlet weak var cardView2: UIImageView!
    
    @IBOutlet weak var cardView3: UIImageView!
    
    @IBOutlet weak var cardView4: UIImageView!
    
    
    @IBOutlet weak var cardView5: UIImageView!
    
    
    @IBOutlet weak var cardView6: UIImageView!
    
    @IBOutlet weak var cardView7: UIImageView!
    
    @IBOutlet weak var cardView8: UIImageView!
    
    @IBOutlet weak var cardView9: UIImageView!
    
    @IBOutlet weak var cardView10: UIImageView!
    
    
    @IBOutlet weak var cardView11: UIImageView!
    
    
    @IBOutlet weak var cardView12: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        dealCards()
        
    }
    func checkFlipped(){
        if card1Selected == card2Selected{
            matched[card1Position] = 1
            tapCollection[card1Position].isHidden = true
            matched[card2Position] = 1
            tapCollection[card2Position].isHidden = true
        }else{
            
        }
        
    }
    @IBAction func imageswitch(_ sender: UIButton) {
        if card1Flipped == true {
            card1Image = "queen"
            cardView.image = UIImage(named: cards[0])
            
            card1Flipped = false
        }else{
            cardView.image = UIImage(named: "cardBack")
            card1Flipped = true
        }
        //myImageView.image = UIImage(named: "tick")
        //cardView.image = UIImage(named: "cardFront")
        
        musicPlaySound(whatSound: "flipcard")
        
        counter += 1
        card1Selected = cards[0]
        
    }
    @IBAction func imageSwitch2(_ sender: UIButton) {
        if card2Flipped == true {
            cardView2.image = UIImage(named: cards[1])
            card2Flipped = false
        }else{
            cardView2.image = UIImage(named: "cardBack")
            card2Flipped = true
        }
        //myImageView.image = UIImage(named: "tick")
        //cardView.image = UIImage(named: "cardFront")
        
        musicPlaySound(whatSound: "flipcard")
        
        counter += 1
        
        if counter == 2{
            card2Selected = cards[1]
            
            card2Position = 1
        checkFlipped()
//            if card1Selected == card2Selected{
//                
//                
//            }else{
//                cardView2.image = UIImage(named: "cardBack")
//            }
            
           
        }
    }
        @IBAction func imageSwitch3(_ sender: Any) {
            if card3Flipped == true {
                cardView3.image = UIImage(named: cards[2])
                card3Flipped = false
            }else{
                cardView3.image = UIImage(named: "cardBack")
                card3Flipped = true
            }
            musicPlaySound(whatSound: "flipcard")
            
            
        }
        @IBAction func imageSwitch4(_ sender: UIButton) {
            if card4Flipped == true {
                cardView4.image = UIImage(named: cards[3])
                card4Flipped = false
            }else{
                cardView4.image = UIImage(named: "cardBack")
                card4Flipped = true
            }
            musicPlaySound(whatSound: "flipcard")
            
        }
        @IBAction func imageSwitch5(_ sender: UIButton) {
            if card5Flipped == true {
                cardView5.image = UIImage(named: cards[4])
                card5Flipped = false
            }else{
                cardView5.image = UIImage(named: "cardBack")
                card5Flipped = true
            }
            musicPlaySound(whatSound: "flipcard")
            
        }
        
        @IBAction func imageSwitch6(_ sender: UIButton) {        if card6Flipped == true {
            cardView6.image = UIImage(named: cards[5])
            card6Flipped = false
        }else{
            cardView6.image = UIImage(named: "cardBack")
            card6Flipped = true
        }
            musicPlaySound(whatSound: "flipcard")
            
        }
        @IBAction func imageSwitch7(_ sender: UIButton) {
            if card7Flipped == true {
                cardView7.image = UIImage(named: cards[6])
                card7Flipped = false
            }else{
                cardView7.image = UIImage(named: "cardBack")
                card7Flipped = true
            }
            musicPlaySound(whatSound: "flipcard")
            
        }
        @IBAction func imageSwitch8(_ sender: UIButton) {
            if card8Flipped == true {
                cardView8.image = UIImage(named: cards[7])
                card8Flipped = false
            }else{
                cardView8.image = UIImage(named: "cardBack")
                card8Flipped = true
            }
            musicPlaySound(whatSound: "flipcard")
            
        }
        @IBAction func imageSwitch9(_ sender: Any) {
            if card9Flipped == true {
                cardView9.image = UIImage(named: cards[8])
                card9Flipped = false
            }else{
                cardView9.image = UIImage(named: "cardBack")
                card9Flipped = true
            }
            musicPlaySound(whatSound: "flipcard")
            
        }
        @IBAction func imageSwitch10(_ sender: UIButton) {
            if card10Flipped == true {
                cardView10.image = UIImage(named: cards[9])
                card10Flipped = false
            }else{
                cardView10.image = UIImage(named: "cardBack")
                card10Flipped = true
            }
            musicPlaySound(whatSound: "flipcard")
            
        }
        @IBAction func imageSwitch11(_ sender: Any) {
            if card11Flipped == true {
                cardView11.image = UIImage(named: cards[10])
                card11Flipped = false
            }else{
                cardView11.image = UIImage(named: "cardBack")
                card11Flipped = true
            }
            musicPlaySound(whatSound: "flipcard")
            
        }
        
        @IBAction func imageSwitch12(_ sender: UIButton) {
            if card12Flipped == true {
                cardView12.image = UIImage(named: cards[11])
                card12Flipped = false
            }else{
                cardView12.image = UIImage(named: "cardBack")
                card12Flipped = true
                musicPlaySound(whatSound: "flipcard")
                
                
                
                
                
                
            }
        }
    
    
}
