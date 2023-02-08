// - MARK: https://www.youtube.com/watch?v=CwA1VWP0Ldw

import UIKit
import Foundation

// - MARK: Variable

var greeting = "Hello, playground"
//string

var A = 4;
// int

var b = 5.3
// float

let c = 3
//stable

// - MARK: Array

var ages = [23, 24, 45, 22, 66, 24]
//arry
 
ages.count
//counter

ages.first
//1's of list arry

ages.last
//end's of list arry

ages[3]
//

ages.append(99)
print(ages)
//add to end of arry (X number)

ages.insert(77, at: 0)
print(ages)
// add to index:0 -> 77

ages.sort()
print(ages)
//small to large

ages.reverse()
print(ages)
// large to small


ages.shuffle()
print(ages)
// random

// - MARK: Set

var agesSet = Set(ages)
print(agesSet)
//set will delete Duplicate numbers

agesSet.contains(29)
print(agesSet)
// if 24 exist in arry say true


agesSet.contains(88)
print(agesSet)
agesSet.insert(88)
// add to arry
agesSet.contains(88)
print(agesSet)

// - MARK: dictionary

let devices : [String : String] = [
     
    "phone": "iphone 7",
    "laptop": "MacBookPro 2019",
    "watch": "SE Nike 2021"
    ]
//constant time
devices["laptop"]
devices["phone"]
devices["watch"]


print(devices)


// - MARK: Functions

func test1() {
    
print("hello iran")

}
test1()
//call function and print 'X';

func test2(name: String){
    
    print(name)
}
test2(name: "specialized")
//call Function by define variable and print 'X'

func addTest(firstNumber: Int, secondNumber: Int) -> Int {
    
    let sum = firstNumber + secondNumber;
    return sum
    
}
print(addTest(firstNumber: 45, secondNumber: 50))
//call and print funtion : defined 2 variable's of Int and the Output of this funtions is Int type.

// - MARK: If/else

//if this then that

var cheking = true

if (cheking == true) {
    
    print("value of this Var is True")
}
//........

var cheking1 = false

if cheking1 {
    
    print("value of this Var is True")
    
} else {
    
    print("value of this Var is False")
}
//another way

var myScore = 20
var yourScore = 15

if myScore > yourScore {
    
    print("I win")
    
} else {
    
    print("U win")
}
//check lower or higher Score

var myScore1 = 9

if myScore1 > 18 {
    
    print("Best")
    
} else if myScore1 > 10 {
    
    print("good")
} else {
    
    print("noob")
}

// - MARK: for Loop

let allStars = ["ali", "hasan", "ferry", "terry"]

for players in allStars {
    
    print(players)
}
 //

let allStars1 = ["ali", "hasan", "ferry", "terry"]

for players1 in allStars1 where players1 == "hasan" {
    
    print(players1)
}
//when find "X" print it

for i in 1...20 {
    
    print(i)
}
// for on range 1,2,3...,20 print it

var randomInts: [Int] = []

for _ in 0...15 {
    
    let randomNumber = Int.random(in: 1...100)
    randomInts.append(randomNumber)
    
}
    print(randomInts)
// for for random numbers and print 15times numbers of range 1...100

// - MARK: ENUM

enum Phone {
    
    case Apple
    case Nokia
    case Samsung
    case Xiaomi
}

func phoneTypes (on phone1: Phone) {
    
    if phone1 == .Samsung {

        print("Android phone")
        
    } else if phone1 == .Nokia {
        
        print("Strong phone")
        
    } else if phone1 == .Apple {
        
    print("Great phone")
        
    } else {
        
    print("bad phone")
    }
}

phoneTypes(on: .Apple)
phoneTypes(on: .Nokia)

//......................................

enum Phone2: String {
    
    case Apple = "Great phone"
    case Nokia = "Strong phone"
    case Samsung = "Android phone"
    case Xiaomi = "Bad phone"
}

func phoneTypes1 (on phone3: Phone2) {
    
    print(phone3.rawValue)
}

phoneTypes1(on: .Samsung)
phoneTypes1(on: .Xiaomi)

//
// - MARK: Switch

let Score11 = 555

func scoreLeague (from rank: Int) {
    
    
    switch rank {
        
    case 0: print("you dont have any ranks")
        
    case 50..<100: print("you are in BRONZE League")
        
    case 100..<200: print("you are in SILVER League")
        
    case 200..<300: print("you are in GOLD League")
        
    default: print("we don't know where are U...!?")
    }
}

print (scoreLeague(from: Score11))
//switch

// - MARK: Operators

let value1 = 55
let value2 = 88

let value3: Double = 55
let value4: Double = 88

let sum1 = value1 + value2
print(sum1)

let sum2 = value1 - value2
print(sum2)

let sum3 = value1 * value2
print(sum3)

let sum4 = value3 / value4
print(sum4)

