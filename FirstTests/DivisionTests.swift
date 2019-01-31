//
//  DivisionTests.swift
//  FirstTests
//
//  Created by Bart Kerckx on 19/11/2018.
//  Copyright © 2018 Bake Street. All rights reserved.
//

import XCTest
@testable import First

class DivisionTests: XCTestCase {
    var sut: Division!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = Division()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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

    func testDivisor() {
        let dividend = 10
        let divisor = 3

        let result = sut.divisionRemainder(of: dividend, dividedBy: divisor)

        verifyDivision(result, expectedQuotient: 3, expectedRemainder: 1)
    }


    func verifyDivision(_ result: (quotient: Int, remainder: Int), expectedQuotient: Int, expectedRemainder: Int, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(result.quotient, expectedQuotient, file: file, line: line)
        XCTAssertEqual(result.remainder, expectedRemainder, file: file, line: line)
    }
}
