//
//  AlertView.swift
//  GuessTheFlag
//
//  Created by Sunimal Herath on 10/4/2024.
//

import SwiftUI

struct AlertView: View {
    @State private var showingAlert = false
    @State private var showingTwoBtnAlert = false
    @State private var showingAlertWithMsg = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Show Alert") {
                showingAlert = true
            }
            .alert("Important Message", isPresented: $showingAlert) {
                Button("Ok") {}
            }
            
            Button("Two button alert") {
                showingTwoBtnAlert = true
            }
            .alert("Another Message", isPresented: $showingTwoBtnAlert) {
                Button("Delete", role: .destructive) {}
                Button("Cancel", role: .cancel) {}
            }
            
            Button("Alert with message") {
                showingAlertWithMsg = true
            }
            .alert("Yet Another Message", isPresented: $showingAlertWithMsg) {
                Button("Cancel", role: .cancel) {}
            } message: {
                Text("Read the message please.")
            }
        }
    }
}

#Preview {
    AlertView()
}
