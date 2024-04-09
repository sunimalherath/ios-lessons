//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Sunimal Herath on 9/4/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Adding Yellow to the ZStack background")
            ZStack {
                Text("text view 1")
            }
            .background(.yellow)
            
            Text("Adding Cyan to the Text View background")
            ZStack {
                Text("text view 2")
                    .background(.cyan)
            }
            
            Text("Adding Aqua inside the ZStack as a View")
            ZStack {
                Color.green
                Text("text view 3")
            }
            
            Text("Giving Color.Blue a frame")
            ZStack {
                Color.blue.frame(width: 200, height: 200)
                Text("text view 4")
            }
            
            Text("Giving minWidth, maxWidth, maxHeight, etc for the Color.purple")
            ZStack {
                Color.purple.frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
                Text("text view 5")
            }
            
            Text("Custom colors")
            ZStack {
                Color(red: 1, green: 0.8, blue: 0)
                Text("text view 6")
            }
            
            Text("Ignoring safe area")
            ZStack {
                Color.indigo
                Text("text view 7")
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
