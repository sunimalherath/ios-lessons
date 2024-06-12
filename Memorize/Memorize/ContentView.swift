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
        if isFaceUp {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("✈️")
                    .font(.largeTitle)
            }
        } else {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill()
            }
        }
    }
}

#Preview {
    ContentView()
}
