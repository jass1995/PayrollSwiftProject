//
//  Vehicle.swift
//  Group4_SwiftProject
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
public class Vehicle : IPrintable {
    public var  type : String
    public var make: String
    public var model: String
    public var  color:String
   
    init()
    {
        type=""
        make = ""
        model = ""
        color=""
        
       
    }
    
    init(Type:String,Make: String, Model: String, Color:String)
    {
        type = Type
        make = Make
        model = Model
        color = Color
        
       
    }
    
    func printMyData() -> String
    {
        
        return " - Type : \(type) \t - Make : \(make) \t - Model : \(model) \t -Color : \(color)"
        
    }
}
