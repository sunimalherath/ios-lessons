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

#Preview {
    NavLinkDemo()
}
