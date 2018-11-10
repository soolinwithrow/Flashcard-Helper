//
//  CreationViewController.swift
//  Flashcard Helper
//
//  Created by soolin withrow on 10/31/18.
//  Copyright © 2018 soolin withrow. All rights reserved.
//
import UIKit

class CreationViewController: UIViewController {
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    var flashcardsController: ViewController!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func DidTaponCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
    @IBAction func DidTaponDone(_ sender: Any) {
        // Get the text in the question text field
        let questionText = questionTextField.text
        //get the text in the answer text field
        let answerText = answerTextField.text
        //Call the function to update the flashcard
       flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)
        //Dismiss
        dismiss(animated: true)
        
    }
}
