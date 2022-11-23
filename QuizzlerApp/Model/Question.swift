//
//  Question.swift
//  QuizzlerApp
//
//  Created by Linas Nutautas on 19/11/2022.
//

import Foundation

struct Question {
  let text: String
  let answer: [String]
  let correctAnswer: String
  
  init(q: String, a: [String], correctAnswer: String) {
    self.text = q
    self.answer = a
    self.correctAnswer = correctAnswer
  }
}
