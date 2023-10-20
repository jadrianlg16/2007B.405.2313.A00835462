//
//  LayoutView.swift
//  App01-MyProfile
//
//  Created by Alumno on 07/08/23.
//

import SwiftUI

struct LayoutView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                ZStack {
                    Color.blue
                    Color.orange
                        .padding()
                    Color.gray
                        .padding(40)
                }
                Color.red
            }
            HStack(spacing:0) {
                Color.green
                Color.yellow
                Color.cyan
            }
        }
        
    }
}

#Preview {
    LayoutView()
}
