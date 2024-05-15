//
//  RegisterViewModel.swift
//  ToDoApp
//
//  Created by Richard on 14/05/2024.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class RegisterViewModel : ObservableObject{
    @Published var email = ""
    @Published var name = ""
    @Published var newPassword = ""
    @Published var confirmPassword = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func register(){
        guard validate() else{
            return
        }
        
        //create a new user
        Auth.auth().createUser(withEmail: email, password: newPassword){result, error in
            guard let userID = result?.user.uid else{
                return
            }
            self.insertUserRecord(id: userID)
        }
        
        
        
    }
    
    private func insertUserRecord(id: String){
        let newUser = User(
            id: id,
            email: email,
            name: name,
            joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        db.collection("Users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate()-> Bool{
        errorMessage = ""
        //check empty
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !newPassword.trimmingCharacters(in: .whitespaces).isEmpty,
              !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !confirmPassword.trimmingCharacters(in: .whitespaces).isEmpty
        else{
            errorMessage = "Please fill all fields"
            return false
        }
        
        //check valid email
        guard email.contains("@") && email.contains(".")
        else{
            errorMessage = "Please enter valid email address"
            return false
        }
        
        //check matching passwords
        guard newPassword == confirmPassword else{
            errorMessage = "Passwords do not match"
            return false
        }
        
        //check lentgh of password
        guard newPassword.count >= 7 else{
            errorMessage = "Passowrd must contain atleast 7 characters"
            return false
        }
        
        return true
    }
}
