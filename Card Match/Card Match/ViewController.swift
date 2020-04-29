//
//  ViewController.swift
//  Card Match
//
//  Created by Scout Crooke on 4/15/20.
//  Copyright © 2020 Scout Crooke. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var model =  CardModel()
    var cardArray = [Card]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call the getCards method of the card model
        cardArray = model.getCards()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
// https://medium.com/better-programming/building-a-memory-card-game-6513f34dd25c
// https://www.youtube.com/channel/UC2D6eRvCeMtcF5OGHf1-trw

    // MARK: UICollectionView Protocol Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return cardArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Get a CardCollectionViewCell object
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCollectionViewCell
        
        // Get the card that the collection view is trying to display
        let card = cardArray[indexPath.row]
        
        // Set that card for the cell
        cell.setCard(card)
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // Get the cell that the suer selected
        let cell = collectionView.cellForItem(at: indexPath) as! CardCollectionViewCell
        
        // Get the card that the user selected
        let card = cardArray[indexPath.row]
        
        if card.isFlipped == false {
            
            // Flip the card
            cell.flip()
            
            // Set the status of the card
            card.isFlipped = true
            
        }
        else {
            // Flip the card back
            cell.flipBack()
            
            // Set the status of the card
            card.isFlipped = false

        }
        
        
    }
     
} // End ViewController class

