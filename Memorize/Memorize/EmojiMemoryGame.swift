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
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
