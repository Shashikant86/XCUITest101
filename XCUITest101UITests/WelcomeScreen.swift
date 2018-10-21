import XCTest

enum WelcomeScreen: String {
    
    case enterButton = "enter"
    case welcomeText = "Welcome to XCUITest"
    
    var element: XCUIElement {
        switch self {
        case .enterButton:
            return XCUIApplication().buttons[self.rawValue]
        case .welcomeText:
            return XCUIApplication().staticTexts[self.rawValue]
        }
    }
}
