//
//  SliderView.swift
//  Remy
//
//  Created by Eugene Kim on 3/17/24.
//

import SwiftUI

struct SliderView: View {
    @State private var value: Double = 1
    let labels = ["I need Remy to cook", "I already cook for many of my meals", "I am Remy himself from Ratatouille"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Cooking Difficulty Level")
                .font(.title)
                .fontWeight(.bold)
                .padding(.leading)
            Text("Tell us how close you are to cooking")
                .padding(.leading)
                .padding(.bottom, 10)
            
            
            Slider(value: $value, in: 0...2, step: 1)
                .padding()
                .padding(.horizontal)
            
            
            HStack {
                Text("\(labels[Int(value)])")
                    .padding()
                    .frame(width: 400.0)
            }
            
                }
    }
}

#Preview {
    SliderView()
}
