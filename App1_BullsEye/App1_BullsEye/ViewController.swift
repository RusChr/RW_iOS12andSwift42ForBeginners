//
//  ViewController.swift
//  App1_BullsEye
//
//  Created by Rustam Chergizbiev on 18.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentValue = Int(slider.value)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ShowAler() {
        let alert = UIAlertController(title: "Hello, World!", message: "The value of the slider is now: \(currentValue)", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        print("The value of the slider is now: \(currentValue)")
        currentValue = Int(slider.value)
    }

}

