//
//  ContentView.swift
//  Animations
//
//  Created by Sunimal Herath on 14/5/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    @State private var toggleButton = false
    
    var body: some View {
        Button("Tap Me") {
            if toggleButton {
                animationAmount -= 1
                toggleButton = false
            } else {
                animationAmount += 1
                toggleButton = true
            }
        }
        .padding(50)
        .background(.teal)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .animation(.default, value: animationAmount)
    }
}

#Preview {
    ContentView()
}
