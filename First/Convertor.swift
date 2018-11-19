//
//  Convertor.swift
//  First
//
//  Created by Bart Kerckx on 19/11/2018.
//  Copyright © 2018 Bake Street. All rights reserved.
//

import Foundation

struct Converter {
    func convertToCelsius(fahrenheit: Double) -> Double {
        let fahrenheit = Measurement(value: fahrenheit, unit: UnitTemperature.fahrenheit)
        let celsius = fahrenheit.converted(to: .celsius)
        return celsius.value
    }
}
