import XCTest

protocol Welcome {
    func testWelcomeMessage()
    func testWelcomeMessageInBDDStyle()
}

extension XCUITestBase {
    func givenILaunchedAnApp() {
        XCTContext.runActivity(named: "Given I Launched an App") { _ in
            XCUIApplication().launch()
        }
    }
    func whenITapOnEnter() {
        XCTContext.runActivity(named: "When I tap on the enter button") { _ in
            XCUIApplication().buttons["enter"].tap()
        }
    }
    func thenIShouldSeeWelcomeMessage() {
        XCTContext.runActivity(named: "Then I should see Welcome message") { _ in
            XCTAssert(app.staticTexts["Welcome to XCUITest"].exists)        }
    }
}
