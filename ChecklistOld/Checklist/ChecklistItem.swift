//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Rustam Chergizbiev on 15.08.2021.
//

import Foundation

class ChecklistItem: NSObject {
    
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
