import XCTest

class XCUITestBase: XCTestCase {
    var app =  XCUIApplication()
    
    let defaultLaunchArguments: [[String]] = {
        let launchArguments: [[String]] = [["-StartFromCleanState", "YES"]]
        return launchArguments
    }()
    
    func launchApp(with launchArguments: [[String]] = []) {
        (defaultLaunchArguments + launchArguments).forEach { app.launchArguments += $0 }
        app.launch()
    }
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        launchApp(with: defaultLaunchArguments)
    }
    
    override func tearDown() {
        app.terminate()
        super.tearDown()
    }
}
