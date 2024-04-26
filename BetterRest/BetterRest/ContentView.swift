//
//  ContentView.swift
//  BetterRest
//
//  Created by Sunimal Herath on 25/4/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            DatePicker("Enter a date", selection: $wakeUp)
                .labelsHidden()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
