//
//  Category.swift
//  App03-TodoList
//
//  Created by David Cantú Delgado on 07/09/23.
//

import Foundation
import SwiftData

@Model
final class Category {
    
    var id = UUID()
    var name: String
    var color: String?
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
}
