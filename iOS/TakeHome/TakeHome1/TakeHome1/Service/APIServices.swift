//
//  APIServices.swift
//  TakeHome1
//
//  Created by Virendra Gupta on 19/11/25.
//

import Foundation

class APIServices {
    func fetchPosts() async throws -> [Post] {
        let url = "https://jsonplaceholder.typicode.com/posts";
        let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
        return try JSONDecoder().decode([Post].self, from: data)
    }
}
