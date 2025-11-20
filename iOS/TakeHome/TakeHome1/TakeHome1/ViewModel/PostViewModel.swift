//
//  PostViewModel.swift
//  TakeHome1
//
//  Created by Virendra Gupta on 19/11/25.
//

import Foundation
internal import Combine

@MainActor
class PostViewModel: ObservableObject {
    @Published var posts: [Post] = []
    @Published var isLoading: Bool = false
    @Published var errorMsg: String?
    
    private let service = APIServices()
    
    func loadPost() async{
        isLoading = true
        do {
            posts = try await service.fetchPosts()
        } catch {
            self.errorMsg = "Failed to fetch posts"
        }
        isLoading = false
    }
    
   

}
