//
//  ContentView.swift
//  WordScramble
//
//  Created by Sunimal Herath on 8/5/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0..<10) {
            Text("Fully dynamic list - row \($0)")
        }
    }
}

#Preview {
    ContentView()
}
