//
//  CardModel.swift
//  Card Match
//
//  Created by Scout Crooke on 4/16/20.
//  Copyright © 2020 Scout Crooke. All rights reserved.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        //https://medium.com/better-programming/building-a-memory-card-game-6513f34dd25c
        //Declare an array to store the generated cards
        var generatedCardsArray = [Card]()
        
        //Randomly generate pairs fo cards
        for _ in 1...8 {
            
            //Get a random number
            let randomNumber = arc4random_uniform(13) + 1
            
            //Log the number
            print(randomNumber)
            
            //Create the first card object
            let cardOne = Card()
            cardOne.imageName = "card\(randomNumber)"
            
            generatedCardsArray.append(cardOne)
            
            //Create the second card object
            let cardTwo = Card()
            cardTwo.imageName = "card\(randomNumber)"
            
            generatedCardsArray.append(cardTwo)
            
            //OPTIONAL: Make it so we only have unique pairs of cards
            
        }
        
        //TODO: Randomize the array
        
        
        //Return the arry
        return generatedCardsArray
    }
    
}
