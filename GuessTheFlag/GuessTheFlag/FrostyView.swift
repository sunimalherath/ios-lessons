//
//  FrostyView.swift
//  GuessTheFlag
//
//  Created by Sunimal Herath on 9/4/2024.
//

import SwiftUI

struct FrostyView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.yellow
                Color.green
            }
            
            Text("Content goes here")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    FrostyView()
}
