//
//  User.swift
//  ToDoApp
//
//  Created by Richard on 14/05/2024.
//

import Foundation

struct User: Codable{
    let id : String
    let email : String
    let name : String
    let joined : TimeInterval
}
