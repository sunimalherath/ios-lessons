//
//  ButtonsAndImagesView.swift
//  GuessTheFlag
//
//  Created by Sunimal Herath on 10/4/2024.
//

import SwiftUI

struct ButtonsAndImagesView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("Simplest button") {
                print("simplest button pressed")
            }
            Button("Button with func for action", action: takeAction)
            
            Button("Button with Role", role: .destructive, action: takeAction)
            
            Button("Border button") {}
                .buttonStyle(.bordered)
            
            Button("Border with Role", role: .destructive) {}
                .buttonStyle(.bordered)
            
            Button("Border prominent button") {}
                .buttonStyle(.borderedProminent)
            
            Button("Border prominent Role", role: .destructive) {}
                .buttonStyle(.borderedProminent)
            
            Button("Custom colored button") {}
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Text("Don't use too many prominent buttons")
            
            Button {
                print("button tapped")
            } label: {
                Text("Label Closure")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.teal)
            }
            
            Button {
                print("button pressed")
            } label: {
                Image(systemName: "pencil")
            }
            
            Button("Edit", systemImage: "pencil") {
                print("button pressed")
            }
            
            Button {
                print("button pressed")
            } label: {
                Label("Edit", systemImage: "pencil")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
            }
        }
    }
    
    func takeAction() {
        print("taking action for button with func for action")
    }
}

#Preview {
    ButtonsAndImagesView()
}
