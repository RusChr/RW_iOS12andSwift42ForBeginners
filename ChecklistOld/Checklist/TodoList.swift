//
//  TodoList.swift
//  Checklist
//
//  Created by Rustam Chergizbiev on 16.08.2021.
//

import Foundation

class TodoList {
    
    var todos: [ChecklistItem] = []
    
    init() {}
    
    func newTodo() -> ChecklistItem {
        let item = ChecklistItem()
        item.text = randomTitle()
        todos.append(item)
        
        return item
    }
    
    private func randomTitle() -> String {
        let titles = [
            "New todo item",
            "Generic todo",
            "Fill me out",
            "I need something to do",
            "Much todo about nothing"
        ]
        let randomNumber = Int.random(in: 0...titles.count-1)
        
        return titles[randomNumber]
    }
}
