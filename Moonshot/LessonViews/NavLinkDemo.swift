//
//  NavLinkDemo.swift
//  Moonshot
//
//  Created by Sunimal Herath on 10/7/2024.
//

import SwiftUI

struct NavLinkDemo: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Tap Me") {
                Text("Detail view")
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct AnotherWay: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                Text("Detail View")
            } label: {
                VStack {
                    Text("This is part of..")
                    Text("..the same link")
                    Image(systemName: "face.smiling")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct UsefulWay: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail View for \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
//    NavLinkDemo()
//    AnotherWay()
    UsefulWay()
}
