//
//  DetailView.swift
//  App01-MyProfile
//
//  Created by Alumno on 14/08/23.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var name: String
    @Binding var birthDate: Date
    @Binding var weight: Int
    @Binding var height: Double
    var dateFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MMM/dd"
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Nombre")
            TextField("Nombre", text: $name)
                .textFieldStyle(.roundedBorder)
            DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                Text("\(dateFormat.string(from: birthDate))")
            }
            Stepper(value: $weight, in: 45...100) {
                Text("Peso: \(weight)")
            }
            Slider(value: $height, in: 1.2...2.6)
                .padding([.leading,.trailing],40)
            Text("Altura: \(height,specifier: "%.2f")")
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    DetailView(name: .constant("Jesus"), birthDate: .constant(Date()), weight: .constant(90), height: .constant(1.80))
}
