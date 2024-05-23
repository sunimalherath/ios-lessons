//
//  AnimationStack.swift
//  Animations
//
//  Created by Sunimal Herath on 23/5/2024.
//

import SwiftUI

struct AnimationStack: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .teal : .purple)
        .foregroundStyle(.white)
        .animation(.default, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.8), value: enabled) // this animation applies to clipShape
    }
}

#Preview {
    AnimationStack()
}
