//
//  ContentView.swift
//  Memorize
//
//  Created by Sunimal Herath on 12/6/2024.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚗", "🚀", "✈️", "🚌"]
    
    var body: some View {
        HStack {
            CardView(content: emojis[0])
            CardView(content: emojis[1])
            CardView(content: emojis[2])
            CardView(content: emojis[3])
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
