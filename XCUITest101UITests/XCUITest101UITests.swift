import XCTest

class XCUITest_Xcode10UITests: XCUITestBase, Welcome  {
    func testWelcomeMessage() {
        app.buttons["enter"].tap()
        XCTAssert(app.staticTexts["Welcome to XCUITest"].exists)
    }
    
    func testWelcomeMessageInBDDStyle() {
        givenILaunchedAnApp()
        whenITapOnEnter()
        thenIShouldSeeWelcomeMessage()
    }
}


