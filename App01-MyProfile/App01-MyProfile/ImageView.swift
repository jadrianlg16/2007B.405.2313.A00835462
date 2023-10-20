//
//  ImageView.swift
//  App01-MyProfile
//
//  Created by Alumno on 10/08/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("messi")
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
}

#Preview {
    ImageView()
}
