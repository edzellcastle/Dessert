//
//  MealRowView.swift
//  Dessert
//
//  Created by David Lindsay on 1/5/24.
//

import SwiftUI

struct MealRowView: View {
    var meal: Meal
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: meal.strMealThumb)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 44, height: 44)
            Text(meal.strMeal)
            Spacer()
        }
    }
}

#Preview {
    let meal: Meal = Meal(strMeal: "Apam balik", strMealThumb: "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg", idMeal: "53049")
    return MealRowView(meal: meal)
}
