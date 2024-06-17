//
//  ContentView.swift
//  Memorize
//
//  Created by Sunimal Herath on 12/6/2024.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚗", "🚀", "✈️", "🚌", "⛴️", "🚁", "🚣‍♂️", "🚴‍♂️", "🚢", "🚊", "🚡", "🛩️", "🛻", "🛵", "🚎", "🏎️", "🚓", "🚒", "🛸", "🛰️", "🚔", "🚘"]
    var emojiCount = 4
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }
            HStack {
                Button(action: {}) {
                    VStack{
                        Text("Add")
                        Text("Card")
                    }
                }
                Spacer()
                Button(action: {}) {
                    VStack{
                        Text("Remove")
                        Text("Card")
                    }
                }
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
        .foregroundColor(.teal)
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = true
    var content: String
    
    var body: some View {
        ZStack {
            let cardShape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                cardShape.fill().foregroundColor(.white)
                cardShape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                cardShape.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
