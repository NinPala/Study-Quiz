//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "ナメクジの血液は緑色である。", a: "○"),
        Question(q: "人間の骨の約四分の一は足にある。", a: "○"),
        Question(q: "2つの肺の総表面積は約70平方メートルである。", a: "○"),
        Question(q: "アメリカ・ウェストバージニア州では、車で動物を偶然 atropello しても、それを家に持ち帰って食べることができる。", a: "○"),
        Question(q: "イギリス・ロンドンの議会議事堂で死亡した場合、建物があまりにも神聖な場所と考えられているため、理論上は国葬に適格である。", a: "×"),
        Question(q: "ポルトガルでは海でおしっこをすることは違法である。", a: "○"),
        Question(q: "牛を階段を下ろすことはできますが、階段を上ることはできません。", a: "×"),
        Question(q: "Googleの元の名前は「バックラブ」であった。", a: "○"),
        Question(q: "バズ・オルドリンの母親の旧姓は「ムーン」であった。", a: "○"),
        Question(q: "どの動物が発する音でも最も大きなものは188デシベルであり、それはアフリカゾウである。", a: "×"),
        Question(q: "正方形の乾いた紙は7回より多く折り畳むことはできない。", a: "×"),
        Question(q: "チョコレートは犬の心臓と神経系に影響を与え、数オンスで小型犬を殺すのに十分である。", a: "○")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

