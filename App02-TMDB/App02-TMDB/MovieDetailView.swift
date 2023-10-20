//
//  MovieDetailView.swift
//  App02-TMDB
//
//  Created by Created by Alumno on 24/08/23.
//

import SwiftUI

struct MovieDetailView: View {
    
    var movieModel: MovieModel
    var movie: Movie
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text(movie.title)
                    .font(.title)
                Text(movie.overview)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                NavigationLink {
                    TrailerListView(movieModel: movieModel, movie: movie)
                } label: {
                    Text("Trailers")
                }
                .buttonStyle(.borderedProminent)
                ImageView(movie: movie)
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    MovieDetailView(movieModel: MovieModel(), movie: Movie.dummy)
}
