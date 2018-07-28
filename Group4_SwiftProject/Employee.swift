//
//  Employee.swift
//  Group4_SwiftProject
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

extension Float
{
    func currency1() -> String
    {
        return "$ \(self)"
    }}

public class Employee : IPrintable
    
{
    public var name: String
    public var  age: Int
    public var v: Vehicle?
    
    init() {
        name = ""
        age = 0
        v = nil
    }
    
    init (_ empName: String,_ empAge: Int) {
        name = empName
        age = empAge
        v = nil
    }
    
    init (_ empName: String,_ empAge: Int, _ empV: Vehicle) {
        name = empName
        age = empAge
        v = empV
    }
    
    
    func calcBirthYear() -> Int {
        return (2017 - self.age)
    }
    
    func calcEarnings() -> Double {
        return 1000.00
    }
    
    func printMyData() -> String {
        
        return "Name: \(name) \t Age: \(age)"
        
        
    }
    
    
}



