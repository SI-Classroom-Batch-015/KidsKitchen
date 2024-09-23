//
//  MealRepositoryAsync.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 22.09.24.
//

import Foundation

@Observable
class MealRepositoryAsync {
    
    // MARK: - OPEN
    @MainActor static let shared = MealRepositoryAsync()
    
    var mealCategories: [MealCategoryCoda] = []
    
    func fetchMealCategories() async throws -> [MealCategoryCoda] {
        
        print("started fetching meal categories")
        // CODA_API_KEY
        let envCodaAPIKey = "CODA_API_KEY"
        guard let codaAPIKey = ProcessInfo.processInfo.environment[envCodaAPIKey] else {
            fatalError("Please set the \(envCodaAPIKey) environment variable.")
        }
        // DOC_ID
        let envDocID = "DOC_ID"
        guard let docID = ProcessInfo.processInfo.environment[envDocID] else {
            fatalError("Please set the \(envDocID) environment variable.")
        }
        // MEALCATEGORY_ID_TABLE
        let envMealCategoryTableID = "MEALCATEGORY_ID_TABLE"
        guard let mealCategoryTableID = ProcessInfo.processInfo.environment[envMealCategoryTableID] else {
            fatalError("Please set the \(envMealCategoryTableID) environment variable.")
        }
        print(envMealCategoryTableID)
        guard let url = URL(string: "https://coda.io/apis/v1/docs/\(docID)/tables/\(mealCategoryTableID)/rows") else {
            throw NetworkError.badUrl
        }
        // Erstellen eines URLRequest-Objekts
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // Den Bearer-Token zum Header hinzufügen
        let token = codaAPIKey
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        let (data, _) = try await URLSession.shared.data(for: request)
        let mealCategories = try JSONDecoder().decode(CodaResponse.self, from: data)
        print(mealCategories.items)
        return mealCategories.items
    }
}
