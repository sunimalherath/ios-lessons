//
//  TransitionAnimation.swift
//  Animations
//
//  Created by Sunimal Herath on 27/5/2024.
//

import SwiftUI

struct TransitionAnimation: View {
    @State private var isShowingTeal = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingTeal.toggle()
                }
            }
            
            if isShowingTeal {
                Rectangle()
                    .fill(.teal)
                    .frame(width: 200, height: 200)
            }
        }
    }
}

#Preview {
    TransitionAnimation()
}
