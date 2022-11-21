//
//  QuizBrain.swift
//  QuizzlerApp
//
//  Created by Linas Nutautas on 20/11/2022.
//

import Foundation

struct QuizBrain {
  
  let quiz = [
    Question(q: "A slug's blood is green.", a: "True"),
    Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
    Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
    Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
    Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
    Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
    Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
    Question(q: "Google was originally called 'Backrub'.", a: "True"),
    Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
    Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
    Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
    Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
  ]
  //Tracking question number. It's mean we check which currenty question now user reading
  var questionNumber = 0
  
  //Tracking user score
  var score = 0
  
  //QuizBrain Methods:
  mutating func checkAnswer(userAnswer: String) -> Bool {
    if userAnswer == quiz[questionNumber].answer {
      score += 1
      return true
    } else {
      return false
    }
  }
  
  func getQuestionText() -> String {
    //return from quiz array which now question
    return quiz[questionNumber].text
  }
  
  func getProgress() -> Float {
    //get progress float points for progress bar
    let progress = Float(questionNumber + 1) / Float(quiz.count)
    return progress
  }
  
  //Quiz progression logic for next question and it's goint til the end questions from quiz array
  //mutating - you destroy the old copy and create a new copy encompasses(kuri) the change
  mutating func nextQuestion() {
    if questionNumber + 1 < quiz.count {
      questionNumber += 1
    } else {
      score = 0
      questionNumber = 0
    }
  }
  //return score from variable score
  mutating func getScore() -> Int {
    return score
  }
}
