//
//  ContentView.swift
//  TakeHome1
//
//  Created by Virendra Gupta on 18/11/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var  viewModel = PostViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                if viewModel.isLoading {
                    ProgressView("Loading...")
                } else if let error = viewModel.errorMsg {
                    Text("Error: \(error)")
                        .foregroundColor(.red)
                } else {
                    List(viewModel.posts, id: \.id) { post in
                        VStack(alignment: .leading) {
                            Text(post.title)
                                .font(.headline)
                            Text(post.body)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink(destination: SampleScrollView()) {
                            Image(systemName: "arrow.right.circle.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .clipShape(Circle())
                                .shadow(radius: 5)
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Posts")
            .task {
                await viewModel.loadPosts()
            }
        }
    }
}

#Preview {
    ContentView()
}
