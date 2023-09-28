//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by David Garcia on 9/17/23.
//

import Foundation

// Here the To Do List Item is defined

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    
    // This function is used to set the is done property. This is used to set the value of the checkmarck
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
