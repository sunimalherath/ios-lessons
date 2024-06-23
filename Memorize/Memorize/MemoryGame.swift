//
//  MemoryGame.swift
//  Memorize
//
//  Created by Sunimal Herath on 20/6/2024.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        //
    }
    
    init(numberOfPairsOfCards: Int, createContent: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent // generics
    }
}

struct MG {
    
}
