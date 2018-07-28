//
//  main.swift
//  Group4_SwiftProject
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//
import Foundation
var aEmp = [Employee]()


// create fulltime
var ft1 = FullTime() // default constructor
ft1.name = "Jaswinder Kaur"
ft1.age = 24
ft1.salary = 50000
ft1.bonus = 2000
var vRef = Vehicle(Type: "Car" ,Make: "Maruti",Model: "111",Color:"Black")
ft1.v = vRef

aEmp.append(ft1)

// create parttime
var pt1 : PartTime

vRef = Vehicle( Type:"Car",Make: "Swift", Model: "222",Color:"Grey")



pt1 = PartTime(ptName: " Jass kaur", ptAge: 10, ptHourlyRate: 100, ptNumberHoursWorked: 2, emppV: vRef)
print(pt1.calcEarnings())
aEmp.append(pt1)


//create intern
vRef = Vehicle(Type:"MotorCycle",Make: "Honda", Model: "2015",Color:"Red")
var it1 = Intern(empName: "Gaurav", empAge: 20, empSchool: "Lambton", emppV: vRef)

aEmp.append(it1)

//create intern

var it2 = Intern(empName: "Ishan", empAge: 18, empSchool: "Lambton School")
aEmp.append(it2)






// calculate payroll
var totalPR : Double = 0.0
var e : Employee

for i in 0..<aEmp.count {
    
    e = aEmp[i]
    let earn = e.calcEarnings()
    
    //    print ("Name: \(e.name)")
    //    print ("Age: \(e.age)")
    print (e.printMyData())
    // display vehicle
    if (e.v == nil) {
        print ("** Employee has not registered any vehicle ***")
    } else  {
        print ("*** Employe has a Vehicle")
        print("Type: \(e.v!.type)")
        print ("Make: \(e.v!.make)")
        print ("Model: \(e.v!.model)")
        print("Color: \(e.v!.color)")
        
    }
    print ("Birth Year: " + String(e.calcBirthYear()))
   print ("Earnings: \(earn.currencyD())")
    print ("**********************")
    
    totalPR = totalPR + earn
}

print ("TOTAL PAYROLL: \(totalPR.currencyD())")


var c1 = Car(cplate : "C0111", ctype : "sports", refvehicle : vRef)

var m1 = Motorcycle(mplate : "C0222", mtype : "Sport", refvehicle : vRef)

var cbpt1 = CommissionBasedPartTime (commission : 10, cbptName: "Jass", cbptAge: 22, cbptHourlyRate: 12, cbptNumberHoursWorked: 10)

print(cbpt1.printMyData())
print("Total salary:",cbpt1.calcEarnings().currencyD())


var aEmp1 = [Employee]()



var vRef1 = Vehicle(Type:"Motorcycle ", Make: "Discover",Model: "111",Color :"Black")




// create parttime
var pt4 : PartTime

vRef1 = Vehicle(Type:"Car",Make: "Swift", Model: "222",Color:"White")



pt4 = PartTime(ptName: "kaur", ptAge: 10, ptHourlyRate: 100, ptNumberHoursWorked: 2, emppV: c1)

aEmp1.append(pt4)

//create intern
vRef1 = Vehicle(Type:"Car",Make: "BMW", Model: "X6",Color :"Blue")
var it4 = Intern(empName: "jjjj", empAge: 15, empSchool: "modern", emppV: m1)

aEmp.append(it4)

//create intern

var it3 = Intern(empName: "jjj", empAge: 15, empSchool: "klk")
aEmp.append(it3)












// calculate payroll
var totalPR1 : Double = 0.0
var e1 : Employee

for i1 in 0..<aEmp1.count {
    
    e1 = aEmp1[i1]
    let earn1 = e1.calcEarnings()
    
    //    print ("Name: \(e.name)")
    //    print ("Age: \(e.age)")
    print (e1.printMyData())
    // display vehicle
    if (e1.v is Car) {
        
        print(e1.v!.printMyData())
        
    } else if(e1.v is Motorcycle)
    {
        
        print (e1.v!.printMyData())
        
    }
    else {
        
        print ("Employee has not registered any vehicle")
    }
    print ("Birth Year: " + String(e1.calcBirthYear()))
    print ("Earnings: \(earn1.currencyD())")
    print ("**********************")
    
    totalPR1 = totalPR1 + earn1
}

print ("TOTAL PAYROLL: \(totalPR1.currencyD())")

