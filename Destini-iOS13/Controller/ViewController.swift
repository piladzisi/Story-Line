//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let example = Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right")
    let example2 = Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play dead")
    let example3 = Story(title: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps")
    
    override func viewDidLoad() {
        storyLabel.text = example.title
        choice1Button.setTitle(example.choice1, for: .normal)
        choice2Button.setTitle(example.choice2, for: .normal)
        super.viewDidLoad()

    }
    
    @IBAction func choiceButtonClicked(_ sender: UIButton) {
        let userChoice = sender.tag
        updateUI(userChoice: userChoice)
    }
    func updateUI(userChoice: Int){
       print(userChoice)
        if userChoice == 1 {
            storyLabel.text = example2.title
            choice1Button.setTitle(example2.choice1, for: .normal)
            choice2Button.setTitle(example2.choice2, for: .normal)
        } else {
            storyLabel.text = example3.title
            choice1Button.setTitle(example3.choice1, for: .normal)
            choice2Button.setTitle(example3.choice2, for: .normal)
        }
    }
    
    
}

