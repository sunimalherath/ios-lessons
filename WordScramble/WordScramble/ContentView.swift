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
    
    func getFileContents() {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            if let fileContents = try? String(contentsOf: fileURL) {
                // loaded the file in to a string.
            }
        }
    }
}

#Preview {
    ContentView()
}
