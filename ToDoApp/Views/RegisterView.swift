//
//  RegisterView.swift
//  ToDoApp
//
//  Created by Richard on 14/05/2024.
//

import SwiftUI

struct RegisterView: View {
   @StateObject var viewModel = RegisterViewModel()
    var body: some View {
        VStack{
            HeaderView(tittle: "Register", subTittle: "Start Organizing todos", angle: -15, backgroundColor: .orange)
            
            //register from
            Form{
                TextField("Enter Name", text: $viewModel.name)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                TextField("Enter Email", text: $viewModel.email)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                    .keyboardType(.emailAddress)
                SecureField("Enter new Password", text: $viewModel.newPassword)
                SecureField("Confirm Password", text: $viewModel.confirmPassword)
                
                
                TlButton(
                    title: "Create Account",
                    backgroundColor: .green){
                        //attempt Registration
                        viewModel.register()
                    }.padding()
            }.offset(y: -60)
            
        }
        
        Spacer()
        
    }
}

#Preview {
    RegisterView()
}
