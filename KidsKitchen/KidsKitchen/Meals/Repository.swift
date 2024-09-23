//
//  Repository.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 13.09.24.
//

import Foundation
import Combine

@Observable
class MealRepositoryCombine {
    
    // MARK: - OPEN
    nonisolated(unsafe) static let shared = MealRepositoryCombine()
    
    // MARK: Meal Categories Publisher
    var mealCategories: [MealCategoryCoda] = []
    
    // TODO: Meals Publisher
    
    // 
    
    // MARK: init()
    private init() {
        
        // MARK: - Get Envoirment Variables
        print("started fetching meal categories")
        // MARK: CODA_API_KEY
        let envCodaAPIKey = "CODA_API_KEY"
        guard let codaAPIKey = ProcessInfo.processInfo.environment[envCodaAPIKey] else {
            fatalError("Please set the \(envCodaAPIKey) environment variable.")
        }
        // MARK: DOC_ID
        let envDocID = "DOC_ID"
        guard let docID = ProcessInfo.processInfo.environment[envDocID] else {
            fatalError("Please set the \(envDocID) environment variable.")
        }
        // MARK: MEALCATEGORY_ID_TABLE
        let envMealCategoryTableID = "MEALCATEGORY_ID_TABLE"
        guard let mealCategoryTableID = ProcessInfo.processInfo.environment[envMealCategoryTableID] else {
            fatalError("Please set the \(envMealCategoryTableID) environment variable.")
        }
        print(envMealCategoryTableID)
        guard let url = URL(string: "https://coda.io/apis/v1/docs/\(docID)/tables/\(mealCategoryTableID)/rows") else {
            print("Invalid URL")
            return
        }
        // MARK: - Set URLRequest
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("Bearer \(codaAPIKey)", forHTTPHeaderField: "Authorization")
        
        // MARK: URLSession Publisher
        URLSession.shared.dataTaskPublisher(for: request)
            .map { $0.data }
            .decode(type: CodaResponse.self, decoder: JSONDecoder())
            .replaceError(with: CodaResponse.example01)
            .map { $0.items }
            .receive(on: RunLoop.main)
            .sink { [unowned self] categories in
                mealCategories = categories
                print("fetched meal categories")
            }
            .store(in: &cancellables)
            
    }
    
    private var cancellables: Set<AnyCancellable> = []
}
enum NetworkError: Error {
    case badUrl
    case invalidRequest
    case badResponse
    case badStatus
    case failedToDecodeResponse
}

