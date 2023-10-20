//
//  ListView.swift
//  App01-MyProfile
//
//  Created by Alumno on 17/08/23.
//

import SwiftUI

struct ListView: View {
    
    var movies: [Movie] = [
        Movie(id: 1, name: "Harry Potter", genre: "Adventures", durantion: 90, poster: "hp"),
        Movie(id: 2, name: "Oppenheimer", genre: "Drama", durantion: 185, poster: "oppenheimer"),
        Movie(id: 3, name: "Barbie", genre: "Comedy", durantion: 90, poster: "barbie")
    ]
    
    var body: some View {
        VStack {
            List {
                ForEach(movies) { movie in
                    NavigationLink {
                        MovieDetailView(movie: movie)
                    } label: {
                        Text(movie.name)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Películas")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ListView()
}
