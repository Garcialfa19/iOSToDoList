//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by David Garcia on 9/17/23.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class ToDoListItemViewViewModel: ObservableObject{
    init() {}
    
    func toggleIsDone(item: ToDoListItem){
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("toDos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
        
    }
}
