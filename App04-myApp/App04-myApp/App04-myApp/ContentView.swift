//
//  ContentView.swift
//  App04-myApp
//
//  Created by Alumno on 20/10/23.
//

import SwiftUI

struct ContentView: View {
    var tagsModel = TagsModel()
    @State private var showTags = true
    @State private var showBanner = false // State to control the visibility of the banner
    var someTags = [
    "tag1",
    "tag2",
    "tag3"
    
    ]
    
    var body: some View {
        VStack {
            Button(action: {
                showTags.toggle()
                if showTags {
                    tagsModel.fetchTags()
                    showBanner = true
                    
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        showBanner = false
                    }
                } else {
                    showBanner = false
                }
            }) {
                Text(showTags ? "Hide Tags" : "Show Tags")
                    .foregroundColor(.blue)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            
            if showBanner {
                Text("Good job!")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            if showTags {
                ForEach(/*tagsModel.tags*/someTags, id: \.self) { tag in
                    Text(tag)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
