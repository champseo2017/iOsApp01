//
//  ToDoListItem.swift
//  SwiftUIToDoList
//
//  Created by Champ on 12/12/2564 BE.
//

import Foundation
import CoreData

class ToDoListItem: NSManagedObject, Identifiable {
    @NSManaged var name: String?
    @NSManaged var createdAt: Date?
}

extension ToDoListItem {
    static func getAllToDoListItems() -> NSFetchRequest<ToDoListItem> {
        let request: NSFetchRequest<ToDoListItem> = ToDoListItem.fetchRequest() as! NSFetchRequest<ToDoListItem>
        let sort = NSSortDescriptor(key: "createdAt", ascending: false)
        request.sortDescriptors = [sort]
        return request
    }
}
