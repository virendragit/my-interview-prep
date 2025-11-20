//
//  PostViewModelTests.swift
//  TakeHome1Tests
//
//  Created by Virendra Gupta on 20/11/25.
//

import XCTest
@testable import TakeHome1

final class PostViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    actor MockService: APIServices {
            var shouldFail = false
            
            override func fetchPosts() async throws -> [Post] {
                if shouldFail {
                    throw URLError(.badServerResponse)
                }
                return [Post(id: 1, title: "Mock Title", body: "Mock Body")]
            }
        }
        
        func testLoadPostsSuccess() async {
            let viewModel = PostViewModel()
            viewModel.posts = []
            
            // Inject mock
            let mockService = MockService()
            await viewModel.loadPost()
            
            XCTAssertFalse(viewModel.posts.isEmpty)
            XCTAssertNil(viewModel.errorMsg)
            XCTAssertFalse(viewModel.isLoading)
        }
        
        func testLoadPostsFailure() async {
            let viewModel = PostViewModel()
            let mockService = MockService()
            mockService.shouldFail = true
            
            await viewModel.loadPost()
            
            XCTAssertTrue(viewModel.posts.isEmpty)
            XCTAssertEqual(viewModel.errorMsg, "Failed to fetch posts")
            XCTAssertFalse(viewModel.isLoading)
        }
    
    

}
