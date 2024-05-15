//
//  TlButton.swift
//  ToDoApp
//
//  Created by Richard on 15/05/2024.
//

import SwiftUI

struct TlButton: View {
    let title : String
    let backgroundColor : Color
    let action : () -> Void
    
    var body: some View {
        Button{
            action()
        }label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
            
        }    }
}

#Preview {
    TlButton(title: "Register", backgroundColor:.pink){
        //action
    }
}
