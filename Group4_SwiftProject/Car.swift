//
//  Car.swift
//  Group4_SwiftProject
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

public class Car : Vehicle {
    
    var carplate : String
    var cartype : String
    
    override init()
    {
        carplate = ""
        cartype = ""
        super.init()
        
    }
    
    init(cplate : String, ctype : String, refvehicle : Vehicle)
    {
        
        self.carplate = cplate
        self.cartype = ctype
        
        super.init(Type:refvehicle.type,Make: refvehicle.make, Model: refvehicle.model ,Color :refvehicle.color)
        
    }
    
    init(cplate : String, ctype : String,type:String, make : String, model : String ,color :String)
    {
        
        self.carplate = cplate
        self.cartype = ctype
        
        super.init(Type: type,Make: make, Model: model, Color : color)
        
    }
    
    
    override func printMyData() -> String
    {
        
        return "-Vehicle Type: \(type) \n - Plate : \(carplate) \t - Type : \(cartype) \t - Make : \(make) \t  - Model : \(model) \t - Color : \(color)"
        
    }
    
}
