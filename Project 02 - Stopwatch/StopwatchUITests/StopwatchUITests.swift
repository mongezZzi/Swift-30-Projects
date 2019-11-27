//
//  StopwatchUITests.swift
//  StopwatchUITests
//
//  Created by Emmanuel.Mthimunye on 2019/11/26.
//  Copyright © 2019 YiGu. All rights reserved.
//

import XCTest

class StopwatchUITests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testLaps() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let element2 = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        element2.tap()
        app.buttons["Start"].tap()
        let lapButton = app.buttons["Lap"]
        
        for n in 1...100 {
            lapButton.tap()
            print("tapped lap \(n)")
        }
        for n in 1...100 {
            XCTAssertTrue(app.tables.staticTexts["Lap \(n)"].exists)
        }
        
    }
    func testReset() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let element2 = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        element2.tap()
        app.buttons["Start"].tap()
        let lapButton = app.buttons["Lap"]
        
        for n in 1...3 {
            lapButton.tap()
            print("tapped lap \(n)")
        }
        for n in 1...3 {
            XCTAssertTrue(app.tables.staticTexts["Lap \(n)"].exists)
        }
        
        app.buttons["Stop"].tap()
        
        app.buttons["Reset"].tap()
    }
    func testReset2() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let element2 = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        element2.tap()
        app.buttons["Start"].tap()
        let lapButton = app.buttons["Lap"]
        
        for n in 1...3 {
            lapButton.tap()
            print("tapped lap \(n)")
        }
        for n in 1...3 {
            XCTAssertTrue(app.tables.staticTexts["Lap \(n)"].exists)
        }
        
        app.buttons["Stop"].tap()
        
        app.buttons["Reset"].tap()
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
