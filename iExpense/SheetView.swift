//
//  SheetView.swift
//  iExpense
//
//  Created by Sunimal Herath on 24/6/2024.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        Text("Second View")
    }
}

struct SheetView: View {
    @State private var showingInfoView = false
    
    var body: some View {
        Button("Show view") {
            showingInfoView.toggle()
        }
        .sheet(isPresented: $showingInfoView, content: {
            InfoView()
        })
    }
}

#Preview {
    SheetView()
}
