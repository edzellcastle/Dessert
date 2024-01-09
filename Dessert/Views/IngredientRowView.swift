//
//  IngredientRowView.swift
//  Dessert
//
//  Created by David Lindsay on 1/8/24.
//

import SwiftUI

struct IngredientRowView: View {
    let ingredient: String?
    let measure: String?
    
    var body: some View {
        if let ingredient, let measure {
            HStack {
                Spacer()
                    .frame(width: 20)
                Text(measure)
                    .frame(width: 100, alignment: .leading)
                Text(ingredient)
                    .frame(width: 200, alignment: .leading)
                Spacer()
            }
        } else {
            EmptyView()
        }
    }
}

#Preview {
    IngredientRowView(ingredient: "Butter", measure: "1 Cup")
}
