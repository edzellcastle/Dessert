//
//  MealDetailViewModel.swift
//  Dessert
//
//  Created by David Lindsay on 1/4/24.
//

import Foundation

@MainActor final class MealDetailViewModel: ObservableObject {
    
    private let apiService: APIService
    
    @Published var mealDetails: [MealDetail] = []
    
    // MARK: - Initialization
    
    init(apiService: APIService) {
        self.apiService = apiService
    }
    
    // MARK: - Public API
    
    func start(mealID: String) {
        Task {
            do {
                let mls = try await apiService.fetchMealDetails(endpoint: mealDetailEndpoint, mealID: mealID)
                var meals = mls.meals
                for index in 0..<meals.count {
                    if let ingredient = meals[index].strIngredient1 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient1 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient2 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient2 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient3 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient3 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient4 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient4 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient5 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient5 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient6 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient6 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient7 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient7 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient8 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient8 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient9 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient9 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient10 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient10 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient11 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient11 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient12 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient12 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient13 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient13 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient14 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient14 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient15 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient15 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient16 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient16 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient17 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient17 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient18 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient18 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient19 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient19 = nil
                        }
                    }
                    if let ingredient = meals[index].strIngredient20 {
                        if ingredient.isEmpty {
                            meals[index].strIngredient20 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure1 {
                        if measure.isEmpty {
                            meals[index].strMeasure1 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure2 {
                        if measure.isEmpty {
                            meals[index].strMeasure2 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure3 {
                        if measure.isEmpty {
                            meals[index].strMeasure3 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure4 {
                        if measure.isEmpty {
                            meals[index].strMeasure4 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure5 {
                        if measure.isEmpty {
                            meals[index].strMeasure5 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure6 {
                        if measure.isEmpty {
                            meals[index].strMeasure6 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure7 {
                        if measure.isEmpty {
                            meals[index].strMeasure7 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure8 {
                        if measure.isEmpty {
                            meals[index].strMeasure8 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure9 {
                        if measure.isEmpty {
                            meals[index].strMeasure9 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure10 {
                        if measure.isEmpty {
                            meals[index].strMeasure10 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure11 {
                        if measure.isEmpty {
                            meals[index].strMeasure11 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure12 {
                        if measure.isEmpty {
                            meals[index].strMeasure12 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure13 {
                        if measure.isEmpty {
                            meals[index].strMeasure13 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure14 {
                        if measure.isEmpty {
                            meals[index].strMeasure14 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure15 {
                        if measure.isEmpty {
                            meals[index].strMeasure15 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure16 {
                        if measure.isEmpty {
                            meals[index].strMeasure16 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure17 {
                        if measure.isEmpty {
                            meals[index].strMeasure17 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure18 {
                        if measure.isEmpty {
                            meals[index].strMeasure18 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure19 {
                        if measure.isEmpty {
                            meals[index].strMeasure19 = nil
                        }
                    }
                    if let measure = meals[index].strMeasure20 {
                        if measure.isEmpty {
                            meals[index].strMeasure20 = nil
                        }
                    }
                }
                mealDetails = meals
            } catch {
                print("Unable to fetch meal data \(error)")
            }
        }
    }
}
