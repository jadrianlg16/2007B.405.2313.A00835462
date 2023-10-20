//
//  TrailerView.swift
//  App02-TMDB
//
//  Created by Created by Alumno on 24/08/23.
//

import SwiftUI
import WebKit
 
struct TrailerView: View {
    var trailerId: String;
    var trailerName: String;
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ZStack {
                    Color.black
                }
                VStack {
                    Text(trailerName)
                        .foregroundStyle(Color.white)
                        .font(.title)
                        .padding()
                    EmbedView(trailerId: trailerId)
                        
                }
            }
            .ignoresSafeArea()
        }
    }
}
 
struct EmbedView: UIViewRepresentable {
    var trailerId: String;
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(trailerId)") else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
 
#Preview {
    TrailerView(trailerId: "PeWnAFeqMUA", trailerName: "We Love You Lutz")
}
