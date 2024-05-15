//
//  HeaderView.swift
//  ToDoApp
//
//  Created by Richard on 14/05/2024.
//

import SwiftUI

struct HeaderView: View {
    let tittle : String
    let subTittle : String
    let angle : Double
    let backgroundColor : Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
            
            VStack{
                //Tittle text
                Text(tittle)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                
                //subtittile Text
                Text(subTittle)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }.padding(.top, 60)

        }.frame(width: UIScreen.main.bounds.width * 3,
                height: 350)
        .offset(y:-150)    }
}

#Preview {
    HeaderView(tittle: "TO Do List", subTittle:"Get Things Done", angle: 15, backgroundColor: .blue)
}
