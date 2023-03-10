//
//  DataStruct.swift
//  KidsCount
//
//  Created by Stanislav Testov on 31.10.2022.
//

import Foundation

struct NumbersData {
    var firstNumber = 0
    var secondNumber = 0
    
    var rightAnswer: Int = 0
    
    var operation: Operations = Operations.plus
    
    var answers = [Int]()
    
    mutating func rightAnswerCount(firstNumber: Int, secondNumber: Int, operation: Operations) {
        var answer: Int
        
        switch operation {
        case .plus:
            answer = firstNumber + secondNumber
        case .minus:
            answer = firstNumber - secondNumber
        }
        
        rightAnswer = answer
        
        answers.append(answer)
        
    }
    
    mutating func wrongAnswerOne(firstNumber: Int, secondNumber: Int, operation: Operations) {
        var answer: Int
        
        switch operation {
        case .plus:
            answer = firstNumber + secondNumber
        case .minus:
            answer = firstNumber - secondNumber
        }
        
        answer += 1
        answers.append(answer)
    }
    
    mutating func wrongAnswerTwo(firstNumber: Int, secondNumber: Int, operation: Operations) {
        var answer: Int
        
        switch operation {
        case .plus:
            answer = firstNumber + secondNumber
        case .minus:
            answer = firstNumber - secondNumber
        }
        
        answer -= 1
        answers.append(answer)
    }
    
    mutating func wrongAnswerThree(firstNumber: Int, secondNumber: Int, operation: Operations) {
        var answer: Int
        
        switch operation {
        case .plus:
            answer = firstNumber + secondNumber
        case .minus:
            answer = firstNumber - secondNumber
        }
        
        answer += 2
        answers.append(answer)
    }
    
    mutating func generateOperation() {
        operation = Operations.allCases.randomElement() ?? Operations.plus
    }
    
    mutating func generateNumbers() {
        
        firstNumber = Int.random(in: 1...10)
        secondNumber = Int.random(in: 1...10)
        
    }
    
    mutating func generateData() {
        
        generateOperation()

        if operation == .plus {
            repeat {
                generateNumbers()
            } while firstNumber + secondNumber <= 10
        } else if operation == .minus {
            repeat {
                generateNumbers()
            } while firstNumber - secondNumber >= 0
        }
        
        rightAnswerCount(firstNumber: firstNumber, secondNumber: secondNumber, operation: operation)
        wrongAnswerOne(firstNumber: firstNumber, secondNumber: secondNumber, operation: operation)
        wrongAnswerTwo(firstNumber: firstNumber, secondNumber: secondNumber, operation: operation)
        wrongAnswerThree(firstNumber: firstNumber, secondNumber: secondNumber, operation: operation)
        
    }
}
