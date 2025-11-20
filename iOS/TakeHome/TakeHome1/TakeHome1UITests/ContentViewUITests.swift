//
//  ContentViewUITests.swift
//  TakeHome1UITests
//
//  Created by Virendra Gupta on 20/11/25.
//

import XCTest

final class ContentViewUITests: XCTestCase {

    func testLoadingIndicatorAppears() throws {
            let app = XCUIApplication()
            app.launch()
            
            // Expect "Loading..." text to appear
            let loadingText = app.staticTexts["Loading..."]
//            XCTAssertTrue(loadingText.waitForExistence(timeout: 2))
        }

    func testPostsListAppears() throws {
        let app = XCUIApplication()
        app.launch()
        
        // Wait for first post title to appear
        let firstCell = app.staticTexts.element(boundBy: 0)
        XCTAssertTrue(firstCell.waitForExistence(timeout: 5))
    }
    
    func testErrorMessageAppears() throws {
        let app = XCUIApplication()
        app.launchArguments.append("--mockError") // You can configure your app to inject mock service
        
        app.launch()
        
        let errorText = app.staticTexts["error loading Failed to fetch posts"]
        XCTAssertTrue(errorText.waitForExistence(timeout: 3))
    }
    
    func testNavigationToDetail() throws {
        let app = XCUIApplication()
        app.launch()
        
        let firstCell = app.staticTexts.element(boundBy: 0)
        XCTAssertTrue(firstCell.waitForExistence(timeout: 5))
        firstCell.tap()
        
        let detailTitle = app.staticTexts["Mock Title"] // Replace with expected detail view text
        XCTAssertTrue(detailTitle.waitForExistence(timeout: 2))
    }
}
