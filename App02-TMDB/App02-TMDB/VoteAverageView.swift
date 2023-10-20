//
//  VoteAverageView.swift
//  App02-TMDB
//
//  Created by Created by Alumno on 24/08/23.
//

import SwiftUI

struct VoteAverageView: View {
    
    var vote_average: Double
    
    var body: some View {
        Circle()
            .fill(.black)
            .frame(width: 80)
            .overlay(
                ZStack {
                    VStack {
                        Text("\(vote_average * 10,specifier: "%.0f")%")
                            .font(.title2)
                            .foregroundStyle(.white)
                    }
                    Circle()
                        .stroke(Color.black, lineWidth: 10)
                    withAnimation {
                        Circle()
                            .trim(from: 0.0, to: CGFloat(min(vote_average / 10, 1.0)))
                            .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                            .foregroundStyle(voteColor(vote_average: vote_average))
                            .rotationEffect(Angle(degrees: 270.0))
                            .frame(width: 80, height: 80)
                    }
                }
            )
            .padding(.leading, 30)
            .padding(.bottom,-40)
        
    }
    
    private func voteColor(vote_average: Double) -> Color {
        if vote_average >= 7 {
            return Color.green
        }
        if vote_average >= 4 {
            return Color.yellow
        }
        return Color.red
    }
}


#Preview {
    VoteAverageView(vote_average: 7.8)
}
