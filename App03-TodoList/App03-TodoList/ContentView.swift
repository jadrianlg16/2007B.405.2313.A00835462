//
//  ContentView.swift
//  App03-TodoList
//
//  Created by Alumno on 31/08/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        TabView {
            TodoListView()
                .tabItem {
                    Image(systemName: "checklist")
                    Text("Todo's")
                }
            CategoryListView()
                .tabItem {
                    Image(systemName: "bookmark.fill")
                    Text("Categories")
                }

        }
    }
    
}

#Preview {
    ContentView()
        
}
