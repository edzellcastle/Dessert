//
//  Meals.swift
//  Dessert
//
//  Created by David Lindsay on 1/3/24.
//

import Foundation

struct Meals: Decodable {
    let meals: [Meal]
}

struct Meal: Decodable, Identifiable, Comparable {
    let id = UUID()
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
    
    enum CodingKeys: String, CodingKey {
        case strMeal
        case strMealThumb
        case idMeal
    }
    
    static func == (lhs: Meal, rhs: Meal) -> Bool {
        return lhs.strMeal == rhs.strMeal
    }
    static func < (lhs: Meal, rhs: Meal) -> Bool {
        return lhs.strMeal < rhs.strMeal
    }
}
