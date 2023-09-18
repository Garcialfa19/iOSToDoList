//
//  TLButton.swift
//  ToDoList
//
//  Created by David Garcia on 9/17/23.
//

import SwiftUI

struct TLButton: View {
    let tittle: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            // Action
            action()
            
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(color)
                
                Text(tittle)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()

    }
}

struct TLButton_Previws: PreviewProvider {
    static var previews: some View{
        TLButton(tittle: "Value", color: .pink){
            // Actoin
        }
    }
}
