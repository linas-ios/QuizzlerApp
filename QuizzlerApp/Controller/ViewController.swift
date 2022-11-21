//
//  ViewController.swift
//  QuizzlerApp
//
//  Created by Linas Nutautas on 17/11/2022.
//

//MARK: Internal parameter name we use inside functions
//MARK: External parameter name we user then call functions

import UIKit

class ViewController: UIViewController {
  
  //MARK: Outlets
  
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var trueUIButton: UIButton!
  @IBOutlet weak var falseUIButton: UIButton!
  @IBOutlet weak var progressBar: UIProgressView!
  
  //MARK: Instance of our QuizBrain
  var quizBrain = QuizBrain()

  
  override func viewDidLoad() {
    super.viewDidLoad()
    //Call function updateUI()
    updateUI()
  }
  
  //MARK: Actions
  
  @IBAction func answerButtonTapped(_ sender: UIButton) {
    
    //User answer come from button title
    let userAnswer = sender.currentTitle!
//    let actualAnswer = quiz[questionNumber].answer <-- was before.
    
    //If in my QuizBrain checkAnswer method I add _ before userAnswer, then threre not need to write userAnswer: userAnswer, then jus need to write quizBrain.checkAnswer(userAnswer)
   let userGotRight = quizBrain.checkAnswer(userAnswer: userAnswer)
    
    //We check what user choose and then we show button color green if it was right or red if it was false
    //We can check: quizBrain.checkAnswer(userAnswer: sender.currentTitle!), not need to create new variable userGotRight
    if userGotRight {
      sender.backgroundColor = .green
    } else {
      sender.backgroundColor = .red
    }
    
    quizBrain.nextQuestion()
    
    //Add Timer for delay, because without timer delay, we not see colors (green, red)
    Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    
  }
  
  
  //MARK: Functions
  
 @objc func updateUI() {
   
    //quiz[0], quiz[1], quiz[2] for this we create questionNumber
   questionLabel.text = quizBrain.getQuestionText()
   
   //set background color for buttons clear
   trueUIButton.backgroundColor = .clear
   falseUIButton.backgroundColor = .clear
   
  //add score if correct answer, if not then not add score
   scoreLabel.text = "Score: \(quizBrain.getScore())"
   
   //add progressBar for follow progress
   progressBar.progress = quizBrain.getProgress()
    
  }
  
}

