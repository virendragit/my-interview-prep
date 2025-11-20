//
//  APIServices.swift
//  TakeHome1
//
//  Created by Virendra Gupta on 19/11/25.
//

import Foundation

class APIServices {
    
   func fetchPosts() async throws -> [Post] {
       let url = "https://jsonplaceholder.typicode.com/posts"
       let data = try Data(contentsOf: URL(string: url)!)
       let posts = try JSONDecoder().decode([Post].self, from: data)
        return posts
    }
}
