//
//  MealCategory.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 17.09.24.
//

import Foundation

// TODO: SwiftData @Model class
struct MealCategory: Codable, Identifiable {
    var id: String
    var name: String
    var imageURL: String
    var details: String
}

struct CodaResponse: Codable {
    let items: [MealCategoryCoda]
}

extension CodaResponse {
    static var example01: Self {
        .init(items: [.example01, .example02])
    }
}

// MARK: - GetTableModelCodaElement
struct MealCategoryCoda: Codable, Identifiable {
    let id: String
    let name: String
    let values: MealCategoryValues
}

extension MealCategoryCoda {
    static var example01: Self {
        .init(
            id: "MealCategoryCoda-01-Breakfast",
            name: "Breakfast",
            values: .example01
        )
    }
    static var example02: Self {
        .init(
            id: "MealCategoryCoda-02-Lunch",
            name: "Lunch",
            values: .example02
        )
    }
}


// MARK: - Values
struct MealCategoryValues: Codable, Identifiable {
    let id: String
    let name: String
    let imageURL: String
    let details: String

    enum CodingKeys: String, CodingKey {
        case name = "c-7aQ3bbDAY9"
        case id = "c-mEkxr1qzh6"
        case imageURL = "c-OG_J21ZrRB"
        case details = "c-7snGhl6i0u"
    }
}

extension MealCategoryValues {
    static var example01: Self {
        .init(
            id: "MealCategoryValues-01-Breakfast",
            name: "Breakfast",
            imageURL: "https://www.themealdb.com/images/category/miscellaneous.png",
            details: "Vegetarianism is the practice of abstaining from the consumption of meat (red meat, poultry, seafood, and the flesh of any other animal), and may also include abstention from by-products of animal slaughter.\nVegetarianism may be adopted for various reasons. Many people object to eating meat out of respect for sentient life. Such ethical motivations have been codified under various religious beliefs, as well as animal rights advocacy. Other motivations for vegetarianism are health-related, political, environmental, cultural, aesthetic, economic, or personal preference. There are variations of the diet as well: an ovo-lacto vegetarian diet includes both eggs and dairy products, an ovo-vegetarian diet includes eggs but not dairy products, and a lacto-vegetarian diet includes dairy products but not eggs. A vegan diet excludes all animal products, including eggs and dairy. Some vegans also avoid other animal products such as beeswax, leather or silk clothing, and goose-fat shoe polish."
        )
    }
    static var example02: Self {
        .init(
            id: "MealCategoryValues-02-Lunch",
            name: "Lunch",
            imageURL: "https://www.themealdb.com/images/category/miscellaneous.png",
            details: "Seafood is any form of sea life regarded as food by humans. Seafood prominently includes fish and shellfish. Shellfish include various species of molluscs, crustaceans, and echinoderms. Historically, sea mammals such as whales and dolphins have been consumed as food, though that happens to a lesser extent in modern times. Edible sea plants, such as some seaweeds and microalgae, are widely eaten as seafood around the world, especially in Asia (see the category of sea vegetables). In North America, although not generally in the United Kingdom, the term 'seafood' is extended to fresh water organisms eaten by humans, so all edible aquatic life may be referred to as seafood. For the sake of completeness, this article includes all edible aquatic life."
        )
    }
    
}

