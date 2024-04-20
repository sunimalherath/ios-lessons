//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Sunimal Herath on 18/4/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.yellow)
                .padding()
                .background(.green)
            Text("Change text color based on the state")
                .foregroundStyle(useRedText ? .red : .yellow)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.teal)
    }
}

#Preview {
    ContentView()
}
