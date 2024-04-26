//
//  ContentView.swift
//  BetterRest
//
//  Created by Sunimal Herath on 25/4/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    
    var body: some View {
        VStack {
            Stepper("\(sleepAmount) hours", value: $sleepAmount, in: 4...12)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
