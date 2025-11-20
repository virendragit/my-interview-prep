//
//  PostModelTests.swift
//  TakeHome1Tests
//
//  Created by Virendra Gupta on 20/11/25.
//

import XCTest
@testable import TakeHome1

@MainActor
final class PostModelTests: XCTestCase {
        
    func testPostDecoding() throws {
        let json = """
        {
            "id": 1,
            "title": "Test Title",
            "body": "Test Body"
        }
        """.data(using: .utf8)!
        
        let post = try JSONDecoder().decode(Post.self, from: json)
        
        XCTAssertEqual(post.id, 1)
        XCTAssertEqual(post.title, "Test Title")
        XCTAssertEqual(post.body, "Test Body")
    }
}
