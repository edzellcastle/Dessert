//
//  APIService.swift
//  Dessert
//
//  Created by David Lindsay on 1/3/24.
//

import Foundation

protocol APIService {
    
    func fetchMeals(endpoint: String) async throws -> Meals
    func fetchMealDetails(endpoint: String, mealID: String) async throws -> MealDetails
}
