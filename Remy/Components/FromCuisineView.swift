//
//  FromCuisineView.swift
//  Remy
//
//  Created by Eugene Kim on 3/27/24.
//

import SwiftUI

struct FromCuisineView: View {
    let cuisineName: String
    
    var body: some View {
        Text(cuisineName)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
            .padding(.leading, 15)
    }
}

#Preview {
    FromCuisineView(cuisineName: "Italian")
}
