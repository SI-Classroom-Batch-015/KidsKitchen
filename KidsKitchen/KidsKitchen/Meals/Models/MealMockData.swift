//
//  MealMockData.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 11.09.24.
//

import Foundation

extension Meal {
    // MARK: von Gaumenfreundin Achtung rechtilches
    nonisolated(unsafe) static let chilliSinCarne = Meal(
        name: "Chilli Sin Carne",
        imageURL: "chilli_sin_carne",
        duration: 30,
        ingredients: [.watermelon],
        nutritions: .zero,
        details: "1. Zwiebel klein schneiden. Paprikaschoten in Würfel schneiden.\n2. Öl in einem Topf erhitzen und Zwiebeln und Paprika andünsten. Tomatenmark und Linsen zufügen und 2 Min. anrösten. Gemüsebrühe, Kidneybohnen, Mais und gehackte Tomaten zugeben und alles einmal aufkochen.\n3. 20 Min. bei mittlerer Hitze köcheln lassen. Dann mit Salz, Pfeffer, Kreuzkümmel und Paprika abschmecken."
    )
    nonisolated(unsafe) static let watermelonPizza = Meal(
        name: "Wassermelonen Pizza",
        imageURL: "pizza_watermelon",
        duration: 15,
        ingredients: [
            .watermelon,
            .watermelon,
            .watermelon,
            .watermelon
        ],
        nutritions: .zero,
        details: "1. Die Wassermelone in 1-2 cm dicke Scheiben schneiden. Anschließend je nach Größe vierteln oder achteln.\n2. Die Melonenstücke mit dem griechischen Joghurt bestreichen und mit den Früchten und Toppings belegen."
    )
    
    
    nonisolated(unsafe) static let meals: [Meal] = [
        .watermelonPizza,
        .chilliSinCarne,
        Meal(
            name: "Wassermelonen Pizzaa",
            imageURL: "pizza_watermelon",
            duration: 12,
            ingredients: [
                .watermelon,
                .watermelon,
                .watermelon,
                .watermelon
            ],
            nutritions: .zero,
            details: "1. Die Wassermelone in 1-2 cm dicke Scheiben schneiden. Anschließend je nach Größe vierteln oder achteln.\n2. Die Melonenstücke mit dem griechischen Joghurt bestreichen und mit den Früchten und Toppings belegen."
        )
    ]
}
