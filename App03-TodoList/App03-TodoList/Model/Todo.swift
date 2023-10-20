//
//  Todo.swift
//  App03-TodoList
//
//  Created by David Cantú Delgado on 31/08/23.
//

import Foundation
import SwiftData

@Model
final class Todo {
    
    var id = UUID()
    var todo: String
    var done: Bool
    var dueDate: Date
    var category: Category?
    
    init(todo: String, done: Bool, dueDate: Date, category: Category) {
        self.todo = todo
        self.done = done
        self.dueDate = dueDate
        self.category = category
    }
    
}
