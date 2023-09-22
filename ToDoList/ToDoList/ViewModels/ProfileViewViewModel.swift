//
//  ProfileViewViewModel.swift
//  ToDoList
//
//  Created by David Garcia on 9/17/23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class ProfileViewViewModel: ObservableObject{
    init() {}
    
    @Published var user: User? = nil
    
    func fetchUser(){
        guard let userId = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users").document(userId).getDocument { [weak self] snapshot, error in
            guard let data = snapshot?.data(), error == nil else{
                return
            }
            
            DispatchQueue.main.async {
                self?.user = User(
                    id: data["id"] as? String ?? "",
                    name: data["name"] as? String ?? "",
                    email: data["email"] as? String ?? "",
                    JOINED: data["joined"] as? TimeInterval ?? 0
                )
            }
        }
        
    }
    
    func logOut(){
        
        do {
            try Auth.auth().signOut()
        } catch {
            print(error)
        }
    }
}
