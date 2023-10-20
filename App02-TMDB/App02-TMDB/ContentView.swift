//
//  ContentView.swift
//  App02-TMDB
//
//  Created by Created by Alumno on 21/08/23.
//

import SwiftUI

struct ContentView: View {
    
    var movieModel = MovieModel()
    
    var body: some View {
        NavigationStack {
            GeometryReader { geo in
                VStack {
                    ScrollView(.vertical) {
                        LazyVStack(spacing: 50) {
                            ForEach(movieModel.movies) { movie in
                                NavigationLink {
                                    MovieDetailView(movieModel: movieModel, movie: movie)
                                } label: {
                                    MovieRowView(movie: movie)
                                        .frame(width: geo.size.width * 0.80)
                                        .padding(.horizontal, geo.size.width * 0.10)
                                        .tint(.black)
                                }

                                
                            }
                        }
                    }
                }
                .padding()
                .onAppear {
                    movieModel.fetchGenres()
                }
                .navigationTitle("Películas")
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