let sum5 = value1 % value2
print(sum5)

value1 == value2
//false

value1 != value2
//True (Bang operator)

var isDarkModeOn = false

if !isDarkModeOn {
    
    print("Dark mode OFF")
}

if value1 == value2 || !isDarkModeOn {
    
    print("both value equal and dark mode OFF")
}

var firstS1 = "Hi"
var firstS2 = "Swift"

print(firstS1 + " " + firstS2)

var agesYoung = [22, 44, 55]
var agesOld = [77, 88]

print(agesYoung + agesOld)

// - MARK: Optionals

var ages1 = [231, 23, 345, 35 ,657 ,65, 224, 465]
ages1.sort()
 
var oldAges1 = ages1.last
//print(oldAges1)

let ages2: [Int] = []
//let oldAges2 = ages2.last
//print(oldAges2)

if let oldAges2 = ages2.last{
    
    print("the oldest ages is \(oldAges2)")
}else {
    
    print("there is no oldest ages")
}

//guard Statement

func getOldAges1() {
    
    guard let oldAges3 = ages1.last else {
        return
    }
    
    print("\(oldAges3) is the oldest age")
    //code ...
}

getOldAges1();

// - MARK: Class

class Developer {
    
    var name1: String
    var job1: String
    var yearsExp: Int
    
    init(name1: String, job1: String, yearsExp: Int){
        
        self.name1    = name1
        self.job1     = job1
        self.yearsExp = yearsExp
    }
    
    //codes...
    
    func callName() {
        
        print(name1)
    }
     
}

let ali = Developer (name1: "ALI", job1: "IOS_Developer", yearsExp: 1)

ali.name1
ali.job1
ali.yearsExp

print(ali.name1,ali.job1,ali.yearsExp)
    //ali.callName()

class Developer1 {
    
    var name2: String?
    var job2: String?
    var yearsExp1: Int?
    
    init(){
        
    }
    //codes...
}

let esmaeili = Developer1()

esmaeili.name2 = "haj Ali"
esmaeili.job2  = "Coder"
esmaeili.yearsExp1 = 3

//print(esmaeili.name2)

// - MARK: Inheritance


class IOSDeveloper: Developer {
    
    var favoriteFramework : String?
    
    func callFavoriteFramework() {
        
        if let favoriteFramework = favoriteFramework {
            
            print(favoriteFramework)
        
        } else {
            print("NO favorite Framework")
        }
    }
    
    override func callName() {
        
        print("\(name1) - \(job1)")
    }
}

let ali3 = IOSDeveloper(name1: "ALI", job1: "IOS_Developer", yearsExp: 1)


ali3.favoriteFramework = "UIKit"

ali3.callFavoriteFramework()

ali3.callName()
//print(ali3.callName())

// - MARK: Struct

struct Developer3 {
    //memberWise initializer
    
    var name3: String
    var job3: String
    var yearsExp3: Int
    
}

var ali4 = Developer3(name3: "ferry", job3: "carry", yearsExp3: 3)

var joe = ali4

joe.name3 = "hasan"

ali4.name3

// - MARK: Extention

extension String {
    
    func remove1() -> String {
        
        //function of remove white Spaces
        return components(separatedBy: .whitespaces).joined()
    }
}

let alphabet = "A B C D"
print(alphabet.remove1())

// - MARK: FIZZBUZZ

// for numbers divisible by 3, print "FIZZ"
// for numbers divisible by 5, print "BUZZ"
// for numbers divisible by 3 & 5 (like the number 15), print "FIZZBUZZ!"

func RunFizzBuzz() {
    
    for i in 1...100 {
    
        if (i % 3 == 0 && i % 5 == 0) {
            
        print("FIZZBUZZ! \(i)")
            
        }
        else if (i % 3 == 0){
            
            print("FIZZ! \(i)")
            
        }
        else if (i % 5 == 0) {
            
            print("BUZZ! \(i)")
            
        }
        else {
        
            print(i)
            
            }
        }
    }

RunFizzBuzz()

// - MARK: Filter - Map - Reduce

//Filter
var array1 = [1, 2, 3, 5, 12 ,100 ,1234, 17, 12]

print("Before: \(array1)")

array1 = array1.filter({ return $0 % 2 == 0})
//filter if x % 2 == 0 and Return
print("After: \(array1)")

//Map
var array2 = [1, 2, 3, 5, 12 ,100 ,1234, 17, 12]

print("Before: \(array2)")

array2 = array2.map({ $0 * 2 })
//use * 2 for all parts of array (and Return)
print("After: \(array2)")

//Reduce

var array3 = [1, 2, 3, 5, 12 ,100 ,1234, 17, 12]

print("Before: \(array3)")


let result3 = array3.reduce(0, {runningSum, value in runningSum + value})
//sum all of parts of array (and Return)
print("After: \(result3)")
