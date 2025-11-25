//
//  ContentView.swift
//  Practive
//
//  Created by Virendra Gupta on 25/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TimelineView(.animation) { context in
                            Text(context.date, style: .time)
                                .font(.system(size: 48, weight: .medium, design: .monospaced))
                                .padding()
                        }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
