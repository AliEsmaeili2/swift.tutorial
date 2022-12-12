
//https://www.youtube.com/watch?v=CwA1VWP0Ldw
import UIKit

//.............................................................Variable

var greeting = "Hello, playground"
//string

var A = 4;
// int

var b = 5.3
// float

let c = 3
//stable

//..............................................................Arry

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

//...............................................................set

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

//........................................................dictionary

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


//........................................................Functions

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

//......................................................................If/else

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

//..............................................................for Loop

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

//........................................................................ENUM





 
