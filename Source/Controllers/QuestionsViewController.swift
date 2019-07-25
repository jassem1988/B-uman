//
//  QuestionsViewController.swift
//  Be Human
//
//  Created by Jassem Al-Buloushi on 7/23/19.
//  Copyright © 2019 Jassem Al-Buloushi. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    //Properties: -
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstQuestion = allQuestions.questionList[0]
        questionLabel.text = firstQuestion.questionText
    }
    
    
    //MARK: - My Own Methods
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber += 1
        
        nextQuestion()
        
    }
    
    
    func updateUI() {
        
        
        
    }
    
    func nextQuestion() {
        
        if questionNumber <= allQuestions.questionList.count - 1  {
            questionLabel.text = allQuestions.questionList[questionNumber].questionText
        } else {
            let ac = UIAlertController(title: "Great!", message: "You finished the quiz, just B-uman", preferredStyle: .alert)
            
            ac.addAction(UIAlertAction(title: "Restart", style: .default, handler: { (action) in
                self.startOver()
            }))
            
            present(ac, animated: true, completion: nil)
            
        }
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.questionList[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            print("you are right")
        } else {
            print("you are wrong")
        }
        
    }
    
    
    func startOver() {
        
        questionNumber = 0
        nextQuestion() 
    }
    

    
    
    

}
