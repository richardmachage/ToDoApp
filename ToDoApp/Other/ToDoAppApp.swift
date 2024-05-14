//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Richard on 14/05/2024.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoAppApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
