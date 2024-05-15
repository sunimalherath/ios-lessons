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
                animationAmount -= 0.5
                toggleButton = false
            } else {
                animationAmount += 0.5
                toggleButton = true
            }
        }
        .padding(50)
        .background(.teal)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
//        .animation(.default, value: animationAmount)
//        .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
//        .animation(.easeInOut(duration: 2), value: animationAmount)
//        .animation(.easeInOut(duration: 2).delay(0.5), value: animationAmount)
        .animation(.easeInOut(duration: 2).repeatCount(3, autoreverses: true), value: animationAmount)
    }
}

#Preview {
    ContentView()
}
