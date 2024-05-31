//
//  ShowingHidingViews.swift
//  iExpense
//
//  Created by Sunimal Herath on 31/5/2024.
//

import SwiftUI

struct ShowingHidingViews: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            // content of the sheet
            SecondView()
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("Second view")
    }
}

#Preview {
    ShowingHidingViews()
}
