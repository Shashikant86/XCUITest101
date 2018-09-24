//
//  XCUITest101UITests.swift
//  XCUITest101UITests
//
//  Created by Shashikant Jagtap on 24/09/2018.
//  Copyright © 2018 Shashikant Jagtap. All rights reserved.
//

import XCTest

class XCUITest101UITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testRecorded() {
        let app = XCUIApplication()
        app.otherElements.containing(.image, identifier:"wall1").element.tap()
        app/*@START_MENU_TOKEN@*/.buttons["enter"]/*[[".buttons[\"ENTER\"]",".buttons[\"enter\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.staticTexts["Welcome to XCUITest"].tap()
    }
    
    func testRefactored() {
        let app = XCUIApplication()
        app.buttons["enter"].tap()
        XCTAssert(app.staticTexts["Welcome to XCUITest"].exists)
    }
    
}
