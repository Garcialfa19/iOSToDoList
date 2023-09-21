//
//  LoginView.swift
//  ToDoList
//
//  Created by David Garcia on 9/17/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        
        NavigationView{
            VStack{
                // Header
                HeaderView(title: "To Do List",
                           subtitle: "Get Things Done",
                           background: .pink,
                           angle: 15)
                
                // Login Form
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(tittle: "Log In",
                             color: .blue){
                        viewModel.login()
                    }
                    
                }
                .offset(y: -50)
               
                
                // Create Account
                VStack{
                    Text("Don't have an Account?")
                        .bold()
                    NavigationLink("Create One Here",
                                   destination: RegisterView())
                    .padding(.bottom, 30)
                    
                }
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider{
    static var previews: some View{
        LoginView()
    }
}
