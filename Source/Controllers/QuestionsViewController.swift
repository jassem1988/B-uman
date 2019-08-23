//
//  QuestionsViewController.swift
//  Be Human
//
//  Created by Jassem Al-Buloushi on 7/23/19.
//  Copyright © 2019 Jassem Al-Buloushi. All rights reserved.
//

import UIKit
import JGProgressHUD

class QuestionsViewController: UIViewController {
    
    //MARK: - Properties: -
    
    //Outlets: -
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var progressContainer: UIView!
    
    //Variables: -
    private let allQuestions = QuestionBank()
    private var pickedAnswer: Bool = false
    private var questionNumber: Int = 0
    private var score: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.sizeToFit()
//        nextQuestion()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //Fix bug: After going back from sources the restart alert will not show up
        nextQuestion()
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
        
        let numberOfQuestions = allQuestions.questionList.count
        
        scoreLabel.text = String(score)
        questionNumberLabel.text = "\(questionNumber + 1) / \(numberOfQuestions)"
        
       
        progressBar.frame.size.width =  (progressContainer.frame.size.width / CGFloat(numberOfQuestions)) * CGFloat(questionNumber + 1)
    
        
        
    }
    
    func nextQuestion() {
        
        if questionNumber <= allQuestions.questionList.count - 1  {
            questionLabel.text = allQuestions.questionList[questionNumber].questionText
            
            updateUI()
            
        } else {
            let ac = UIAlertController(title: "Great!", message: "You finished the quiz, just B-uman", preferredStyle: .alert)
            
            ac.addAction(UIAlertAction(title: "Restart", style: .default, handler: { (action) in
                self.startOver()
            }))
            
            ac.addAction(UIAlertAction(title: "Source", style: .default, handler: { (action) in
                self.performSegue(withIdentifier: "goToSources", sender: self)
            }))
            
            present(ac, animated: true, completion: nil)
            
        }
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.questionList[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            showHUD("Right")
            score += 1
        } else {
            showHUD("Wrong")
        }
        
    }
    
    
    func startOver() {
        
        score = 0
        questionNumber = 0
        nextQuestion()
    }
    

    func showHUD(_ indicator: String) {
        
        let hud = JGProgressHUD(style: .extraLight)
        if indicator == "Right" {
            hud.indicatorView = JGProgressHUDSuccessIndicatorView.init()
            hud.textLabel.text = indicator
        } else if indicator == "Wrong" {
            hud.indicatorView = JGProgressHUDErrorIndicatorView.init()
            hud.textLabel.text = indicator
        }
        
//        hud.parallaxMode = .alwaysOff
        hud.vibrancyEnabled = true
        hud.show(in: self.view)
        hud.dismiss(afterDelay: 1.0)
        
    }
    
    
    
    

}
