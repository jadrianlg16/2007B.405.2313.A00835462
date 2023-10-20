//
//  MovieRowView.swift
//  App02-TMDB
//
//  Created by Created by Alumno on 21/08/23.
//

import SwiftUI
import Kingfisher

struct MovieRowView: View {
    
    var movie: Movie
    
    var body: some View {
        VStack {
            Text(movie.title)
            ImageView(movie: movie)
        }
    }
}

#Preview {
    MovieRowView(movie: Movie.dummy)
}
