//
//  FullTime.swift
//  Group4_SwiftProject
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

public class FullTime : Employee {
    public var salary : Float
    public var bonus : Float
    
    override init() {
        salary = 0.0
        bonus = 0.0
        super.init();
    }
    
    init(ftName: String, ftAge: Int, ftSalary: Float, ftBonus: Float) {
        salary = ftSalary
        bonus = ftBonus
        super.init(ftName,ftAge)
    }
    
    init(ftName: String, ftAge: Int, ftSalary: Float, ftBonus: Float, emppV: Vehicle) {
        salary = ftSalary
        bonus = ftBonus
        super.init(ftName, ftAge, emppV)
    }
    
    
    override func calcEarnings() -> Double {
        return Double(salary + bonus)
    }
    
    override func printMyData() -> String {
        return  " Employee Is FullTime \n Name : \(name) \t Age : \(age) \t Salary: \(salary.currency()) \t Bonus: \(bonus.currency())"
        
    }
    
    
    
    
}


