//
//  AnimationBindings.swift
//  Animations
//
//  Created by Sunimal Herath on 20/5/2024.
//

import SwiftUI

struct AnimationBindings: View {
    @State private var animationAmount = 1.0
    
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
        }
    }
}

#Preview {
    AnimationBindings()
}
