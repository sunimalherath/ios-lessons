//
//  ContentView.swift
//  WordScramble
//
//  Created by Sunimal Herath on 8/5/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Enter your word", text: $newWord)
                        .textInputAutocapitalization(.never)
                }
                
                Section {
                    ForEach(usedWords, id: \.self) { word in
                        HStack {
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                    }
                }
            }
            .navigationTitle(rootWord)
            .onSubmit(addNewWord)
        }
    }
    
    func addNewWord() {
        // lowercase and trim the word to ensure that we are not adding duplicates with case differences
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        // exit if remaining text is empty
        guard answer.count > 0 else { return }
        
        // extra validation todo
        
        withAnimation {
            usedWords.insert(answer, at: 0) // inserting at zero makes the new answer appear on top of the list
        }
        
        newWord = ""
    }
}

#Preview {
    ContentView()
}
