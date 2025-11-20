//
//  LoopInSample.swift
//  TakeHome1
//
//  Created by Virendra Gupta on 20/11/25.
//

import SwiftUI

struct LoopInSample: View {
    var body: some View {
        VStack{
            //for in loop with Range
            Text("For in loop")
           
            ForEach(["A","B","C"] , id: \.self){latter in
                Text("Latter is \(latter)")
            }
            Spacer()
            // 2. While Loop (wrapped in computed property)
            Text("While Loop:")
            ForEach(whileLoopReturns(), id: \.self) { value in
                Text("Value \(value)")
            }
            Spacer()
            
            Text("Stride loop")
            ForEach(Array(stride(from: 0, to: 10, by: 2)),id: \.self){element in
                Text("this is element from stride \(element)")
            }
        }
        
    }
}

// Helper functions for While and Repeat-While
//    func whileLoopResults() -> [Int] {
//        var results: [Int] = []
//        var i = 1
//        while i <= 5 {
//            results.append(i)
//            i += 1
//        }
//        return results
//    }

func whileLoopReturns() -> [Int] {
    var results : [Int] = []
    var i = 1
    while i <= 5{
        results.append(i)
        i += 1
    }
    
    return results
}

#Preview {
    LoopInSample()
}
