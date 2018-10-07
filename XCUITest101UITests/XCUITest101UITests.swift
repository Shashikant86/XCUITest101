import XCTest

class XCUITest_Xcode10UITests: XCUITestBase {
    func testWelcomeMessage() {
        app.buttons["enter"].tap()
        XCTAssert(app.staticTexts["Welcome to XCUITest"].exists)
    }
}
