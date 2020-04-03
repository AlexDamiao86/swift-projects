//
//  ViewController.swift
//  Quiz
//
//  Created by Alexandre Maia on 26/11/2017.
//  Copyright © 2017 Alexandre Maia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var imgQuestion: UIImageView!
    @IBOutlet weak var btnAnswer1: UIButton!
    @IBOutlet weak var btnAnswer2: UIButton!
    @IBOutlet weak var btnAnswer3: UIButton!
    @IBOutlet weak var btnAnswer4: UIButton!
    
    @IBOutlet weak var viewFeedback: UIView!
    @IBOutlet weak var lblFeedback: UILabel!
    @IBOutlet weak var btnFeedback: UIButton!
    
    var questions : [Question]!
    var currentQuestion = 0
    var grade = 0.0
    var quizEnded = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let q0answer0 = Answer(answer : "120 anos", isCorrect : true)
        let q0answer1 = Answer(answer : "80 anos", isCorrect : false)
        let q0answer2 = Answer(answer : "140 anos", isCorrect : false)
        let q0answer3 = Answer(answer : "100 anos", isCorrect : false)
        
        let question0 = Question(question : "Quantos anos vive em média um elefante africano?", strImageFileName : "elefante",
            answers : [q0answer0, q0answer1, q0answer2, q0answer3])
        
        let q1answer0 = Answer(answer : "5,5 m", isCorrect : true)
        let q1answer1 = Answer(answer : "3,5 m", isCorrect : false)
        let q1answer2 = Answer(answer : "4,5 m", isCorrect : false)
        let q1answer3 = Answer(answer : "4,0 m", isCorrect : false)

        let question1 = Question(question : "Quantos metros em média possui um girafa adulta?", strImageFileName : "girafa",
            answers : [q1answer0, q1answer1, q1answer2, q1answer3])
        
        let q2answer0 = Answer(answer : "2300 Kg", isCorrect : true)
        let q2answer1 = Answer(answer : "3300 Kg", isCorrect : false)
        let q2answer2 = Answer(answer : "4300 Kg", isCorrect : false)
        let q2answer3 = Answer(answer : "3000 Kg", isCorrect : false)
        
        let question2 = Question(question: "Qual o peso médio de um rinoceronte-branco macho adulto?", strImageFileName:"rinoceronte",
            answers: [q2answer0,q2answer1,q2answer2,q2answer3])
        
        let q3answer0 = Answer(answer : "64 Km/h", isCorrect : true)
        let q3answer1 = Answer(answer : "74 Km/h", isCorrect : false)
        let q3answer2 = Answer(answer : "54 Km/h", isCorrect : false)
        let q3answer3 = Answer(answer : "60 Km/h", isCorrect : false)
        
        let question3 = Question(question: "Qual velocidade uma zebra pode atingir?", strImageFileName: "zebra",
            answers: [q3answer0, q3answer1, q3answer2,q3answer3])
        
        let q4answer0 = Answer(answer : "Nova Zelândia", isCorrect : true)
        let q4answer1 = Answer(answer : "Inglaterra", isCorrect : false)
        let q4answer2 = Answer(answer : "África do Sul", isCorrect : false)
        let q4answer3 = Answer(answer : "Austrália", isCorrect : false)
    
        let question4 = Question(question: "Qual país de origem do bungee-jump?", strImageFileName : "bungeejump",
            answers: [q4answer0, q4answer1, q4answer2, q4answer3])
        
        let q5answer0 = Answer(answer : "Alumínio", isCorrect : true)
        let q5answer1 = Answer(answer : "Cobre", isCorrect : false)
        let q5answer2 = Answer(answer : "Magnésio", isCorrect : false)
        let q5answer3 = Answer(answer : "Enxofre", isCorrect : false)
        
        let question5 = Question(question: "Qual elemento químico caracteriza acidez no solo do cerrado brasileiro?",
            strImageFileName : "cerrado",
            answers: [q5answer0, q5answer1, q5answer2, q5answer3])
        
        let q6answer0 = Answer(answer : "35 Kg", isCorrect : true)
        let q6answer1 = Answer(answer : "40 Kg", isCorrect : false)
        let q6answer2 = Answer(answer : "50 Kg", isCorrect : false)
        let q6answer3 = Answer(answer : "25 Kg", isCorrect : false)
        let question6 = Question(question: "Quantos kilos um leão adulto chega a ingerir de carne em uma refeição?",
            strImageFileName : "leao",
            answers : [q6answer0, q6answer1, q6answer2, q6answer3])

        questions = [question0, question1, question2, question3, question4, question5, question6]
        
        startQuiz()
    }
    
    /* Função que reseta o Quiz */
    func startQuiz() {
        questions.shuffle()
        for i in 0..<questions.count {
            questions[i].answers.shuffle() //embaralha o vetor de respostas para cada questão
        }
        
        //reseta as variáveis de progresso do usuário
        quizEnded = false
        grade = 0.0
        currentQuestion = 0
        
        showQuestion(0) //mostra a primeira questão
    }

    func showQuestion(_ questionId : Int) {
        //Atualiza o label da questão, imagem e texto das 4 respostas
        btnAnswer1.isEnabled = true
        btnAnswer2.isEnabled = true
        btnAnswer3.isEnabled = true
        btnAnswer4.isEnabled = true
        
        lblQuestion.text = questions[questionId].strQuestion
        imgQuestion.image = questions[questionId].imgQuestion
        btnAnswer1.setTitle(questions[questionId].answers[0].strAnswer, for: UIControl.State())
        btnAnswer2.setTitle(questions[questionId].answers[1].strAnswer, for: UIControl.State())
        btnAnswer3.setTitle(questions[questionId].answers[2].strAnswer, for: UIControl.State())
        btnAnswer4.setTitle(questions[questionId].answers[3].strAnswer, for: .normal)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chooseAnswer1(_ sender: Any) {
        selectAnswer(0)
    }
    
    @IBAction func chooseAnswer2(_ sender: Any) {
        selectAnswer(1)
    }
    
    @IBAction func chooseAnswer3(_ sender: Any) {
        selectAnswer(2)
    }
    
    @IBAction func chooseAnswer4(_ sender: Any) {
        selectAnswer(3)
    }
    
    
    
    func selectAnswer(_ answerId : Int) {
        //desabilita botões de alternativa para que não se possa clicar 2 vezes
        btnAnswer1.isEnabled = false
        btnAnswer2.isEnabled = false
        btnAnswer3.isEnabled = false
        btnAnswer4.isEnabled = false
        
        viewFeedback.isHidden = false //mostra view de Feedback
        
        let answer : Answer = questions[currentQuestion].answers[answerId]
        
        if(answer.isCorrect) {
            grade += 1.0
            lblFeedback.text = answer.strAnswer + "\n\nResposta correta!"
        } else {
            lblFeedback.text = answer.strAnswer + "\n\nResposta errada.."
        }
        
        if(currentQuestion < questions.count - 1) {
            //caso a questão atual não seja a última, atualiza o texto do botão feedback para "Próxima"
            btnFeedback.setTitle("Próxima", for: UIControl.State())
        } else {
            //caso a questão atual seja a última, atualiza o texto do botão feedback para "Ver Nota"
            btnFeedback.setTitle("Ver nota", for: UIControl.State())
        }
    }
    
    @IBAction func btnFeedbackAction(_ sender: Any) {
        viewFeedback.isHidden = true //esconde view de Feedback
        
        if(quizEnded) {
            startQuiz() //se Quiz terminou, recomeça
        } else {
            nextQuestion() // se não terminou, mostra próxima questão
        }
    }
    
    func nextQuestion() {
        currentQuestion += 1
        
        if(currentQuestion < questions.count) {
            //se a questão atual é menor que o número total de questões, mostra a próxima
            showQuestion(currentQuestion)
        } else {
            //se a questão atual é igual o número total de questões, termina o quiz
            endQuiz()
        }
    }
    
    func endQuiz() {
        grade = grade / Double(questions.count) * 100.00
        let grade_string:String = String(format: "%.2f", grade)
        quizEnded = true
        viewFeedback.isHidden = false
        lblFeedback.text = "Sua nota: \(grade_string)"
        btnFeedback.setTitle("Refazer", for: .normal)
    }
}

