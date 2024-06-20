//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Sunimal Herath on 20/6/2024.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
        "⚓️"
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
