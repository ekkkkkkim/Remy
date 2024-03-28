//
//  RecipeInstructionView.swift
//  Remy
//
//  Created by Eugene Kim on 3/26/24.
//

import SwiftUI

struct RecipeInstructionView: View {
    let instructionList: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(0..<instructionList.count, id: \.self) { index in
                HStack(alignment: .top, spacing: 5) {
                    Text("\(index + 1).") // Display the step number
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .frame(width: 45)
                    Text(instructionList[index]) // Display the instruction
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(nil) // Allow unlimited lines for long instructions
                        .padding(.top, 5)
                        .padding(.leading, 10)
                }
                .frame(width: 350, alignment: .leading)
                .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                .lineSpacing(2)
            }
        }
        .padding(.leading, 5)
    }
}

#Preview {
    RecipeInstructionView(instructionList:["Preheat the oven to 350°F (175°C).", "Season the chicken with salt and pepper. Season additionally if you desire.", "Set up a breading station: place flour in one shallow dish, whisked egg in another, and breadcrumbs mixed with Parmasean in a third.", "Coat the chicken with flour, then dip it into the beaten eggs. Once evenly covered, coat the chicken with the breadcrumb mixture. Gently press around for even spread of the mixture.", "In a large skillet, heat your preferred oil over medium-high heat. When oil begins to shimmer, gently drop the chicken and cook for 3~4 minutes per side or until golden brown.", "Spoon the marinara sauce over the chicken, and sprinkle the Mozzarella cheese on top.", "Move the chicken to the preheated oven and bake for 20 minutes or until the cheese is appropriately melted.", "Once you put the chicken in the oven, boil water for pasta. Put 2 tablespoons-worth of salt, and drop your pasta when desired. Follow the instructions on pasta packaging for boiling time.", "Put olive oil on a hot pan, and add minced garlic until they turn gold with delicious smell. Then add the remaining marinara sauce with additional seasoning with Parmasean cheese to your liking.", "Once pasta noodles are ready, mix them with the marinara sauce. Place the cooked chicken on top of your pasta, and enjoy!"])
}
