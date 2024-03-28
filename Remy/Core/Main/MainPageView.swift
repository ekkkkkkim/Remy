//
//  MainPageView.swift
//  Remy
//
//  Created by Eugene Kim on 3/20/24.
//

import SwiftUI

struct MainPageView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("For You")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                    .padding(.leading, 15)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("What we think you may enjoy based on your profile")
                    .font(.subheadline)
                    .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                    .padding(.leading, 15)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top,-20)
                
                ForYouImageView(listRows: ["Chicken Parm", "Kimchi Fried Rice", "Poke Bowl", "Soufflé Pancakes", "Meatballs Spaghetti", "Tiramisu"])
                    .padding(.top, -10)
                    .padding(.bottom, 20)
            }
                    
            VStack {
                Text("Top Chefs")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                    .padding(.leading, 15)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Recipes from top chefs of Remy")
                    .font(.subheadline)
                    .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                    .padding(.leading, 15)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top,-20)
                
                AutoChangeView(listRows: ["Tiramisu", "Kimchi Fried Rice", "Poke Bowl", "Chicken Parm"], username: ["@eugene227", "@cliao", "@ryanlinnnn", "@tiya123"], description: ["Creamy, delicious Tiramisu with less sugar!", "Fast & easy Korean traditional meal for your weekend.", "You will never see a more tasty poke bowl.", "Why eat out when you can make yourself a delicious chicken parm?"])
                    //.padding(.top, )
                    .padding(.bottom, 20)
            }
          
            VStack {
                Text("Discover")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                    .padding(.leading, 15)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Find delicious and healthy dishes by cuisine")
                    .font(.subheadline)
                    .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                    .padding(.leading, 15)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top,-20)
                
                CuisineSelectionView(cuisineRows: ["Italian", "Korean", "Japanese", "Spanish", "Chinese", "Greek", "Mexican", "Meal Prep", "Dessert"])
            }
        }
    }
}

#Preview {
    MainPageView()
}
