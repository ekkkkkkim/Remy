//
//  FoodImageView.swift
//  Remy
//
//  Created by Eugene Kim on 3/18/24.
//

import SwiftUI

struct ForYouImageView: View {
    let listRows: [String]
    
    var body: some View {
        let chunks = listRows.chunked(into: 3)
        
        VStack {
            ForEach(chunks, id: \.self) { row in
                HStack {
                    ForEach(row.indices, id: \.self) { index in
                        let foodName = row[index]
                        let foodImg = row[index]
                        
                        NavigationLink(destination: RecipePageView(foodName: "Chicken Parm", ingredientlist:["1 boneless chicken breast", "1/3 cup all-purpose flour", "1/3 cup breadcrumbs", "1/2 cup olive oil", "1/3 cup grated Parmasean Cheese", "1 large egg, whisked", "1 cup marinara sauce", "1/3 cup shredded Mozzarella Cheese", "2 cloves of garlic", "100g pasta noodles of choice"])) {
                            VStack {
                                Image(foodImg)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 110, height: 110)
                                    .cornerRadius(15)
                                
                                
                                Text(foodName)
                                    .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                                    .font(.caption)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(1)
                                    .frame(width: 100)
                                    .padding(.bottom, 10)
                                    .padding(.top, 3)
                            }
                            //.fixedSize(horizontal: false, vertical: true)
                            
                            .padding(.horizontal, 5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091), lineWidth: 2)
                                    .frame(width: 109))
                        }
                    }
                }
            }
            .padding(.top, 10)
        }
    }
}

#Preview {
    ForYouImageView(listRows: ["Chicken Parm", "Kimchi Fried Rice", "Poke Bowl", "Soufflé Pancakes", "Meatballs Spaghetti", "Tiramisu"])
}
