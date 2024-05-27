//
//  CustomTransition.swift
//  Animations
//
//  Created by Sunimal Herath on 27/5/2024.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(
            active: CornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
        )
    }
}

struct CustomTransition: View {
    @State private var isShowingPurple = false
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.teal)
                .frame(width: 200, height: 200)
            
            if isShowingPurple {
                Rectangle()
                    .fill(.purple)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation {
                isShowingPurple = true
            }
        }
    }
}

#Preview {
    CustomTransition()
}
