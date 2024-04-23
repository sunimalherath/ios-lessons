//
//  CompositionView.swift
//  ViewsAndModifiers
//
//  Created by Sunimal Herath on 22/4/2024.
//

import SwiftUI

struct CompositionView: View {
    var body: some View {
        VStack {
            CapsuleText(text: "First text view")
            CapsuleText(text: "Second text view")
        }
    }
}

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.teal)
            .clipShape(.capsule)
    }
}

#Preview {
    CompositionView()
}
