//
//  ContentView.swift
//  Practive
//
//  Created by Virendra Gupta on 25/11/25.
//

import SwiftUI

//Add Navigation bar in view add one right bar button on tapping on it will take you the next page which is SixNeverKnowComponentExised page
//Practice 6 thing
//Timeline
//Disclouse View
//Canvas
//Scene phase
//Color picker
//label


struct ContentView: View {
    var body: some View {
        HStack{
            VStack {

                let endDate = Date().addingTimeInterval(30)

                TimelineView(.periodic(from: .now, by: 1)) { context in
                               let remaining = max(Int(endDate.timeIntervalSince(context.date)), 0)
                               Text("\(remaining)s left")
                                   .font(.system(size: 36, weight: .bold, design: .rounded))
                                   .foregroundColor(remaining == 0 ? .red : .green)
                                   .animation(.easeInOut, value: remaining)
                           }
                }
            
            
                
                Spacer()
                
            }
            Spacer()
        }
//        .padding()
    }


#Preview {
    ContentView()
}
