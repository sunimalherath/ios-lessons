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
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.default, value: enabled)
    }
}

#Preview {
    AnimationStack()
}
