//
//  ContentView.swift
//  Moonshot
//
//  Created by Sunimal Herath on 7/7/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
        let missions: [Mission] = Bundle.main.decode("missions.json")
        
        let columns = [
            GridItem(.adaptive(minimum: 150))
        ]
        
        VStack {
            NavigationStack {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(missions) { mission in
                            NavigationLink {
                                Text("Detail View")
                            } label: {
                                VStack {
                                    Image(mission.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                    VStack {
                                        Text(mission.displayName)
                                            .font(.headline)
                                        Text(mission.formattedLaunchDate)
                                            .font(.caption)
                                    }
                                    .frame(maxWidth: .infinity)
                                }
                            }
                        }
                    }
                }
                .navigationTitle("Moonshot")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
