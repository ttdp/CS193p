//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Tian Tong on 7/21/20.
//  Copyright © 2020 TTDP. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: [MemoryGame<String>.Card] {
        model.cards
    }
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🤡", "🎃"]
        return MemoryGame(numberOfPairsOfCards: emojis.count) { emojis[$0] }
    }
    
    // MARK: - Intent
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}
