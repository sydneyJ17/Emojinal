//
//  ViewController.swift
//  emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    let emojis = ["🍽" : "Food" , "🎡" : "Attractions" , "🏈" : "Sports" , "☕️" : "Coffee"]

    
//BUTTONS
    @IBOutlet weak var eatButton: UIButton!
    
    

//DICTIONARY- MESSAGES FOR EACH BUTTON
    var customMessages = [
        "Food" : [ "Giordanos" , "Eataly" , "Purple Pig" , "Harry Caray's"] ,
        "Attractions" : ["Riverwalk" , "The Bean" , "Navy Pier" , "Willis Tower"] ,
        "Sports" : ["Bears" , "Blackhawks" , "Cubs" , "White Sox"] ,
        "Coffee" : ["Starbucks" , "Dunkin" , "Caffe Umbria" , "Fairgrounds Coffee & Tea"]
    ]
    
//RANDOM MESSAGE CHOOSER
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    
//ACTIONS FOR FOOD BUTTON
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
        let random:UInt32 = arc4random_uniform(4)
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int(random)]
        
        let alertController = UIAlertController(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
     
        
            
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            present(alertController, animated: true, completion: nil)
        
        }
    
    
//ACTIONS FOR ATTRACTION BUTTON
    @IBAction func attractionsButton(_ sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
        let random: UInt32 = arc4random_uniform(4)
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int(random)]
        
        
        let alertController = UIAlertController(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    
    }
    
    //ACTIONS FOR SPORTS BUTTON
    @IBAction func sportsButton(_ sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
        let random: UInt32 = arc4random_uniform(4)
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int(random)]
        
        
        let alertController = UIAlertController(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }

    
    //ACTIONS FOR COFFEE BUTTON
    @IBAction func coffeeButton(_ sender: UIButton){
        let selectedEmotion = sender.titleLabel?.text
        
        let random: UInt32 = arc4random_uniform(4)
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int(random)]
        
        
        let alertController = UIAlertController(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    
    
        
}






