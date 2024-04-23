//
//  CustomModifierView.swift
//  ViewsAndModifiers
//
//  Created by Sunimal Herath on 23/4/2024.
//

import SwiftUI

struct CustomModifierView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .modifier(Title())
            
            // or can be use with an extension
            
            Text("Hello, Friend!")
                .titleStyle()
            
            // watermark
            Color.blue
                .frame(width: 300, height: 200)
                .watermark(with: "Sunimal Herath")
        }
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.purple)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

// Custom modifier for a watermark
struct Watermark: ViewModifier {
    var text: String // CUSTOM MODIFIERS CAN HAVE THEIR OWN STORED PROPERTIES.
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    // EXTENSIONS TO VIEWS CANNOT HAVE THEIR OWN STORED PROPERTIES.
    func watermark(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

#Preview {
    CustomModifierView()
}
