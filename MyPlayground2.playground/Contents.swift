//https://github.com/AliEsmaeili2

import UIKit
import Foundation
import SafariServices
import WebKit
import SwiftUI

//.....................................................................................L1
print("...............................................................................L1")


var str99 = "Hello, playground"
//var : means Variable and for description Variable
//in var can build variable without write Type of var

var a:Int = 10
//Variable Type of Int

var b : String = "aliEsmaeili"
//Variable Type of String

var c : Float = 22.343
//Variable Type of float

var d : Double = 23.13413
//Variable Type of Double

var e : Character = "S"
//Variable Type of Char

//.....................................................................................L2
print("...............................................................................L2")


var age1 = 27
age1 = Int(29.8)
//this int(x.x) means Extract just int this number ==29

var a3 : Int8 = 127
var a4 : Int = 3100200100
//Int8 -> very short
//Int16 -> short
//int32 -> Medium
//Int64 -> long -> usually use System

var aa = 17
var bb = 6

var z = aa/bb
var zz = Float(aa) / Float(bb)
//for calculating aa/bb to Float(int/int --> Float)

print("this is SIGMA \(aa) / \(bb) --> \(zz)")
//print in ( " X " ) and var in ("\(X)")

//....................................................................................L3
print("...............................................................................L3")


var firstname: String = "Alex"

var lastname = "Hazard"

var Fullname = firstname + " " + lastname
//" Space " mid first and last for beauti String(CODE)


var str1 = "\(firstname) \(lastname) is \(age1) YOld"
//can write var Int and String in one sentnz --> (ali is 24)!


var sen = "help me"

sen.append(" now!")
//Sigma(+) new String End of select String

sen.capitalized
//write first word Capital

sen.uppercased()
//all pf String is Capital

sen.lowercased()
//all of String is small Word

sen.replacingOccurrences(of: "me", with: "Ali")
//change select word to new Word U write (replace)

sen.contains("now")
//contains check select word has Exist is String or No!? (Type of Bool)

sen.contains("swift")
//True - False (Type of Bool)

sen.isEmpty
//isEmpty check Anything Exist in String or No!? (Type of Bool)

//....................................................................................L4
print("...............................................................................L4")


func calcArea ( width : Int , length : Int ) -> Int {
    //func --> function --> nameFunc(x,y) -> Int
    // [-> Int ] for extract Type of function
    
    let area = width * length
    // [let]--> for variable Stable(No change )
    
    return area
    //Extract of Function
}

print ( calcArea (width: 12 , length: 14 ))
//Function call style
//168



func purchase (currentBalance : Double , price: Double ) -> Double {
    //Bulid header of func(-> Double (Type of))
    
    var newBalance : Double = currentBalance
    
    if (price <= currentBalance) {
        //if can have in Bracket or not
        
        print("purchased : $\(price)")
        //print + $price of Item
        
        newBalance = currentBalance - price
        // % of money
        
    }
    
    else {
        //if not currect sts up Else is running
        
        print ("Sorry! you should learn how to save money.")
        
    }
    
    print ("Your account balance is : $ \(newBalance)")
    
    return newBalance
}

var bankAccountBalance = 500.0
var shoesPrice = 280.9

bankAccountBalance = purchase(currentBalance: bankAccountBalance, price: shoesPrice)
//500 - 280.9 = 219.1

bankAccountBalance = purchase(currentBalance: bankAccountBalance, price: 100)
//219.1 - 100 = 119.1

bankAccountBalance = purchase(currentBalance: bankAccountBalance, price: 210)
//119.1 - 210 = Eror! //Print-->  Sorry! you should learn how to save money.

//.....................................................................................L5
print("...............................................................................L5")


var array1 = [Int] ()
//Description array [INt-Double-...]()

// count , initial value

var array2 = [Int](repeating : 500, count : 5)
//number 500 exist to all array homes and count(valaue) of array is 5

// access to element
print("The first element of array is \(array2[0])")
//print arry home [0]=500

var someInts1 = [12, 14, 18, 19, "Gomez"] as [Any]
//this arry can take every variable as a all Type --> as [Any] . but not suitable


var someInts : [Int] = [13, 17, 19]
//arry Type of INt

someInts.count
//for valaue of arry (counter(Nubmer))

someInts.append(21)
// Sigma [21] to End of arry

someInts.count
//update Arry (count of arry)

someInts.remove(at: 2)
//remove aary Home 2 --> 0,1,2 --> means 19

print(someInts)
//print update arry

someInts.remove(at: 2)

print(someInts)

someInts.removeAll()
//remove all data on Arry

print("someInts = \(someInts) and count = \(someInts.count)")
//print arry and count of arry --> [] , 0

var someData : [Int] = [19, 13, 10, 4]
//new arry

print(someData)

someData.removeAll(keepingCapacity: true)
//this command remove data from arry buy saved space of arry home in memory

