//
//  Ingredient.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 09.09.24.
//

import Foundation
import SwiftData

@Model
class Ingredient {
    var id = UUID()
    var name: String
    var imageURL: String
    var size: Int
    var unit: String
    var nutritions: Nutritions
    
    init(name: String, imageURL: String, size: Int, unit: String, nutritions: Nutritions) {
        self.name = name
        self.imageURL = imageURL
        self.size = size
        self.unit = unit
        self.nutritions = nutritions
    }
}


