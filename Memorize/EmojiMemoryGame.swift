//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Zach Ezwawi on 2021-06-01.
//

import SwiftUI



class EmojiMemoryGame {
    
    static let emojis = ["🚲","🚂","🚁","🚜","🚕","🏎","🚑","🚓","🚒","✈️","🚀","⛵️","🛸","🛶","🚌","🏍","🛺","🚠","🛵","🚗","🚚","🚇","🛻","🚝"]
    
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}
