//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by David Garcia on 9/17/23.
//

import FirebaseAuth
import Foundation

// View Model for the main view

class MainViewViewModel: ObservableObject {
    
    // This stores the user that is currently signed in
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
            
        }
    }
    
    // If ther is a user signed in, then it skips the login page
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
    
}
