//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Zach Ezwawi on 2021-05-27.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
