//
//  ViewController.swift
//  emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var microphone: UIButton!
    
    let emojis = ["🎤" : "Tounge Tied" , "🎸" : "guitar"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        
           
            let selectedEmotion = sender.titleLabel?.text
            
            //after button is taped, the message displays
            //there will be multiple messages
            
            let alertController = UIAlertController(title: "genre", message: "tounge tied", preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            present(alertController, animated: true, completion: nil)
        
        }
        
        
        
}









