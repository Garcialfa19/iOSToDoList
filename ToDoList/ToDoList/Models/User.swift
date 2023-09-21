//
//  User.swift
//  ToDoList
//
//  Created by David Garcia on 9/17/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let JOINED: TimeInterval
}
