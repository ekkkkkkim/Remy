//
//  RecipePageView.swift
//  Remy
//
//  Created by Eugene Kim on 3/25/24.
//

import SwiftUI

struct RecipePageView: View {
    let foodName: String
    let ingredientlist: [String]
    
    
    var body: some View {
        ScrollView{
            VStack {
                Text(foodName)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                    .padding(.leading, 15)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ButtonView()
                    .alignmentGuide(.leading) { dimension in
                        dimension[.leading]
                    }
                    .padding(.leading, -90)
                
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(ingredientlist, id: \.self) { ingredient in
                            HStack {
                                Text("•")
                                    .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                                    .padding(.vertical, -2)
                                Text(ingredient)
                                    .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                                    .font(.system(size: 15))
                                    .frame(width: 260, alignment: .leading)
                                    .multilineTextAlignment(.leading)
                                    .lineSpacing(1)
                                    //.fontWeight(.semibold)
                            }
                            .padding(.leading, -80)
                        }
                    }

                    /*
                    Image("Chicken Parm")
                        .resizable()
                        .frame(width: 200, height: 300)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(25)
                        .padding(.trailing, -150) */
                }
                .padding(.top, 20)
                
                VStack {
                    Text("Cooking Time: Less than 1.5 hour")
                        .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                        .fontWeight(.semibold)
                    
                    Text("Difficulty: Intermediate")
                        .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                        .fontWeight(.semibold)
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 45)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091), lineWidth: 2))
                .padding(.top, 20)
                .padding(.bottom, 10)
                
                RecipeInstructionView(instructionList:["Preheat the oven to 350°F (175°C).", "Season the chicken with salt and pepper. Season additionally if you desire.", "Set up a breading station: place flour in one shallow dish, whisked egg in another, and breadcrumbs mixed with Parmasean in a third.", "Coat the chicken with flour, then dip it into the beaten eggs. Once evenly covered, coat the chicken with the breadcrumb mixture. Gently press around for even spread of the mixture.", "In a large skillet, heat your preferred oil over medium-high heat. When oil begins to shimmer, gently drop the chicken and cook for 3~4 minutes per side or until golden brown.", "Spoon the marinara sauce over the chicken, and sprinkle the Mozzarella cheese on top.", "Move the chicken to the preheated oven and bake for 20 minutes or until the cheese is appropriately melted.", "Once you put the chicken in the oven, boil water for pasta. Put 2 tablespoons-worth of salt, and drop your pasta when desired. Follow the instructions on pasta packaging for boiling time.", "Put olive oil on a hot pan, and add minced garlic until they turn gold with delicious smell. Then add the remaining marinara sauce with additional seasoning with Parmasean cheese if desired.", "Once pasta noodles are ready, mix them with the marinara sauce. Place the cooked chicken on top of your pasta, and enjoy!"])
                    .padding(.leading, -15)
            }
        }
    }
}

#Preview {
    RecipePageView(foodName: "Chicken Parm", ingredientlist:["1 boneless chicken breast", "1/3 cup all-purpose flour", "1/3 cup breadcrumbs", "1/2 cup olive oil", "1/3 cup grated Parmasean Cheese", "1 large egg, whisked", "1 cup marinara sauce", "1/3 cup shredded Mozzarella Cheese", "2 cloves of garlic", "100g pasta noodles of choice"])
}
