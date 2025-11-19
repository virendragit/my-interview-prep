//
//  ContentView.swift
//  TakeHome1
//
//  Created by Virendra Gupta on 18/11/25.
//

// Add 

import SwiftUI

struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            // 🚀 Navigation button
//            NavigationLink("Go to ScrollView") {
//                SampleScrollView()
//            }
//            .buttonStyle(.borderedProminent) // nice styled button
//            .padding(.top, 20)
//        }
//        .navigationTitle("Main View")
//        
//        Spacer()
//        
//    }
    var body: some View {
            NavigationStack {
                ZStack {
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
                .navigationTitle("Main View")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
}
    

#Preview {
    ContentView()
}
