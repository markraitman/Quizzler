//
//  ViewController.swift
//  Quizzler
//
//  Created by Марк Райтман on 01.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Default Quiz
    //
    //  Question(q: "A slug's blood is green.", a: "True"),
    //        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
    //        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
    //        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
    //        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
    //        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
    //        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
    //        Question(q: "Google was originally called 'Backrub'.", a: "True"),
    //        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
    //        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
    //        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
    //        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    //
    //
    //Multiple Choice Quiz
    //
    // Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
    //        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
    //        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
    //        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
    //        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
    //        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
    //        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
    //        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
    //        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
    //        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    
    //MARK: Properties
    let quiz = [
        Question(q: "True story", a: "True"),
        Question(q: "False story", a: "True"),
        Question(q: "Total b*llshit", a: "False")
    ]
    
    var questionNumber = 0
    
    

    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    //MARK: Outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    //MARK: Actions
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let questionAnswer = sender.currentTitle //String: True or False
        let userAnswer = quiz[questionNumber].answer
        
        if questionAnswer == userAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI()
    }
    
    //MARK: Methods
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber].text
    }
    
}

