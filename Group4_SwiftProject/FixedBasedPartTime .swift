//
//  FixedBasedPartTime .swift
//  Group4_SwiftProject
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class FixedBasedPartTime : PartTime {
    
    var FixedAmount : Double
    
    override init() {
        
        FixedAmount = 0.00
        super.init()
        
    }
    
    init(FixedAmount : Double, fbptName: String, fbptAge: Int, fbptHourlyRate: Float, fbptNumberHoursWorked: Float) {
        
        self.FixedAmount = FixedAmount
        
        super.init(ptName: fbptName, ptAge: fbptAge, ptHourlyRate: fbptHourlyRate, ptNumberHoursWorked: fbptNumberHoursWorked)
        
    }
    
    init(FixedAmount : Double,fbptName: String, fbptAge: Int, fbptHourlyRate: Float, fbptNumberHoursWorked: Float, emppV: Vehicle) {
        
        self.FixedAmount = FixedAmount
        
        super.init(ptName: fbptName, ptAge: fbptAge, ptHourlyRate: fbptHourlyRate, ptNumberHoursWorked: fbptNumberHoursWorked, emppV: emppV)
        
    }
    
    
    override func calcEarnings() -> Double {
        return (Double(numberHoursWorked * hourlyRate) + FixedAmount)
    }
    
    override func printMyData() -> String {
        
        return "Amount Fixed : \(FixedAmount)"
        
    }
    
}


