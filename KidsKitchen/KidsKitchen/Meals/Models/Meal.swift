//
//  Meal.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 09.09.24.
//
import Foundation
import SwiftData

@Model
class Meal {
    var id = UUID()
    var name: String
    var imageURL: String
    var isFavorite: Bool = false
    var timesCooked: Int = 0
    var duration: Int
    var ingredients: [Ingredient]
    var nutritions: Nutritions
    var details: String
    
    init(
        name: String,
        imageURL: String,
        duration: Int,
        ingredients: [Ingredient],
        nutritions: Nutritions,
        details: String
    ) {
        self.name = name
        self.imageURL = imageURL
        self.duration = duration
        self.ingredients = ingredients
        self.nutritions = nutritions
        self.details = details
    }
}

