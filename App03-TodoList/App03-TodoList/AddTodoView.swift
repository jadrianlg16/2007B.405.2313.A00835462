//
//  AddTodoView.swift
//  App03-TodoList
//
//  Created by Alumno on 07/09/23.
//

import SwiftUI
import SwiftData

struct AddTodoView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var categories: [Category]
    
    @Environment(\.dismiss) private var dismiss
    @State var todo: String = ""
    @State var dueDate: Date = Date()
    @State var done: Bool = false
    @State var category: Category?
    var dateFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MMM/dd"
        return formatter
    }
    
    var body: some View {
        VStack {
            HStack {
                Label("Tarea", systemImage: "square.and.pencil")
                TextField("Tarea", text: $todo)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            DatePicker(selection: $dueDate, in: Date()..., displayedComponents: .date) {
                Text("\(dateFormat.string(from: dueDate))")
            }
            Toggle("¿Tarea terminada?", systemImage: "square.and.pencil", isOn: $done)
            Menu {
                ForEach(categories) { category in
                    Button(category.name) {
                        self.category = category
                    }
                }
                Button("None") {
                    category = nil
                }
            } label: {
                if let categoryName = category?.name {
                    Text(categoryName)
                } else {
                    Text("None")
                }
            }
            Button {
                addTodo()
            } label: {
                Text("Agrega Tarea")
            }
            .padding(.top, 30)
            .buttonStyle(BorderedProminentButtonStyle())
            .tint(.green)

        }
    }
    
    func addTodo() {
        let todo = Todo(todo: todo, done: done, dueDate: dueDate, category: category!)
        modelContext.insert(todo)
        dismiss()
    }
}

#Preview {
    AddTodoView()
}
