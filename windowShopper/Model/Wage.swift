//
//  Wage.swift
//  windowShopper
//
//  Created by David Ortiz on 8/20/17.
//  Copyright © 2017 David Ortiz. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        
        return Int(ceil(price / wage))//ceil() to round up to the next number
    }
    
}
