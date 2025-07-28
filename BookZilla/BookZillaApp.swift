//
//  BookZillaApp.swift
//  BookZilla
//
//  Created by Arman on 25/7/25.
//

import SwiftUI

@main
struct BookZillaApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                
        }
    }
}
