//
//  ProfileView.swift
//  ToDoList
//
//  Created by David Garcia on 9/17/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
