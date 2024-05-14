//
//  LogInView.swift
//  ToDoApp
//
//  Created by Richard on 14/05/2024.
//

import SwiftUI

struct LogInView: View {
    var body: some View {
        VStack{
            //a header
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.pink)
                    .rotationEffect(Angle(degrees: 15))
                
                VStack{
                    Text("To Do List")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .bold()
                    
                    Text("Get Things Done")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                }.padding(.top, 10)
    
            }.frame(width: UIScreen.main.bounds.width * 3,
                    height: 300)
            .offset(y:-100)
            
            
            //log in from
            
            //create account
            Spacer()
        }
    }
}

#Preview {
    LogInView()
}
