//
//  ViewController.swift
//  QuizzlerApp
//
//  Created by Linas Nutautas on 17/11/2022.
//

import UIKit

class ViewController: UIViewController {
  
  //MARK: Outlets
  
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var trueUIButton: UIButton!
  @IBOutlet weak var falseUIButton: UIButton!
  
  //MARK: Properties
  
  let quiz = [
    ["For + Two is equal to Six True", "True"],
    ["Five - Three is greater than One", "True"],
    ["Three + Eight is less than Ten", "False"]
  ]
  //Tracking question number. It's mean we check which currenty question now user reading
  var questionNumber = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
  }

  //MARK: Actions
  
  @IBAction func answerButtonTapped(_ sender: UIButton) {
    questionNumber += 1
    updateUI()
  }
  
  //MARK: Functions
  
  func updateUI() {
    //quiz[0], quiz[1], quiz[2] for this we create questionNumber
    questionLabel.text = quiz[questionNumber]
  }
  
}

