//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by David Garcia on 9/17/23.
//

import Foundation
class NewItemViewViewModel: ObservableObject{
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {}
    
    func save() {
        
    }
}



