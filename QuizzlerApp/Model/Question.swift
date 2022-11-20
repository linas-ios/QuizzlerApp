//
//  Question.swift
//  QuizzlerApp
//
//  Created by Linas Nutautas on 19/11/2022.
//

import Foundation

struct Question {
  let text: String
  let answer: String
  
  init(q: String, a: String) {
    self.text = q
    self.answer = a
  }
}
