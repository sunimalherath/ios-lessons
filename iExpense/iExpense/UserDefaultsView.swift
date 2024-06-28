//
//  UserDefaultsView.swift
//  iExpense
//
//  Created by Sunimal Herath on 28/6/2024.
//

import SwiftUI

struct UserDefaultsView: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Taps")
    
    var body: some View {
        Button("Tap Count \(tapCount)") {
            tapCount += 1
            
            UserDefaults.standard.set(tapCount, forKey: "Taps")
        }
    }
}

#Preview {
    UserDefaultsView()
}
