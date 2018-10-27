import XCTest

enum WelcomeScreen: String {
    
    case enterButton = "enter"
    case welcomeText = "Welcome to XCUITest"
    
    var element: XCUIElement {
        switch self {
        case .enterButton:
            if UIDevice.current.userInterfaceIdiom == .pad {
                return XCUIApplication().tabBars["iPadTabBar"].buttons[self.rawValue]
            } else {
                return XCUIApplication().buttons[self.rawValue]
            }
        case .welcomeText:
            return XCUIApplication().staticTexts[self.rawValue]
        }
    }
}
