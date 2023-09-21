//
//  NewItemView.swift
//  ToDoList
//
//  Created by David Garcia on 9/17/23.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding()
            
            Form{
                //tittle
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                
                //Button
                
                TLButton(tittle: "Save",
                         color: .pink){
                    viewModel.save()
                }
                         
            
            }
        }
    }
}

#Preview {
    NewItemView()
}
