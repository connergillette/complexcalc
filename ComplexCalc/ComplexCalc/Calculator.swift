//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    func add(lhs : Int, rhs : Int) -> Int {
        return lhs + rhs
    }
    
    func add(_ operands : [Int]) -> Int {
        var count : Int = 0
        for operand in operands {
            count += operand
        }
        return count
    }
    
    func subtract(lhs : Int, rhs : Int) -> Int {
        return lhs - rhs
    }
    
    func subtract(_ operands : [Int]) -> Int {
        var count : Int = 0
        for operand in operands {
            count -= operand
        }
        return count
    }
    
    func multiply(lhs : Int, rhs : Int) -> Int {
        return lhs * rhs
    }
    
    func multiply(_ operands : [Int]) -> Int {
        var count : Int = 1
        for operand in operands {
            count *= operand
        }
        return count
    }
    
    func divide(lhs : Int, rhs : Int) -> Float {
        return Float(lhs) / Float(rhs)
    }
    
    func count(_ values : [Int]) -> Int {
        return values.count
    }
    
    func avg (_ values : [Int]) -> Float {
        return Float(add(values) / values.count)
    }
}
