//
//  AutoChangeImgView.swift
//  Remy
//
//  Created by Eugene Kim on 3/25/24.
//

import SwiftUI

struct AutoChangeImgView: View {
    let listRows: [String]
    let username: [String]
    let description: [String]
    
    var body: some View {
        let chunks = listRows.chunked(into: 4)
        
        VStack {
            ForEach(chunks, id: \.self) { row in
                VStack {
                    ForEach(row.indices, id: \.self) { index in
                        let foodName = row[index]
                        let foodImg = row[index]
                        let userName = username[index]
                        let foodDesc = description[index]
                        
                        NavigationLink {
                            RecipePageView(foodName: "Chicken Parm", ingredientlist:["1 boneless chicken breast", "1/3 cup all-purpose flour", "1/3 cup breadcrumbs", "1/2 cup olive oil", "1/3 cup grated Parmasean Cheese", "1 large egg, whisked", "1 cup marinara sauce", "1/3 cup shredded Mozzarella Cheese", "2 cloves of garlic", "100g pasta noodles of choice"])
                        } label: {
                            HStack {
                                Image(foodImg)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 110, height: 110)
                                    .cornerRadius(15)
                                    .padding(.leading, -15)
                                VStack {
                                    Text(foodName)
                                        .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                                        .font(.headline)
                                        .frame(width: 170, alignment: .leading)
                                        .lineLimit(1)
                                        .padding(.leading, 10)
                                    //.multilineTextAlignment(.leading)
                                    
                                    Text(userName)
                                        .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                                        .font(.caption)
                                        .frame(width: 170, alignment: .leading)
                                        .lineLimit(1)
                                        .padding(.bottom, 15)
                                        .padding(.leading, 10)
                                    
                                    Text(foodDesc)
                                        .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .frame(width: 170, alignment: .leading)
                                        .lineLimit(3)
                                        .multilineTextAlignment(.leading)
                                        .padding(.leading, 10)
                                }
                            }
                            .padding(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091), lineWidth: 2)
                                    .frame(width: 360, height: 150)
                            )
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    AutoChangeImgView(listRows: ["Tiramisu", "Kimchi Fried Rice", "Poke Bowl", "Chicken Parm"], username: ["@eugene227", "@cliao", "@ryanlinnnn", "@tiya123"], description: ["Creamy, delicious Tiramisu with less sugar!", "Fast & easy Korean traditional meal for your weekend.", "You will never see a more tasty poke bowl.", "Why eat out when you can make yourself a delicious chicken parm?"])
}
