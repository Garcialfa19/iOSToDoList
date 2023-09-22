//
//  ToDoListView.swift
//  ToDoList
//
//  Created by David Garcia on 9/17/23.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    
    init(userId: String){
        // users/<id>/toDos/<entries>
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/toDos"
        )
        self._viewModel = StateObject(
            wrappedValue: ToDoListViewViewModel(userId: userId)
        )
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List(items) {item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                viewModel.delete(id: item.id)
                                
                            }
                            .tint(.red)
                        }
                }
                .listStyle(DefaultListStyle())
                
            }
            .navigationTitle("To Do List")
            .toolbar{
                Button{
                    //Action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

struct ToDoListItemView_Previews: PreviewProvider {
    static var previews: some View{
        ToDoListView(userId: "seXjiEnBhXMOHri8lmQzP6uJA4m2")
    }
}

