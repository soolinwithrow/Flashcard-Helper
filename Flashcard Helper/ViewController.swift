//
//  ViewController.swift
//  Flashcard Helper
//
//  Created by soolin withrow on 10/13/18.
//  Copyright © 2018 soolin withrow. All rights reserved.
//

import UIKit

struct Flashcard{
    var question: String
    var answer: String
}

class ViewController: UIViewController {
    @IBOutlet weak var frontLabel:UILabel!
    @IBOutlet weak var backLabel: UILabel!
    //Array to hold our flashcards
    var flashcards = [Flashcard]()
    //Current flashcard index
    var currentIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateFlashcard(question: "Who was the second President of the US?", answer: "John Adams")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func DidTapLabel(_ sender: Any) {
        
        frontLabel.isHidden = true 
    }
    
    
    func updateFlashcard(question:String,answer:String){
        let flashcard = Flashcard(question: question, answer: answer)
        frontLabel.text = flashcard.question
        backLabel.text = flashcard.answer
        frontLabel.isHidden = false
        //Adding flashcard in the flashcards array
        flashcards.append(flashcard)
        //Logging to the console
        print("Added new flashcard")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        creationController.flashcardsController = self}
    
}
