//: Playground - noun: a place where people can play

import UIKit


//index 1 2 3 4 5 6 7
//value 1 1 2 3 5 8 13

// f(i) = f(i+1) + f(i+2)

// function computing finonacci number Recursively
func fibonacciNumberRecursive(_ nthNumber: Int) -> Int {
        if nthNumber <= 2 {
            return 1
        }
        return fibonacciNumberRecursive(nthNumber-1) + fibonacciNumberRecursive((nthNumber-2))
}
//testing the above function
fibonacciNumberRecursive(7)


// function computing finonacci number Non-Recursively
func fibonacciNumberNonRecursive(_ nthNumber: Int) -> Int {
    if(nthNumber <= 2){
        return 1
    }
    var fibonacciNumber = 1
    var fibonacciPreviousNumber = 1
    for _ in 3...nthNumber {
        let temp = fibonacciNumber
        fibonacciNumber += fibonacciPreviousNumber
        fibonacciPreviousNumber = temp
    }
    return fibonacciNumber
}
//testing above function
fibonacciNumberNonRecursive(6)
