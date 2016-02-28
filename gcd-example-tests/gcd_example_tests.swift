//
//  gcd_example_tests.swift
//  gcd-example-tests
//
//  Created by sodas on 2/28/16.
//  Copyright © 2016 sodas. All rights reserved.
//

import XCTest
@testable import gcd_example

class gcd_example_tests: XCTestCase {
    
    func testGCD() {
        XCTAssertTrue(gcd(10, 13) == 1)
        XCTAssertTrue(gcd(30, 15) == 15)
        XCTAssertTrue(gcd(21, 77) == 7)
        XCTAssertTrue(gcd(1, 20) == 1)
        XCTAssertTrue(gcd(42, 42) == 42)
    }
    
}
