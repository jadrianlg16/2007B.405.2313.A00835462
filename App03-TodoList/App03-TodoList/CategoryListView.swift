//
//  CategoryListView.swift
//  App03-TodoList
//
//  Created by Alumno on 07/09/23.
//

import SwiftUI
import SwiftData

struct CategoryListView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var categories: [Category]
    
    @State private var showAddCategory = false
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(categories) { category in
                    NavigationLink {
                        Text(category.name)
                    } label: {
                        VStack {
                            Text(category.name)
                        }
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .sheet(isPresented: $showAddCategory, content: {
                AddCategoryView()
                    .presentationDetents([.medium])
            })
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button {
                        showAddCategory.toggle()
                    } label: {
                        Label("Add Category", systemImage: "plus")
                    }
                }
            }
            .navigationTitle("Categories")
        } detail: {
            Text("Select a category")
        }
    }
    

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(categories[index])
            }
        }
    }
}

#Preview {
    CategoryListView()
        .modelContainer(for: Category.self, inMemory: true)
}
