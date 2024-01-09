//
//  MealViewModel.swift
//  Dessert
//
//  Created by David Lindsay on 1/3/24.
//

import Foundation

@MainActor final class MealViewModel: ObservableObject {
    
    private let apiService: APIService
    
    @Published var meals: [Meal] = []
    
    // MARK: - Initialization
    
    init(apiService: APIService) {
        self.apiService = apiService
    }
    
    // MARK: - Public API
    
    func start() {
        Task {
            do {
                let mls = try await apiService.fetchMeals(endpoint: dessertListEnpoint)
                meals = mls.meals
            } catch {
                print("Unable to fetch meal data \(error)")
            }
        }
    }
}
