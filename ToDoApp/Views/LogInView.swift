//
//  LogInView.swift
//  ToDoApp
//
//  Created by Richard on 14/05/2024.
//

import SwiftUI

struct LogInView: View {
    @StateObject var viewModel = LogInViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //a header
                HeaderView(tittle: "To Do List", subTittle: "Get things Done", angle: 15, backgroundColor: .pink)
                //log in from
                Form{
                    //error message display
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address",text:$viewModel.email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                        .keyboardType(.emailAddress)

                    // .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $viewModel.password)
                    //  .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                        .padding(.bottom, 20)
                    
                    TlButton(
                        title: "Log In",
                        backgroundColor: .blue){
                            //attempt login
                            viewModel.logIn()
                        }.padding()
                    
                }.offset(y:-60)
                //create account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
        
    }
}

#Preview {
    LogInView()
}
