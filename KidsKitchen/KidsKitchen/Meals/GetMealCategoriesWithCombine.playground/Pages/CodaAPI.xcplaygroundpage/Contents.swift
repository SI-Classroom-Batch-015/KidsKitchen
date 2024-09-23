//: [Previous](@previous)

import Foundation
import Combine

// CODA_API_KEY
let codaAPIKey = "fb39a2ef-745c-4609-bab3-04a3802b1c6d"

// DOC_ID
let docID = "lQDZgo1Yxb"

// MEALCATEGORY_ID_TABLE
let mealCategoryTableID = "grid-XE5kpr69t3"

let url = URL(string: "https://coda.io/apis/v1/docs/\(docID)/tables/\(mealCategoryTableID)/rows")
// Erstellen eines URLRequest-Objekts
var request = URLRequest(url: url!)
request.httpMethod = "GET"

// Den Bearer-Token zum Header hinzufügen
let token = codaAPIKey
request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")

let mealCategoryPublisher = URLSession.shared.dataTaskPublisher(for: request)
    .map { $0.data }
    .decode(type: CodaResponse.self, decoder: JSONDecoder())
    .map { $0.items }
    .sink(receiveCompletion: { completion in
        print(String(describing: completion))}, receiveValue: { value in
            print("returned value \(value)")}
    )



//: [Next](@next)
