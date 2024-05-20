//
//  AnimationBindings.swift
//  Animations
//
//  Created by Sunimal Herath on 20/5/2024.
//

import SwiftUI

struct AnimationBindings: View {
    @State private var animationAmount = 1.0
    @State private var spinAnimation = 0.0
    
    var body: some View {
        print(animationAmount)
        
        return VStack {
            Stepper("Scale Animation", value: $animationAmount.animation(), in: 1...10)
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.teal)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
            
            Spacer()
            
            Button("Tap Me") {
                withAnimation(.spring(duration: 1, bounce: 0.5)){
                    spinAnimation += 360
                }
            }
            .padding(40)
            .background(.purple)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .rotation3DEffect(
                .degrees(spinAnimation),
                axis: (x: 0, y: 1, z: 0)
            )
        }
    }
}

#Preview {
    AnimationBindings()
}
