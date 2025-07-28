//
//  DataController.swift
//  BookZilla
//
//  Created by Arman on 28/7/25.
//
import CoreData
import Foundation

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "BookZilla")
    
    init(){
        container.loadPersistentStores { description, error in
            if let error = error{
                print("Core Data failed to load: \(error)")
            }
            
        }
    }
}
