//
//  GuestureAnimationText.swift
//  Animations
//
//  Created by Sunimal Herath on 26/5/2024.
//

import SwiftUI

struct GuestureAnimationText: View {
    let letters = Array("Hello swift")
    
    @State private var dragAmount = CGSize.zero
    @State private var isEnabled = false
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) {num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(isEnabled ? .teal : .gray)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(num) / 20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = .zero
                    isEnabled.toggle()
                }
        )
    }
}

#Preview {
    GuestureAnimationText()
}
