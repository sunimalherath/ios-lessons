//
//  ContentView.swift
//  WordScramble
//
//  Created by Sunimal Herath on 8/5/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            Text("Static Row 1")
            Text("Static Row 2")
            ForEach(0..<10) {
                Text("Dynamic stuff \($0)")
            }
            Text("Static Row 3")
        }
    }
}

#Preview {
    ContentView()
}
