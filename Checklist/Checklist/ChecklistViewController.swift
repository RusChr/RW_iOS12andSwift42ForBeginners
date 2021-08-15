//
//  ViewController.swift
//  Checklist
//
//  Created by Rustam Chergizbiev on 15.08.2021.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
            switch indexPath.row % 5 {
            case 0: label.text = "Take a jog"
            case 1: label.text = "Watch a movie"
            case 2: label.text = "Code an app"
            case 3: label.text = "Walk the dog"
            case 4: label.text = "Study design"
            default: label.text = "Defaul value"
            }
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
            
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}

