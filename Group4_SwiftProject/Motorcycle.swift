//
//  Motorcycle.swift
//  Group4_SwiftProject
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Motorcycle : Vehicle {
    
    var numberplate : String
    var motorcycletype : String
    
    
    override init()
    {
        
        numberplate = ""
        motorcycletype = ""
        super.init()
        
    }
    
    init(mplate : String, mtype : String, refvehicle : Vehicle)
    {
        
        self.numberplate = mplate
        self.motorcycletype = mtype
        
        super.init(Type:refvehicle.type,Make: refvehicle.make, Model: refvehicle.model ,Color :refvehicle.color)
        
    }
    
    init(mplate : String, mtype : String,type:String, make : String, model : String ,color :String)
    {
        
        self.numberplate = mplate
        self.motorcycletype = mtype
        
        super.init(Type: type,Make: make, Model: model, Color : color)
        
    }
    
    
    override func printMyData() -> String
    {
        
        return " - Make : \(make) \t - Model : \(model) \t - Color : \(color)  \t - Plate : \(numberplate) \t - Type : \(motorcycletype)"
        
    }
    
}

