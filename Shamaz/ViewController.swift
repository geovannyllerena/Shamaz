//
//  ViewController.swift
//  Shamaz
//
//  Created by geovanny llerena on 10/04/2019.
//  Copyright © 2019 geovanny llerena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var firstText: UILabel!
    
    
    @IBAction func pastAction() {
       //Initialize Sting and Array
        let mainSentence: String = "What did you do "
        var pastSentence: Array = ["at your birthday 3 years ago?","2 days ago?","3 Months ago?","at uni a week ago?","at work 3 days ago?","at home a day ago?"]
       //Generate the ramdom index to use to form the snetence
        let pastSentenceIndex: Int = Int(arc4random_uniform(UInt32(pastSentence.count)))
        let chosenPastSentence = pastSentence[pastSentenceIndex]
        
        firstText.text = mainSentence + chosenPastSentence
    }
    
    @IBAction func futurePlans() {
        let mainSentence: String = "What are you planing to do "
        var futureSentences: Array = ["next Monday at work?","next weekend?","next summer?","next year?","next holidays?","next Friday night?"]
        let futureSentenceIndex: Int = Int(arc4random_uniform(UInt32(futureSentences.count)))
        let chosenFutureSentence: String = futureSentences[futureSentenceIndex]
        
        firstText.text = mainSentence + chosenFutureSentence
        }
    
   
    @IBAction func nextPlayer() {
        //creates the random number in the label
        let randomNumber: Int = Int.random(in: 1 ..< 11)
        //let randomNumber: Int = Int(arc4random_uniform(UInt32(numberOfPlayers)))
        //
        firstText.text = String (randomNumber)
        
    
    }
    
    
    
}

