//
//  ContentView.swift
//  TakeHome1
//
//  Created by Virendra Gupta on 18/11/25.
//

// Add 

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(1...20, id: \.self) { index in
                    Text("Item \(index)")
                        .padding()
                        .background(Color.green.opacity(0.3))
                        .cornerRadius(8)
                }
            }
            .padding()
        }
        ScrollView() {
            VStack {
                ForEach(1...20, id: \.self) { index in
                    Text("Item \(index)")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(8)
                }
            }
        }
        .padding()

      Spacer()
    }
       
    
}

#Preview {
    ContentView()
}
