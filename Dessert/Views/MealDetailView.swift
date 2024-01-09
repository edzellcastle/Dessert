//
//  MealDetailView.swift
//  Dessert
//
//  Created by David Lindsay on 1/4/24.
//

import SwiftUI

struct MealDetailView: View {
    @ObservedObject var viewModel: MealDetailViewModel
    var meal: Meal
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.mealDetails) { mealDetail in
                    Text(mealDetail.strMeal)
                        .font(.title)
                    Text(mealDetail.strInstructions)
                        .padding(10)
                    IngredientRowView(ingredient: mealDetail.strIngredient1, measure: mealDetail.strMeasure1)
                    IngredientRowView(ingredient: mealDetail.strIngredient2, measure: mealDetail.strMeasure2)
                    IngredientRowView(ingredient: mealDetail.strIngredient3, measure: mealDetail.strMeasure3)
                    IngredientRowView(ingredient: mealDetail.strIngredient4, measure: mealDetail.strMeasure4)
                    IngredientRowView(ingredient: mealDetail.strIngredient5, measure: mealDetail.strMeasure5)
                    IngredientRowView(ingredient: mealDetail.strIngredient6, measure: mealDetail.strMeasure6)
                    IngredientRowView(ingredient: mealDetail.strIngredient7, measure: mealDetail.strMeasure7)
                    IngredientRowView(ingredient: mealDetail.strIngredient8, measure: mealDetail.strMeasure8)
                    IngredientRowView(ingredient: mealDetail.strIngredient9, measure: mealDetail.strMeasure9)
                    IngredientRowView(ingredient: mealDetail.strIngredient10, measure: mealDetail.strMeasure10)
                    IngredientRowView(ingredient: mealDetail.strIngredient11, measure: mealDetail.strMeasure11)
                    IngredientRowView(ingredient: mealDetail.strIngredient12, measure: mealDetail.strMeasure12)
                    IngredientRowView(ingredient: mealDetail.strIngredient13, measure: mealDetail.strMeasure13)
                    IngredientRowView(ingredient: mealDetail.strIngredient14, measure: mealDetail.strMeasure14)
                    IngredientRowView(ingredient: mealDetail.strIngredient15, measure: mealDetail.strMeasure15)
                    IngredientRowView(ingredient: mealDetail.strIngredient16, measure: mealDetail.strMeasure16)
                    IngredientRowView(ingredient: mealDetail.strIngredient17, measure: mealDetail.strMeasure17)
                    IngredientRowView(ingredient: mealDetail.strIngredient18, measure: mealDetail.strMeasure18)
                    IngredientRowView(ingredient: mealDetail.strIngredient19, measure: mealDetail.strMeasure19)
                    IngredientRowView(ingredient: mealDetail.strIngredient20, measure: mealDetail.strMeasure20)
                }
            }
        }
        .onAppear {
            viewModel.start(mealID: meal.idMeal)
        }
    }
}

#Preview {
    let meal: Meal = Meal(strMeal: "Apam balik", strMealThumb: "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg", idMeal: "53049")

    return MealDetailView(viewModel: .init(apiService: APIClient()), meal: meal)
}
