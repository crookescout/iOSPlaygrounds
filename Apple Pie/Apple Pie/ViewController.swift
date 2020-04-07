//
//  ViewController.swift
//  Apple Pie
//
//  Created by Scout Crooke on 4/1/20.
//  Copyright © 2020 Scout Crooke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["kiwi", "fluorescent", "banana", "tiger", "microwave", "cloudy"]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0

    @IBOutlet weak var treeImageView: UIImageView!
    
    @IBOutlet weak var correctWordLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view.
    }
    
    var currentGame: Game!
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word:newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }


}

