//
//  BotResponse.swift
//  ChatTest
//
//  Created by Federico on 20/11/2021.
//

import Foundation


func getBotResponse(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("Fine and you?") {
        return "good, How can I help you?"
    } else if tempMessage.contains("goodbye") {
        return "Talk to you later!"
    } else if tempMessage.contains("When are you coming?") {
        return "At 6:00 dont woory"
    } else {
        return "ok"
    }
}
