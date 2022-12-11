import UIKit
import SwiftUI


var greeting = "Hello, playground"
//string

var A = 4;
// int

var b = 5.3
// float

let c = 3
//stable

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

//...............................set

var agesSet = Set(ages)
print(agesSet)
//set will delete Duplicate numbers

agesSet.contains(24)
print(agesSet)
// if 24 exist in arry say true














