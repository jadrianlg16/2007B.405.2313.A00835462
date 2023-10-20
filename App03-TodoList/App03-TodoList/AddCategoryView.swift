//
//  AddCategoryView.swift
//  App03-TodoList
//
//  Created by Alumno on 07/09/23.
//

import SwiftUI

struct AddCategoryView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    @State var name: String = ""
    @State var color: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Label("Nombre", systemImage: "bookmark.fill")
                TextField("Nombre", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Label("Color", systemImage: "paintpalette.fill")
                TextField("Color", text: $color)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            Button {
                addCategory()
            } label: {
                Text("Agrega Categoria")
            }
            .padding(.top, 30)
            .buttonStyle(BorderedProminentButtonStyle())
            .tint(.green)

        }
        .padding(.horizontal, 20)
    }
    
    func addCategory() {
        let category = Category(name: name, color: color)
        modelContext.insert(category)
        dismiss()
    }
}

#Preview {
    AddCategoryView()
}
