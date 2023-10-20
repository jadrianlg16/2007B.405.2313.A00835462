//
//  TodoDetailView.swift
//  App03-TodoList
//
//  Created by Alumno on 31/08/23.
//

import SwiftUI

struct TodoDetailView: View {
    
    var todo: Todo
    
    var body: some View {
        VStack {
            Text(todo.todo)
            Text("\(todo.dueDate, format: Date.FormatStyle(date: .numeric, time: .standard))")
        }
        
    }
}

#Preview {
    TodoDetailView(todo: Todo(todo: "Hola", done: false, dueDate: Date(), category: Category(name: "hola", color: "Negro")))
}
