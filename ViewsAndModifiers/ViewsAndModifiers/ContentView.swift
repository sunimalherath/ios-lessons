//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Sunimal Herath on 18/4/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    
    let viewOne = Text("This is view one")
    let viewTwo = Text("This is view two")
    
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
            VStack {
                viewOne
                    .foregroundStyle(.brown)
                viewTwo
                    .foregroundStyle(.orange)
                viewThree
                viewFour
                viewFive
                viewSix
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.teal)
    }
    
    var viewThree: some View {
        Text("This is view three")
    }
    
    
    // Option 1 of 3 to send multiple views back to main view
    var viewFour: some View {
        VStack {
            Text("This is view four 1")
            Text("This is view four 2")
        }
    }
    
    // Option 2 of 3 to send multiple views back to main view
    var viewFive: some View {
        Group {
            Text("This is view five 1")
            Text("This is view five 2")
        }
    }
    
    // Option 3 of 3 to send multiple views back to main view
    // this is the preffered way
    @ViewBuilder var viewSix: some View {
        Text("This is view six with the view builder 1")
        Text("This is view six with the view builder 2")
    }
}

#Preview {
    ContentView()
}
