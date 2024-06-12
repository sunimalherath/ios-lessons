//
//  ContentView.swift
//  Memorize
//
//  Created by Sunimal Herath on 12/6/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
        }
        .padding(.horizontal)
        .foregroundColor(.teal)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            var cardShape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                cardShape.fill().foregroundColor(.white)
                cardShape.stroke(lineWidth: 3)
                Text("✈️")
                    .font(.largeTitle)
            } else {
                cardShape.fill()
            }
        }
    }
}

#Preview {
    ContentView()
}
