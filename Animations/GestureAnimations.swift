//
//  GestureAnimations.swift
//  Animations
//
//  Created by Sunimal Herath on 26/5/2024.
//

import SwiftUI

struct GestureAnimations: View {
    var body: some View {
        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    GestureAnimations()
}
