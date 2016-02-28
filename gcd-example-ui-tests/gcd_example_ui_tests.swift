//
//  gcd_example_ui_tests.swift
//  gcd-example-ui-tests
//
//  Created by sodas on 2/28/16.
//  Copyright © 2016 sodas. All rights reserved.
//

import XCTest

class gcd_example_ui_tests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        self.continueAfterFailure = false

        XCUIApplication().launch()
        XCUIDevice.sharedDevice().orientation = .Portrait
    }

    func testExample() {
        let app = XCUIApplication()

        let firstNumberTextField = app.textFields["First number"]
        firstNumberTextField.tap()
        firstNumberTextField.typeText("25")
        
        let secondNumberTextField = app.textFields["Second number"]
        secondNumberTextField.tap()
        secondNumberTextField.typeText("125")
        app.buttons["Calculate"].tap()

        XCTAssertTrue(app.staticTexts["25"].exists)
    }
    
}
