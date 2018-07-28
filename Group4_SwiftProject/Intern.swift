//
//  Intern.swift
//  Group4_SwiftProject
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

public class Intern : Employee {
    public var schoolName : String
    
    override init() {
        schoolName = ""
        super.init()
    }
    
    init(empName: String, empAge: Int, empSchool: String) {
        schoolName = empSchool
        super.init(empName, empAge)
    }
    
    init(empName: String, empAge: Int, empSchool: String, emppV: Vehicle) {
        schoolName = empSchool
        super.init(empName, empAge, emppV)
    }
    
    
    override func printMyData() -> String {
        /* super.printMyData()
         print ("School Name: \(schoolName)")*/
        
        return "Name : \(name) \t Age : \(age) \t School Name : \(schoolName)"
        
    }
    
}

