    //
//  QuizModel.swift
//  Quiz
//
//  Created by Alexandre Maia on 26/11/2017.
//  Copyright © 2017 Alexandre Maia. All rights reserved.
//

import Foundation
import UIKit
    
class Question {
    var strQuestion : String!
    var imgQuestion : UIImage!
    var answers : [Answer]!
    
    //função que inicializa o objeto da classe Question
    init(question : String, strImageFileName : String, answers : [Answer]) {
        self.strQuestion = question
        self.imgQuestion = UIImage(named: strImageFileName)
        self.answers = answers
    }
}
    
class Answer {
    var strAnswer : String!
    var isCorrect : Bool!
    
    //função que inicializa o objeto da classe Answer
    init(answer : String, isCorrect : Bool) {
        self.strAnswer = answer
        self.isCorrect = isCorrect
    }
}
    

