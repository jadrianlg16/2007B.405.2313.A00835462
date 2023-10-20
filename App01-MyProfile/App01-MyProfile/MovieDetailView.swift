//
//  MovieDetailView.swift
//  App01-MyProfile
//
//  Created by Alumno on 17/08/23.
//

import SwiftUI

struct MovieDetailView: View {
    
    var movie: Movie
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                ZStack {
                    VStack {
                        Image(movie.poster)
                            .resizable()
                        //                       .aspectRatio(contentMode: .fill)
                            .frame(width: geo.size.width-40, height: geo.size.height / 3)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .overlay {
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .stroke(Color.blue, lineWidth: 5)
                            }
                        
                            
                    }
                    .padding(.horizontal, 20)
                }
                .frame(width: geo.size.width, height: geo.size.height / 3)
                VStack {
                    Text(movie.name)
                    Text(String(movie.durantion) + " minutos")
                    Text(movie.genre)
                }
                
                
            }
        }
    }
}

#Preview {
    MovieDetailView(movie: Movie(id: 1, name: "Barbie", genre: "Comedy", durantion: 180, poster: "barbie"))
}
