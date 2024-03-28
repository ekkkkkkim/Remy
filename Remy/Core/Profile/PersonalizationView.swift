//
//  ProfileView.swift
//  Remy
//
//  Created by Eugene Kim on 3/13/24.
//

import SwiftUI
import UIKit

struct PersonalizationView: View {
    @State private var portionSize: Int = 0
    
    var body: some View {
        ScrollView {
            VStack {
                SelectOptionsView (title: "Cuisine", subtitle: "Select your preferred options for cuisine", listRows: ["Chinese", "Italian", "Greek", "Korean", "Japanese", "Indian", "Mexican", "Vietnamese", "Spanish"])
                
                SelectOptionsView (title: "Allergies", subtitle: "Select as many that apply", listRows: ["Dairy", "Nuts", "Gluten", "Seafood", "Soy", "Eggs"])
                
                SelectOptionsView (title: "Dietary Preferences", subtitle: "Let us know of any dietary preferences", listRows: ["Vegan", "Gluten-Free", "Pescetarian", "Dairy-Free", "Keto", "Vegetarian"])
            }
            
            VStack {
                SliderView()
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Portion Size")
                    .font(.title)
                    .fontWeight(.bold)
                Text("How many people are you cooking for?")
                    .padding(.bottom, 10)
                TextField("0", value: $portionSize, formatter: NumberFormatter())
                                .padding()
                                .frame(width: 370.0)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.bottom, 10)
            
            //Spacer()
            
             //WORK ON THIS AFTER CREATING MAIN PAGE
            NavigationLink {
                MainPageView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                HStack {
                    Text("DONE")
                        .fontWeight(.semibold)
                    // Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            }
            .background(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
                .cornerRadius(10)
                .padding(.top, 24)
        }
    }
}


#Preview {
    PersonalizationView()
}