someData.count

someData.capacity
//value of arry

someInts.capacity

someInts.isEmpty
//this arry Empty or No? (T/F)

someData.isEmpty
//this arry Empty or No? (T/F)

var arrA : [Int] = [12, 18, 20]

var arrB : [Int] = [14, 19]

var arrC : [Int] = arrA + arrB


print(arrC)

arrC += [5, 6, 9, 10]
//Sigma (+) new numbers to arry(End of arry homes)
// += means --> arrC = [5, 6, 9, 10] + arrC

print(arrC)
//just Print arrC

//.....................................................................................L6
print("...............................................................................L6")

// 1 : for-in

var intlist : [Int] = [12, 15, 18, 19, 45, -21]
//arry

for index in intlist {
    // ,for, NAME ,in, NameOfVariable/arry {}
    
    if(index % 3 == 0) {
        // condi  : X/3 = 0
        
        print("\(index) is dividable by 3")
        //dividable == X/Y = 0 ,OK
    }
}

// 2 : for  -> C-style for loop removed in swift 3.0
// for(int i = 0 ; i < 22 ; i++){ ... }


for k in 1...10 {        // ... : inclusive
    //for NAME in range X...Y [1...100]
    
    print("k = \(k)")
}

print("----------------------")

for z in 3..<9{
    //for NAME in X..<Y [3..<9] --> MEANS 3,4,5,6,7,8
    
    print("Z : \(z)")
}

print("----------------------")


// step in for loop

for index in stride(from: 2, to: 31, by: 2){ // exclusive  : index < 30
    //For NAME in [[stride]] (from : X, to: Y, by: Z) --> az:10 , ta: 30 ,Add Ranged (+X) -->[+2] ->(2,4,6,8,...)
    
    print("index : \(index)")
}
print("**************************")

// 3 : while

var score : UInt32 = 0
//UInt32-> 4byti --> and Start(Load) by zero

while score < 200 {
    // this option can Use when dont no range of number...
    
    var rand1 = 1 + arc4random_uniform(6)
    //arc4random_uniform(X) --> random number
    
    score = score + rand1
    //score += rand1
    
    print("score : \(score)")

}

// 4 : repeat-while : do-while

repeat{
    //this TYpe of loop(for) it must be Sure once (1<=X)
    //next run condi of loop (Means Do-while loop in C++ language)
    
}while score < 200

//.....................................................................................L7
print("...............................................................................L7")


//dictionary
var someDict = [Int : String]()
//arry by value

someDict[1] = "one"
someDict[2] = "two"
someDict[10] = "ten"

print(someDict)

someDict.removeValue(forKey: 2)
//this option removeValue of number i select

print(someDict)

someDict.removeAll()
//this arry remove all value

// simple form
// firstname ?
// lastname ?
// age ?
// phone ?
// email ?

// submit -> send to server

var formData = [String: String]()
//this option both factor Type of String

formData["firstname"] = "john"
formData["lastname"] = "Doe"
formData["age"] = "24"
formData["phone"] = "000000"
formData["email"] = "test@test"

print(formData)

// for loop on dictionary

for (key, val) in formData {
    //this loop is take 2 factor -->new!
    
    print("\(key) -> \(val)")
}

//.....................................................................................L8
print("...............................................................................L8")

//this Less for build a variable have not value
var myname : String

//print(myname) : error

var myphone : String? = nil
//nil means Null --> in C++

myphone = "this is a test"

if (myphone != nil) {
    // [X!] --> for compiler undrestand this variable noting value
    
    print("myphone : \(myphone!)")
    // [!]
}

myphone = nil
// null

if let str = myphone {
    //if condi for can print value of Variable
    
    print(str)
}

// prints optional string , if count > 5 character

var str : String?
// [?] --> becuz sting cant dont have value

str = "MohammadMehdi"

//if let temp = str, temp.characters.count > 5{
//    print("str : \(temp)")
//}

class Car {
    
    var model : String?
    
    init() {
        //stract of class
        
        self.model = nil
        //self means the currectly variable (active a variable for use I/O)
    }
}

var mycar : Car?
//use it

mycar = Car()
//build copy of Car

mycar?.model = "FORD F150"
//

if let car = mycar , let model = car.model {
    //
    print("model : \(model)")
}

//.....................................................................................L9-A
print("...............................................................................L9-A")


class Button {
    
    //Build a class
    //CODE
}

var btn = Button()
//(Active class)

class Rectangle {
    
    var width : Double = 0.0
    var height : Double = 0.0
    
    init(width : Double, height : Double) {
        //Stract of class (I/O)
        
        self.width = width
        self.height = height
        //for can use it
    }
    
    func area() -> Double {
        //function name has area and output(return) is Type of Double
        
        return (self.width * self.height)
        //area of RECT
    }
}

