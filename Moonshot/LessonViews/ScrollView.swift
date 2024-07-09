//
//  ScrollView.swift
//  Moonshot
//
//  Created by Sunimal Herath on 9/7/2024.
//

import SwiftUI

struct ScrollView: View {
    var body: some View {
        VStack(spacing: 10) {
            ForEach(0..<100) {
                Text("Item \($0)")
                    .font(.title)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ScrollView()
}
