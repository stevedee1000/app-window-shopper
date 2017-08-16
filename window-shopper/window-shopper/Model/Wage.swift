//
//  Wage.swift
//  window-shopper
//
//  Created by Stephen Desterhaft on 8/16/17.
//  Copyright © 2017 Stephen Desterhaft. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
