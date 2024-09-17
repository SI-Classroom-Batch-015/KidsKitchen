//
//  Nutritions.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 09.09.24.
//

import Foundation

struct Nutritions: Identifiable, Codable {
    var id = UUID()
    let calories: Int
    let carbs: Int
    let protein: Int
    let fat: Int
}

extension Nutritions {
    static let zero: Nutritions = Nutritions(calories: 0, carbs: 0, protein: 0, fat: 0)
}
