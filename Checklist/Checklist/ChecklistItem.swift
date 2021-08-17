//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Rustam Chergizbiev on 15.08.2021.
//

import Foundation

class ChecklistItem {
    
    var text = ""
    var checked = true
    
    func toggleChecked() {
        checked = !checked
    }
}
