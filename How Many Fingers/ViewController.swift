//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Fayimora Femi-Balogun on 11/03/2016.
//  Copyright © 2016 Fayimora Femi-Balogun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var userGuessTextField: UITextField!
  @IBOutlet var resultLabel: UILabel!
  
  @IBAction func guess(sender: UIButton) {
    let diceRoll = String(arc4random_uniform(6))
    let userGuess = userGuessTextField.text!
    
    if userGuess != "" {
      if userGuess == diceRoll {
        resultLabel.text = "You got it right!"
      } else {
        resultLabel.text = "Wrong! You guessed \"\(userGuess)\" but it was \(diceRoll)"
      }
      
    } else {
      resultLabel.text = "Please enter a guess"
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

