//
//  APIClient.swift
//  Dessert
//
//  Created by David Lindsay on 1/3/24.
//

import Foundation

enum NetworkError: Error {
    case serverError
    case noData
}

final class APIClient: APIService {

    func fetchMeals(endpoint: String) async throws -> Meals {
        
        let result: Meals
        let url = URL(string: dessertListEnpoint)!
        let (data, _) = try await URLSession.shared.data(from: url)
        do {
            result = try JSONDecoder().decode(Meals.self, from: data)
        } catch let DecodingError.typeMismatch(type, context) {
            throw DecodingError.typeMismatch(type, context)
        }
        
        return result
    }
    
    func fetchMealDetails(endpoint: String, mealID: String) async throws -> MealDetails {
        
        let result: MealDetails
        let endPoint = mealDetailEndpoint + mealID
        let url = URL(string: endPoint)!
        let (data, _) = try await URLSession.shared.data(from: url)
        do {
            result = try JSONDecoder().decode(MealDetails.self, from: data)
        } catch let DecodingError.typeMismatch(type, context) {
            throw DecodingError.typeMismatch(type, context)
        }
        
        return result
    }
}
