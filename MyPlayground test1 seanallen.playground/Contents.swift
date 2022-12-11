import UIKit
import MapKit

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

var weree = 6



















