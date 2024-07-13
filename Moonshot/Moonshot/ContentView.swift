//
//  ContentView.swift
//  Moonshot
//
//  Created by Sunimal Herath on 7/7/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let astronauts = Bundle.main.decode("astronauts.json")
        
        VStack {
            Text(String(astronauts.count))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
