//
//  ConverterTests.swift
//  FirstTests
//
//  Created by Bart Kerckx on 19/11/2018.
//  Copyright © 2018 Bake Street. All rights reserved.
//

import XCTest
@testable import First

class ConverterTests: XCTestCase {
    var sut: Converter!

    override func setUp() {
        sut = Converter()
    }

    override func tearDown() {
        sut = nil
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func test32FahrenheitIsZeroCelsius() {
        let input = 32.0

        let celsius = sut.convertToCelsius(fahrenheit: input)

        XCTAssertEqual(celsius, 0, accuracy: 0.000001)
    }

    func test212FahrenheitIs100Celsius() {
        let input = 212.0

        let celsius = sut.convertToCelsius(fahrenheit: input)

        XCTAssertEqual(celsius, 100, accuracy: 0.000001)
    }

    func test100FahrenheitIs37Celsius() {
        let input = 100.0

        let celsius = sut.convertToCelsius(fahrenheit: input)

        XCTAssertEqual(celsius, 37.777777, accuracy: 0.000001)
    }
}
