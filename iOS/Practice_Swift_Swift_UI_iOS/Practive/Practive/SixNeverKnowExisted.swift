//
//  SixNeverKnowExisted.swift
//  Practive
//
//  Created by Virendra Gupta on 25/11/25.
//

import SwiftUI

struct SixNeverKnowExisted: View {
    var body: some View {
        
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
    }
}

#Preview {
    SixNeverKnowExisted()
}
