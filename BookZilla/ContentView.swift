//
//  ContentView.swift
//  BookZilla
//
//  Created by Arman on 25/7/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var books: FetchedResults<Book>
    
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationView{
            Text("Count: \(books.count)")
                .navigationTitle("BookZilla")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button{
                            showingAddScreen.toggle()
                        } label: {
                            Label("Add", systemImage: "plus")
                        }
                    }
                }.sheet(isPresented: $showingAddScreen){
                    AddBookView()
                }
        }
    }
}

#Preview {
    ContentView()
}
