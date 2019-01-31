//
//  ThrowingTests.swift
//  FirstTests
//
//  Created by Bart Kerckx on 20/11/2018.
//  Copyright © 2018 Bake Street. All rights reserved.
//

import XCTest

extension LocalizedError {
    var errorDescription: String? {
        return "\(self)"
    }
}

enum GameError: LocalizedError {
    case notPurchased
    case notInstalled
    case parentalControlDisallowed
}

struct Game {
    let name: String

    func play() throws {
        if name == "BioBlitz" {
            throw GameError.notPurchased
        } else if name == "Blastazap" {
            throw GameError.notInstalled
        } else if name == "Dead Storm Rising" {
            throw GameError.parentalControlDisallowed
        } else {
            print("\(name) is OK to play!")
        }
    }
}

class ThrowingTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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

    func testPlayingBioBlitzThrows() {
        let game = Game(name: "BioBlitz")

        do {
            try game.play()
            XCTFail("Bioblitz has not been purchased.")
        } catch GameError.notPurchased {
            // success!
        } catch {
            XCTFail()
        }
    }

    func testPlayingBlastazapThrows() {
        let game = Game(name: "Blastazap")
        XCTAssertThrowsError(try game.play()) {
            error in XCTAssertEqual(error as? GameError, GameError.notInstalled)
        }
    }

    func testPlayingExplodingMonkeysDoesntThrow() {
        let game = Game(name: "Exploding Monkeys")
        XCTAssertNoThrow(try game.play())
    }

    func testCrashyPlanedoesntThrow() throws {
        let game = Game(name: "CrashyPlane")
        try game.play()
    }

    func testDeadStormRisingdoesntThrow() throws {
        let game = Game(name: "Dead Storm Rising")

        XCTAssertThrowsError(try game.play()) {
            error in XCTAssertEqual(error as? GameError, GameError.parentalControlDisallowed)
        }
    }
}
