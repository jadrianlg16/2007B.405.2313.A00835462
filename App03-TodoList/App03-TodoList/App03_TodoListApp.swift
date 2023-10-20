//
//  App03_TodoListApp.swift
//  App03-TodoList
//
//  Created by Alumno on 31/08/23.
//

import SwiftUI
import SwiftData

@main
struct App03_TodoListApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Todo.self, Category.self])
    }
}
