//
//  ContentView.swift
//  WordScramble
//
//  Created by Sunimal Herath on 8/5/2024.
//

import SwiftUI

struct ContentView: View {
    let days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
    
    var body: some View {
        List(days, id: \.self) {
            Text($0)
        }
    }
}

#Preview {
    ContentView()
}
