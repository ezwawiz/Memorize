//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Zach Ezwawi on 2021-06-01.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚲","🚂","🚁","🚜","🚕","🏎","🚑","🚓","🚒","✈️","🚀","⛵️","🛸","🛶","🚌","🏍","🛺","🚠","🛵","🚗","🚚","🚇","🛻","🚝"]
    
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 6) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
        
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
}
