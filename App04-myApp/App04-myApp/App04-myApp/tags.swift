//
//  tags.swift
//  App04-myApp
//
//  Created by Alumno on 20/10/23.
//

// Tag.swift
import Foundation
import SwiftData

struct Tag: Identifiable  {
    var id: String
    var tags: [String]
//    var description: String
    
    init(id: String, tags: [String]){
        self.id = id
        self.tags = tags
    }
}

