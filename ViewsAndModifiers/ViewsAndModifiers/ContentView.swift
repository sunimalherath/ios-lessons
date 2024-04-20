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
            VStack {
                Text("Land Cruiser Prado")
                    .font(.largeTitle) // child modifier gets priority over the container's
                Text("Klugger")
                Text("Rav4")
            }
            .font(.title)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.teal)
    }
}

#Preview {
    ContentView()
}
