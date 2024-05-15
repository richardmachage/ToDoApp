//
//  MainViewModel.swift
//  ToDoApp
//
//  Created by Richard on 14/05/2024.
//
import FirebaseAuth
import Foundation
class MainViewModel : ObservableObject{
    @Published var currentUserId = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init(){
        self.handler = Auth.auth().addStateDidChangeListener{[weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }}
    }
    
    public var isSignedIn: Bool{
        return Auth.auth().currentUser != nil
    }
}
