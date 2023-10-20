//
//  ImageView.swift
//  App02-TMDB
//
//  Created by Created by Alumno on 24/08/23.
//

import SwiftUI
import Kingfisher

struct ImageView: View {
    
    var movie: Movie
    
    var body: some View {
        KFImage(URL(string: "\(imageURL)\(movie.poster_path)"))
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            .overlay(
                VStack {
                    Spacer()
                    HStack {
                        VoteAverageView(vote_average: movie.vote_average)
                        Spacer()
                    }
                }
            )
    }
}

#Preview {
    ImageView(movie: Movie.dummy)
}
