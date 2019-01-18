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
    
    func add(lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func add(lhs : [String : Int], rhs : [String: Int]) -> [String: Int] {
        var result : [String : Int] = ["x" : 0, "y" : 0]
        for (axis, value) in lhs {
            result[axis] = value + rhs[axis]!
        }
        return result
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
    
    func subtract(lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    func subtract(lhs : [String : Int], rhs : [String: Int]) -> [String: Int] {
        var result : [String : Int] = ["x" : 0, "y" : 0]
        for (axis, value) in lhs {
            result[axis] = value - rhs[axis]!
        }
        return result
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
    
    func mathOp (lhs : Int, rhs : Int, op : (Int, Int) -> Int) -> Int {
        return Int(op(lhs, rhs))
    }
    
    func mathOp (args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var total = op(beg, args[0])
        for index in 0...(args.count - 2) {
            total = op(total, args[index + 1])
        }
        return total
    }
}
