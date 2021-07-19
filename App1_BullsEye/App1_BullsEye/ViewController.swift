//
//  ViewController.swift
//  App1_BullsEye
//
//  Created by Rustam Chergizbiev on 18.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetValueLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentValue = Int(slider.value.rounded())

        startNewGame()
    }
    
    
    @IBAction func ShowAler() {
        //let difference = currentValue >= targetValue ? currentValue - targetValue : targetValue - currentValue
        let difference = abs(currentValue - targetValue)
        var points = 100 - difference
        
        let title: String
        
        if difference == 0 {
            title = "Perfect"
            points += 100
        } else if difference < 5 {
            title = "You almost had it"
            points += 50
        } else if difference < 10 {
            title = "Pretty good"
        } else {
            title = "Not even close..."
        }
        
        score += points
        
        let message = "You scored \(points) points"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: { act in
            self.startNewRound()
        })
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = Int(slider.value.rounded())
    }
    
    
    func startNewRound() {
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    
    func updateLabels() {
        targetValueLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    
    @IBAction func startNewGame() {
        score = 0
        round = 0
        startNewRound()
    }

}

