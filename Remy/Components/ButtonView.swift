//
//  ButtonView.swift
//  Remy
//
//  Created by Eugene Kim on 3/26/24.
//

import SwiftUI

struct ButtonView: View {
    @State private var isHeartFilled = false
    @State private var servingSize = 1
    
    var body: some View {
        HStack {
            Button(action: {
                // Add haptic feedback (vibration)
                #if os(iOS)
                let generator = UIImpactFeedbackGenerator(style: .light)
                generator.impactOccurred()
                #endif
            }) {
                VStack {
                    HStack {
                        Button(action: {
                                        // Decrease value by 1
                                        if servingSize > 1 {
                                            servingSize -= 1
                                        }
                        }) { Image(systemName: "minus.circle") }
                            .padding(.leading)
                        
                        Text("Serving: \(servingSize)")
                            .padding(.vertical, 10)
                        
                        Button(action: {
                                        // Increase value by 1
                                        servingSize += 1
                                    }) { Image(systemName: "plus.circle") }
                            .padding(.trailing)
                    }
                }
            }
            .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
            .background(Color(.white))
            .fontWeight(.semibold)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091), lineWidth: 2))
            
            Button(action: {
                // Add haptic feedback (vibration)
                #if os(iOS)
                let generator = UIImpactFeedbackGenerator(style: .light)
                generator.impactOccurred()
                #endif
                
                isHeartFilled.toggle()
            }) {
                HStack {
                    Image(systemName: isHeartFilled ? "heart.fill" : "heart")
                        .padding(.leading)
                        .padding(.vertical, 10)
                    Text("Add")
                        .padding(.trailing)
                        .padding(.vertical, 10)
                }
            }
            .foregroundColor(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091))
            .background(Color(.white))
            .fontWeight(.semibold)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 0.794, green: -0.153, blue: -0.091), lineWidth: 2))
        }
    }
}

#Preview {
    ButtonView()
}
