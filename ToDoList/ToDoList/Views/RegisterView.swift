//
//  RegisterView.swift
//  ToDoList
//
//  Created by David Garcia on 9/17/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Register",
                       subtitle: "Start Getting Organized",
                       background: .orange,
                       angle: -15)
            // Form
            
            Form{
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Addres", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(tittle: "Create Account", color: .green){
                    viewModel.register()
                }
                
                
            }
            .offset(y: -50)
            
            
            Spacer()
            
        }
    }
}

struct RegisterView_Previews: PreviewProvider{
    static var previews: some View{
        RegisterView()
    }
}
