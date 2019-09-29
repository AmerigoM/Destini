//
//  Book.swift
//  Destini
//
//  Created by Amerigo Mancino on 15/12/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Book {
    
    var bookChapters: [Chapter] = [Chapter]()
    
    init() {
        bookChapters.append(Chapter(
            storyP: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".",
            answerAP: "I\'ll hop in. Thanks for the help!",
            answerBP: "Better ask him if he\'s a murderer first."
        ))
        
        bookChapters.append(Chapter(
            storyP: "He nods slowly, unphased by the question.",
            answerAP: "At least he\'s honest. I\'ll climb in.",
            answerBP: "Wait, I know how to change a tire."
        ))
        
        bookChapters.append(Chapter(
            storyP: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            answerAP: "I love Elton John! Hand him the cassette tape.",
            answerBP: "It\'s him or me! You take the knife and stab him."
        ))
        
        bookChapters.append(Chapter(
            storyP: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            answerAP: "",
            answerBP: ""))
        
        bookChapters.append(Chapter(
            storyP: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            answerAP: "",
            answerBP: ""))
        
        bookChapters.append(Chapter(
            storyP: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"",
            answerAP: "",
            answerBP: ""))
    }
    
}
