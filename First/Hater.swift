//
//  Hater.swift
//  First
//
//  Created by Bart Kerckx on 19/11/2018.
//  Copyright © 2018 Bake Street. All rights reserved.
//

import Foundation

struct Hater {
    var hating = false

    mutating func hadABadDay() {
        hating = true
    }

    mutating func hadAGoodDay() {
        hating = false
    }
}
