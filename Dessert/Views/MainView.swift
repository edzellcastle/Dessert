//
//  MainView.swift
//  Dessert
//
//  Created by David Lindsay on 1/3/24.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel: MealViewModel
    
    var body: some View {
        
        NavigationView {
            List(viewModel.meals.sorted()) { meal in
                NavigationLink {
                    MealDetailView(viewModel: .init(apiService: APIClient()),  meal: meal)
                } label: {
                    MealRowView(meal: meal)
                }
            }
            .navigationBarTitle("Desserts")
        }
        .onAppear {
            viewModel.start()
        }
    }
}

#Preview {
    MainView(viewModel: .init(apiService: APIClient()))
}
