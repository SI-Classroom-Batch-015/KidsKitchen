//
//  MealVM.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 09.09.24.
//

import Foundation
import Observation

@Observable
class MealVM {
    
    var meals = Meal.meals
    var mealCategories: [MealCategoryCoda] {
        repository.mealCategories
    }
    
    init(repository: MealRepositoryCombine = MealRepositoryCombine.shared) {
        self.repository = repository
    }
    
    private var repository: MealRepositoryCombine
    
}


//    @MainActor
//    func fetchMealCategories() async {
//        do {
//            mealCategories = try await MealRepositoryAsync().fetchMealCategories()
//        } catch {
//
//        }
//    }
