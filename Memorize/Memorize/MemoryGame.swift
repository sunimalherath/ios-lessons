//
//  MemoryGame.swift
//  Memorize
//
//  Created by Sunimal Herath on 20/6/2024.
//

import Foundation

struct MemoryGame<CardContent> {
    var Cards: Array<Card>
    
    func choose(_ card: Card) {
        //
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent // generics
    }
}
