//
//  PartTime.swift
//  Group4_SwiftProject
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation



public class PartTime: Employee {
    
    public var hourlyRate : Float
    public var numberHoursWorked : Float
    
    override init() {
        hourlyRate = 0.0
        numberHoursWorked = 0.0
        super.init();
    }
    
    init(ptName: String, ptAge: Int, ptHourlyRate:Float, ptNumberHoursWorked: Float) {
        hourlyRate = ptHourlyRate
        numberHoursWorked = ptNumberHoursWorked
        super.init(ptName, ptAge)
    }
    
    init(ptName: String, ptAge: Int, ptHourlyRate: Float, ptNumberHoursWorked: Float, emppV: Vehicle) {
        hourlyRate = ptHourlyRate
        numberHoursWorked = ptNumberHoursWorked
        super.init(ptName, ptAge, emppV)
    }
    
    
    override func calcEarnings() -> Double {
        return Double(numberHoursWorked * hourlyRate)
    }
    
    override func printMyData() -> String {
        //super.printMyData()
        
        if(self is CommissionBasedPartTime){
            
            return "Employee Is PartTime / Commissioned \n Name: \(name) \t Age: \(age) Rate : \(hourlyRate.currency())\t Hours Worked: \(numberHoursWorked)"
        } else {
            
            return "Employee Is PartTime / Fixed Amount \n Name: \(name) \t Age: \(age)\t Rate : \(hourlyRate.currency())\t Hours Worked: \(numberHoursWorked)"
        }
      
    }
    
    
    
    
}
