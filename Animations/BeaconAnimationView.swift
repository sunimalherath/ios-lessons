//
//  BeaconAnimationView.swift
//  Animations
//
//  Created by Sunimal Herath on 15/5/2024.
//

import SwiftUI

struct BeaconAnimationView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
//            animationAmount += 0.5
        }
        .padding(50)
        .background(.teal)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
                .stroke(.teal)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(.easeOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount)
        )
        .onAppear {
            animationAmount = 2
        }
    }
}

#Preview {
    BeaconAnimationView()
}
