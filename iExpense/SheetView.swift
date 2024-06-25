//
//  SheetView.swift
//  iExpense
//
//  Created by Sunimal Herath on 24/6/2024.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Second View")
            Button("Dismiss") {
                dismiss()
            }
        }
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
