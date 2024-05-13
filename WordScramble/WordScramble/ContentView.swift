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
    
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    
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
            .onAppear(perform: startGame)
            .alert(errorTitle, isPresented: $showingError) {
                Button("Ok") {}
            } message: {
                Text(errorMessage)
            }
        }
    }
    
    func addNewWord() {
        // lowercase and trim the word to ensure that we are not adding duplicates with case differences
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        // exit if remaining text is empty
        guard answer.count > 0 else { return }
        
        guard isOriginal(word: answer) else {
            wordError(title: "Word already used", message: "Be more origninal")
            return
        }
        
        guard isPossible(word: answer) else {
            wordError(title: "Word not possible", message: "You can't spell that word from \(rootWord)!")
            return
        }
        
        guard isReal(word: answer) else {
            wordError(title: "Word not recognized", message: "You can't just make them up!")
            return
        }
        
        withAnimation {
            usedWords.insert(answer, at: 0) // inserting at zero makes the new answer appear on top of the list
        }
        
        newWord = ""
    }
    
    func startGame() {
        // 1. Find the url for the start.txt
        if let startWordURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            // 2. Load the start.txt into a string
            if let startWords = try? String(contentsOf: startWordURL) {
                // 3. Split the string into an array of strings
                let allWords = startWords.components(separatedBy: "\n")
                
                // 4. Pick one random word from the array or use "silkworm" as the default
                rootWord = allWords.randomElement() ?? "silkworm"
                
                return
            }
        }
        
        fatalError("Could not load start.txt from the bundle.")
    }
    
    // 1. is the word original
    func isOriginal(word: String) -> Bool {
        !usedWords.contains(word)
    }
    
    // 2. is the word possible
    func isPossible(word: String) -> Bool {
        var tempWord = rootWord
        
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }
        
        return true
    }
    
    // 3. is the word real
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        return misspelledRange.location == NSNotFound
    }
    
    // 4. mehtod to show error messages easier
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        showingError = true
    }
}

#Preview {
    ContentView()
}
