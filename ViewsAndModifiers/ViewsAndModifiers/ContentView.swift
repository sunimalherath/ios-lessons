//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Sunimal Herath on 18/4/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.teal)
    }
}

#Preview {
    ContentView()
}
