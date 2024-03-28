//
//  CuisineSelectionView.swift
//  Remy
//
//  Created by Eugene Kim on 3/25/24.
//

import SwiftUI

struct CuisineSelectionView: View {
    let cuisineRows: [String]
    
    var body: some View {
        let chunks = cuisineRows.chunked(into: 3)
        
        ForEach(chunks, id: \.self) { row in
            HStack {
                ForEach(row, id: \.self) { list in
                    NavigationLink {
                        MainPageView()
                    } label: {
                        Text(list)
                            .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                            .frame(width: 115, height: 50)
                    }
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091), lineWidth: 4)
                    )
                    .cornerRadius(15)
                }
            }
        }
    }
}

#Preview {
    CuisineSelectionView(cuisineRows: ["Italian", "Korean", "Japanese", "Spanish", "Chinese", "Greek", "Mexican", "Meal Prep", "Dessert"])
}
