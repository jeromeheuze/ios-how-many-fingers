//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Jerome Heuze on 4/26/15.
//  Copyright (c) 2015 Nebula Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fldGuess: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func btnGuess(sender: AnyObject) {
        var rndFingers = arc4random_uniform(11)
        var userAnswer = fldGuess.text.toInt()
        
        if userAnswer != nil {
            
            if userAnswer == Int(rndFingers) {
                lblResult.text = "Geat Job you guessed right :D"
            } else {
                lblResult.text = "Sorry - this is wrong! it was \(rndFingers)"
            }
            
        } else {
            lblResult.text = "Please enter a number between 0 to 10."
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

