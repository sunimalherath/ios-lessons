//
//  CompositionView.swift
//  ViewsAndModifiers
//
//  Created by Sunimal Herath on 22/4/2024.
//

import SwiftUI

struct CompositionView: View {
    var body: some View {
        Text("First Text View")
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.teal)
            .clipShape(.capsule)
        Text("Second Text View")
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
