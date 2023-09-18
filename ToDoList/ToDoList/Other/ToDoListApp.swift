//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by David Garcia on 9/17/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
