//
//  GestureAnimations.swift
//  Animations
//
//  Created by Sunimal Herath on 26/5/2024.
//

import SwiftUI

struct GestureAnimations: View {
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(.rect(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged{ dragAmount = $0.translation }
                    .onEnded { _ in
                        withAnimation(.bouncy) { // adds animation to the releasing
                            dragAmount = .zero
                        }
                    }
            )
            //.animation(.bouncy, value: dragAmount) // adds animation to both draging and releasing
    }
}

#Preview {
    GestureAnimations()
}
