//
//  SelectOptionsView.swift
//  Remy
//
//  Created by Eugene Kim on 3/17/24.
//

import SwiftUI

struct SelectOptionsView: View {
    let title: String
    let subtitle: String
    let listRows: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                //.padding(.leading)
            
            Text(subtitle)
                .padding(.bottom, 10)
                //.padding(.leading)
            
            let chunks = listRows.chunked(into: 3)
            
            ForEach(chunks, id: \.self) { row in
                HStack {
                    ForEach(row, id: \.self) { list in
                        Button(action: {
                            print("Select your preferred \(listRows)")
                        }) {
                            Text(list)
                                .foregroundColor(Color.black)
                                .frame(width: 120, height: 50)
                        }
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        .cornerRadius(25)
                    }
                }
            }
        }
        .padding(.bottom, 20)
    }
}

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

#Preview {
    SelectOptionsView(title: "Cuisine", subtitle: "Select your preferred options for cuisine", listRows: ["Chinese", "Italian", "Greek", "Korean", "Japanese", "Indian", "Mexican", "Vietnamese", "Spanish"])
}
