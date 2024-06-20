//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Sunimal Herath on 20/6/2024.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["🚗", "🚀", "✈️", "🚌", "⛴️", "🚁", "🚣‍♂️", "🚴‍♂️", "🚢", "🚊", "🚡", "🛩️", "🛻", "🛵", "🚎", "🏎️", "🚓", "🚒", "🛸", "🛰️", "🚔", "🚘"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex] // don't need to use EmojiMemoryGame.emojis[pairIndex] in here.
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame() // don't need to use EmojiMemoryGame.createMemoryGame() in here.
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
