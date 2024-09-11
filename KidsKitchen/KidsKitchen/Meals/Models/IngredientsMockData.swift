//
//  IngredientsMockData.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 11.09.24.
//

import Foundation

extension Ingredient {
    nonisolated(unsafe) static let watermelon: Ingredient = Ingredient(
        name: "Wassermelone",
        imageURL: "pizza_watermelon",
        size: 1,
        unit: "Stück",
        nutritions: .zero
    )
}
