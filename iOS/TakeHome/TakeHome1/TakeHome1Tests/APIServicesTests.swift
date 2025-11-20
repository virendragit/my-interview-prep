//
//  APIServicesTests.swift
//  TakeHome1Tests
//
//  Created by Virendra Gupta on 20/11/25.
//

import XCTest

import XCTest
@testable import TakeHome1

final class APIServicesTests: XCTestCase {
    
    func testFetchPostsReturnsData() async throws {
        let service = APIServices()
        let posts = try await service.fetchPosts()
        
        XCTAssertFalse(posts.isEmpty, "Posts should not be empty")
        XCTAssertGreaterThan(posts.count, 0)
    }
    
    func testFetchPostsDecodingFailure() async {
        class MockService: APIServices {
            override func fetchPosts() async throws -> [Post] {
                let invalidJSON = "invalid".data(using: .utf8)!
                return try JSONDecoder().decode([Post].self, from: invalidJSON)
            }
        }
        
        let service = MockService()
        
        do {
            _ = try await service.fetchPosts()
            XCTFail("Expected decoding failure")
        } catch {
            XCTAssertTrue(error is DecodingError)
        }
    }
}

