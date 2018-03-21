//
//  TodoItem.swift
//  ToDoListApp
//
//  Created by Rochman Zaelani on 20/03/18.
//  Copyright © 2018 Rochman Zaelani. All rights reserved.
//

import Foundation

struct TodoItem : Codable {
    
    var title: String
    var completed:Bool
    var  createAt: Date
    var itemIdentifier: UUID
    
    func saveItem(){
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
    func deleteItem()  {
        DataManager.delete(itemIdentifier.uuidString)
    }
    
   mutating func markAsCompleted() {
        self.completed = true
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
}
