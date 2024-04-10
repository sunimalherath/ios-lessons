//
//  GradientView.swift
//  GuessTheFlag
//
//  Created by Sunimal Herath on 10/4/2024.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        VStack {
            ZStack {                
                LinearGradient(colors: [.white, .teal], startPoint: .top, endPoint: .bottom)
                Text("LinearGradient with colors")
            }
            ZStack {
                LinearGradient(stops: [
                    .init(color: .white, location: 0.45),
                    .init(color: .indigo, location: 0.55)
                ], startPoint: .top, endPoint: .bottom)
                Text("LinearGradient with stops")
            }
            
            ZStack {
                RadialGradient(colors: [.indigo, .yellow, .green, .blue, .purple, .red], center: .center, startRadius: 20, endRadius: 200)
                Text("RadialGradient")
            }
            
            ZStack {
                AngularGradient(colors: [.red, .yellow, .green, .purple, .red], center: .center)
                Text("AngularGradient")
            }
            Text("The content")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(.white)
                .background(.red.gradient)
        }
    }
}

#Preview {
    GradientView()
}