var rect1 = Rectangle(width: 4, height: 8)
//use class rect and can write value to this class

print("widht : \(rect1.width) , height : \(rect1.height)")
//print W,H rect by (class.X)

print("rect1.area() : \(rect1.area())")

var rect2 = Rectangle(width: 9, height: 6)

print("rect2.area() : \(rect2.area())")

//.....................................................................................L9-B
print("...............................................................................L9-B")



class Employee {
    //
    
    var name : String = ""
    var empYear : Int
    //
    
    init(name : String, empYear: Int) {
        //
        
        self.name = name
        self.empYear = empYear
    }
    
    var score : Int {
        //
        return Employee.Info.year - self.empYear
        //
    }
    
    func displayInfo(){
        //
        
        print("\(self.name) : \(self.score) ->  salary : \(self.salary) Tomans.")
        //
        
    }
    
    var salary : Int {
        //
        
        return Employee.baseSalary + (self.score * 80_000)
        //
    }
    
    class var baseSalary : Int {
        //
        
        return 1_000_000 + (Info.year - 1000) * 1400
        //
    }
    
    class func newyear(){
        //
        
        Info.year += 1
        //
    }
    
    
    struct Info {
        //
        
        static var year : Int = 1395
        //
    }
}

var emp1 = Employee(name: "Ali", empYear: 1371)
//

var emp2 = Employee(name: "Hamid", empYear: 1380)
//

print("---------------------------")

print("in year \(Employee.Info.year) , baseSalary = \(Employee.baseSalary) Tomans")

emp1.displayInfo()
emp2.displayInfo()

print("---------------------------")

Employee.newyear()

print("in year \(Employee.Info.year) , baseSalary = \(Employee.baseSalary) Tomans")

emp1.displayInfo()
emp2.displayInfo()

print("---------------------------")

Employee.newyear()

print("in year \(Employee.Info.year) , baseSalary = \(Employee.baseSalary) Tomans")

emp1.displayInfo()
emp2.displayInfo()

//.....................................................................................L9-C_1
print("...............................................................................L9-C_1")


//: OOP : Inheritance

class Point2D : CustomStringConvertible{
    //
    var x : Double = 0
    var y : Double = 0
    
    init(x : Double , y : Double) {
        //
        self.x = x
        self.y = y
    }
    
    
    class var origin : Point2D {
        //
        return Point2D(x: 0 , y: 0)
        //
    }
    
    
    func distanceFrom(p : Point2D) -> Double{
        //
        let dx = p.x - self.x
        let dy = p.y - self.y
        
        return sqrt(dx * dx + dy * dy)
        //
    }
    
    func distanceFromOrigin() -> Double {
        //
        return distanceFrom(p: Point2D.origin)
        //
    }
    
    func display() {
        //
        print("( \(self) )")
        //
    }
    
    public var description : String {
        //
        return "\(self.x) , \(self.y)"
        //
    }
}


var p = Point2D(x: 3, y: 5)
//

p.display()

print("distance from (1, -1) : \(p.distanceFrom(p: Point2D(x:1, y:-1)))")
//
print("distance from origin : \(p.distanceFromOrigin())")
//
print(p)

print("---------------------------")


class Point3D : Point2D {
    //
    var z : Double = 0
    
    init(x: Double, y: Double, z : Double) {
        //
        super.init(x: x, y: y)
        //
        self.z = z
    }
    
    convenience init(point2d : Point2D) {
        //
        self.init(x : point2d.x , y : point2d.y, z : 0)
        //
    }
    
    override var description: String {
        //
        return "\(super.description) , \(self.z)"
        //
    }
    
    override class var origin : Point3D {
        //
        return Point3D(x: 0, y: 0, z: 0)
        //
    }
    
    override func distanceFrom(p: Point2D) -> Double {
        //
        return distanceFrom(p3: Point3D(point2d: p))
        //
    }
    
    func distanceFrom(p3: Point3D) -> Double {
        //
        let d2 = super.distanceFrom(p: p3)
        //
        let dz = p3.z - self.z
        
        return sqrt(d2*d2 + dz*dz)
        
    }

}

var p3 : Point3D  = Point3D(x : 6, y : 9, z : 2)
//
p3.display()

print("distance from (2, 8, 5) : \(p3.distanceFrom(p3: Point3D(x:2, y:8, z:5)))")

print("distance from (1, 7) : \(p3.distanceFrom(p: Point2D(x:1, y:7)))")


//.....................................................................................L9-C_2
print("...............................................................................L9-C_2")


class Shape {
    
    func calcArea() -> Double {
        //
        return 0.0
        //
    }
}

class Rectangle1 : Shape {
    
    var width : Double
    var height : Double
    
    init(width : Double, height: Double) {
        
        self.height = height
        self.width = width
    }
    
