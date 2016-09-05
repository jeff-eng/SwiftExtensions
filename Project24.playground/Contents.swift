// Project 24: Swift Extensions

import UIKit



// extension Int is adding functionality to the Int struct.
extension Int {
    //mutating means it will change the input
    mutating func plusOne() {
        // Here, 'self' refers to the number that called the method
        self += 1
    }
    
    // use of keyword 'static' allows you to extend the data type to include this method
    static func random(min min: Int, max: Int) -> Int {
        if max < min { return min }
        return Int(arc4random_uniform(UInt32((max - min) + 1))) + min
    }
}


var myInt = 0
myInt.plusOne()

//5.plusOne()


var anotherInt = 10
anotherInt.plusOne()
anotherInt

var firstInt = 10
firstInt.plusOne()

//let secondInt = 10
//secondInt.plusOne()
// above example cannot be done because secondInt is a constant and they are immutable

//forcing users to use parameter name for min as well as max by doubling the parameter name
//func RandomInt(min min: Int, max: Int) -> Int {
//    if max < min { return min }
//    return Int(arc4random_uniform(UInt32((max - min) + 1))) + min
//}
//
//RandomInt(min: 1, max: 10)

//use different external parameter names from internal parameter names by specifying them twice
//func RandomInt(minimum min: Int, maximum max: Int) -> Int {
//    if max < min { return min }
//    return Int(arc4random_uniform(UInt32((max - min) + 1))) + min
//}
//
//RandomInt(minimum: 1, maximum: 10)

extension UIColor {
    static func salmonColor() -> UIColor {
        return UIColor(red: 1.00, green: 0.63, blue: 0.48, alpha: 1.0)
    }
}


extension String {
    mutating func trim() {
        self = stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    }
}


































