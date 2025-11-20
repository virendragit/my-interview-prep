//
//  ContentView.swift
//  TakeHome1
//
//  Created by Virendra Gupta on 18/11/25.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel = PostViewModel()
    
    
    var body: some View {
        NavigationStack{
            if viewModel.isLoading{
                ProgressView("Loading...")
            }else if let error = viewModel.errorMsg{
                Text("error loading \(error)")
                    .foregroundColor(.red)
            }else{
                List(viewModel.posts , id:\.id){ post in
                    VStack(alignment: .leading){
                        Text(post.title)
                            .font(.headline)
                        Text(post.body)
                            .font(.subheadline)
                    }
                    
                }
            }
            
        }
        .task {
            await viewModel.loadPost()
        }
    }
}

#Preview {
    ContentView()
}