    override func calcArea() -> Double {
        //
        return self.width * self.height
        //
    }
}


class Triangle : Shape {
    //
    var width : Double
    var heigth : Double
    
    init(width : Double, height: Double){
        
        self.width = width
        self.heigth = height
    }
    
    override func calcArea() -> Double {
        //
        return self.width * self.heigth / 2
        //
    }
}

class Circle : Shape {
    //
    var radius : Double
    
    init(radius : Double){
        
        self.radius = radius
    }
    
    override func calcArea() -> Double {
        //
        
        return Double.pi * self.radius * self.radius
        //
        
    }
}

var rect11 = Rectangle1(width: 19, height: 8)
var triangle1 = Triangle(width: 10, height: 6)
var circle1 = Circle(radius : 8)


print("rectangtle area : \(rect11.calcArea())")
print("triangle  area : \(triangle1.calcArea())")
print("circle area : \(circle1.calcArea())")


//.....................................................................................L9-D
print("...............................................................................L9-D")


//: deinitializer -> deinit function

class PlayGround {
    //
    
    static var totalCoinsInPG : Int = 10_000
    //
    
    static func distribute(numberOfCoinsRequested : Int) -> Int{
        //
        
        let numOfCoins = min(totalCoinsInPG, numberOfCoinsRequested)
        //
        
        totalCoinsInPG -= numOfCoins
        //
        
        return numOfCoins
    }
    
    static func receive(coins : Int){
        //
        
        totalCoinsInPG += coins
        //
        
    }
    
    static func log(){
        //
        
        print("total coins in PlayGround : \(totalCoinsInPG)")
        //
        
    }
    
}

class Player {
    
    var coinsInAccount : Int
    var name : String
    
    init(name : String, coins : Int){
        
        self.name = name
        
        self.coinsInAccount = PlayGround.distribute(numberOfCoinsRequested: coins)
        //
        
        print("\(self.name) has joined the game with \(self.coinsInAccount) coins")
        //
        
        PlayGround.log()
    }
    
    func win(coins : Int){
        //
        
        let winningCoins = PlayGround.distribute(numberOfCoinsRequested: coins)
        //
        
        self.coinsInAccount += winningCoins
        
        print("\(self.name) won \(winningCoins) coins")
        //
        
        PlayGround.log()
        //show Table Score
    }
    
    deinit {
        //for return of calc i do(Deniy)
        
        PlayGround.receive(coins: self.coinsInAccount)
        //
        
        print("\(self.name) has left the game")
        //
        
        PlayGround.log()
    }
}

var p1 : Player? = Player(name : "PlayerA", coins: Int(arc4random_uniform(100)))
var p2 : Player? = Player(name : "PlayerB", coins: Int(arc4random_uniform(100)))
//random Score to player


p1?.win(coins: Int(1001 + arc4random_uniform(1000)))
p2?.win(coins: Int(2501 + arc4random_uniform(1500)))
//random coins to player

p1 = nil
p2 = nil
//delete Acc (left)

p1 = Player(name: "PlayerC", coins: 2100)
p2 = Player(name: "PlayerD", coins: 3000)
//new Player joined the game (new Acc)



//.....................................................................................L10
print("...............................................................................L10")



func prod(a : Int, b : Int) -> Int{
    return a * b
}

func prod(a : Double, b : Double) -> Double {
    return a * b
}

prod(a: 10, b: 12)
prod(a: 11.2, b: 12.3)

//
class ItemHolder<T> {
    var items : [T]
    init(items : [T]) {
        self.items = items
    }
    
    func randomeItem() -> T {
        let index = Int(arc4random_uniform(UInt32(items.count)))
        return items[index]
    }
}


var intarray = [12, 15, 18, -14, 19]

var doublearray = [12.4, 12.7, 10.5, 11, -4.5]

var holder1 = ItemHolder(items : intarray)

print(holder1.randomeItem())

print(holder1.randomeItem())

//

var holder2 = ItemHolder<Double>(items: doublearray)
print(holder2.randomeItem())

//
struct UserInfo {
    var firstname : String
    var lastname : String
    var age : Int
    
    init(_ firstname : String,_ lastname : String,_ age : Int) {
        self.firstname = firstname
        self.lastname = lastname
        self.age = age
    }
}

var users = [UserInfo("Mohammad", "Alizadeh", 24), UserInfo("Hamid", "Aslani", 17),
             UserInfo("Javad", "Ahmadi", 19)]

var holder = ItemHolder(items: users)

print(holder.randomeItem().firstname)


// function

func randomItemFrom<T> (_ items : [T]) -> T {
    let index = Int(arc4random_uniform(UInt32(items.count)))
    return items[index]
}

print("--------------------")
print(randomItemFrom(intarray))
print(randomItemFrom(doublearray))
print(randomItemFrom(users).lastname)


var r44 = readLine()

//print(r44!)


