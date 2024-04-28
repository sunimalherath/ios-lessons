//
//  DateComponent.swift
//  BetterRest
//
//  Created by Sunimal Herath on 28/4/2024.
//

import SwiftUI

struct DateComponent: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("\(exampleDate())")
            
            Text(Date.now.formatted(date: .long, time: .shortened))
        }
    }
    
    func exampleDate() -> Date {
        var comps = DateComponents()
        comps.hour = 8
        comps.minute = 0
        return Calendar.current.date(from: comps) ?? .now
    }
    
    func extranctComponents() {
        let comps = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hours = comps.hour ?? 0
        let minutes = comps.minute ?? 0
    }
}

#Preview {
    DateComponent()
}
