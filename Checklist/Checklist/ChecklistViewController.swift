//
//  ViewController.swift
//  Checklist
//
//  Created by Rustam Chergizbiev on 15.08.2021.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var row0Item: ChecklistItem
    var row1Item: ChecklistItem
    var row2Item: ChecklistItem
    var row3Item: ChecklistItem
    var row4Item: ChecklistItem
    
    required init?(coder: NSCoder) {
        row0Item = ChecklistItem()
        row1Item = ChecklistItem()
        row2Item = ChecklistItem()
        row3Item = ChecklistItem()
        row4Item = ChecklistItem()
        
        row0Item.text = "Take a jog"
        row1Item.text = "Watch a movie"
        row2Item.text = "Code an app"
        row3Item.text = "Walk the dog"
        row4Item.text = "Study design patterns"
        
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
            if indexPath.row == 0 {
                label.text = row0Item.text
            } else if indexPath.row == 1 {
                label.text = row1Item.text
            } else if indexPath.row == 2 {
                label.text = row2Item.text
            } else if indexPath.row == 3 {
                label.text = row3Item.text
            } else if indexPath.row == 4 {
                label.text = row4Item.text
            }
        }
        configureCheckmark(for: cell, at: indexPath)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            configureCheckmark(for: cell, at: indexPath)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        if indexPath.row == 0 {
            if row0Item.checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            row0Item.checked = !row0Item.checked
        } else if indexPath.row == 1 {
            if row1Item.checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            row1Item.checked = !row1Item.checked
        } else if indexPath.row == 2 {
            if row2Item.checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            row2Item.checked = !row2Item.checked
        } else if indexPath.row == 3 {
            if row3Item.checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            row3Item.checked = !row3Item.checked
        } else if indexPath.row == 4 {
            if row4Item.checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            row4Item.checked = !row4Item.checked
        }
    }
    
}

