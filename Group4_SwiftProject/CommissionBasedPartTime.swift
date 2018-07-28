//
//  CommissionBasedPartTime.swift
//  Group4_SwiftProject
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class CommissionBasedPartTime : PartTime {
    
    var CommissionPerc : Double
    
    
    override init() {
        
        CommissionPerc = 0.00
        super.init()
        
    }
    
    init(commission : Double, cbptName: String, cbptAge: Int, cbptHourlyRate: Float, cbptNumberHoursWorked: Float) {
        
        self.CommissionPerc = commission
        
        super.init(ptName: cbptName, ptAge: cbptAge, ptHourlyRate: cbptHourlyRate, ptNumberHoursWorked: cbptNumberHoursWorked)
        
    }
    
    init(commission : Double, cbptName: String, cbptAge: Int, cbptHourlyRate: Float, cbptNumberHoursWorked: Float, emppV: Vehicle) {
        
        self.CommissionPerc = commission
        
        super.init(ptName: cbptName, ptAge: cbptAge, ptHourlyRate: cbptHourlyRate, ptNumberHoursWorked: cbptNumberHoursWorked, emppV: emppV)
        
    }
    
    
    override func calcEarnings() -> Double {
        return (Double(numberHoursWorked * hourlyRate) + CommissionPerc) // commision perc=percentage
    }
    
    override func printMyData() -> String{
        
        //super.printMyData()
        
        
        
        return "Name : \(name) \t Age : \(age) \t Number of Hours: \(numberHoursWorked) \t Hourly rate : \(hourlyRate) \t Commission : \(CommissionPerc)"
       
        
    }
 
    
}




