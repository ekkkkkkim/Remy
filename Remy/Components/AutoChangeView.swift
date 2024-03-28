//
//  AutoChangeView.swift
//  Remy
//
//  Created by Eugene Kim on 3/23/24.
//

import SwiftUI

struct AutoChangeView: View {
    @State private var showFirstImage = true
    let listRows: [String]
    let username: [String]
    let description: [String]
    
    var body: some View {
        let chunks = listRows.chunked(into: 4)
        
        VStack {
                    ForEach(chunks, id: \.self) { chunk in
                        VStack {
                            if showFirstImage {
                                AutoChangeImgView(listRows: [chunk[0]], username: [username[0]], description: [description[0]])
                                AutoChangeImgView(listRows: [chunk[1]], username: [username[1]], description: [description[1]])
                            } else {
                                AutoChangeImgView(listRows: [chunk[2]], username: [username[2]], description: [description[2]])
                                AutoChangeImgView(listRows: [chunk[3]], username: [username[3]], description: [description[3]])
                            }
                        }
                    }
                }
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
                        withAnimation {
                            self.showFirstImage.toggle()
                        }
                    }
                }
    }
}

#Preview {
    AutoChangeView(listRows: ["Tiramisu", "Kimchi Fried Rice", "Poke Bowl", "Chicken Parm"], username: ["@eugene227", "@cliao", "@ryanlinnnn", "@tiya123"], description: ["Creamy, delicious Tiramisu with less sugar!", "Fast & easy Korean traditional meal for your weekend.", "You will never see a more tasty poke bowl.", "Why eat out when you can make yourself a delicious chicken parm?"])
}
