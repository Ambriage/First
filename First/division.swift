//
//  division.swift
//  First
//
//  Created by Bart Kerckx on 19/11/2018.
//  Copyright © 2018 Bake Street. All rights reserved.
//

import Foundation

struct Division {
    
    func divisionRemainder(of number: Int, dividedBy: Int) -> (quotient: Int, remainder: Int) {
        let quotient = number / dividedBy
        let remainder = number % dividedBy
        return (quotient,remainder)
    }
}
