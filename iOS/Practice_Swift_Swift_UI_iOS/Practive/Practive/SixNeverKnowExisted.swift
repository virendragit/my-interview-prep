//
//  SixNeverKnowExisted.swift
//  Practive
//
//  Created by Virendra Gupta on 25/11/25.
//

import SwiftUI

struct SixNeverKnowExisted: View {
    var body: some View {
        
        VStack(spacing: 10 ) {

            let endDate = Date().addingTimeInterval(300)

            TimelineView(.periodic(from: .now, by: 1)) { context in
                           let remaining = max(Int(endDate.timeIntervalSince(context.date)), 0)
//                           Text("\(remaining)s left")
//                               .font(.system(size: 36, weight: .bold, design: .rounded))
//                               .foregroundColor(remaining == 0 ? .red : .green)
//                               .animation(.easeInOut, value: remaining)
                let hours = remaining / 3600
                               let minutes = (remaining % 3600) / 60
                               let seconds = remaining % 60

                               Text(String(format: "%02d:%02d:%02d left", hours, minutes, seconds))
                                   .font(.system(size: 36, weight: .bold, design: .rounded))
                                   .foregroundColor(remaining == 0 ? .red : .green)
                                   .animation(.easeInOut, value: remaining)
                       }
//            Spacer(minLength: 10)
            TimelineView(.animation){context in
                Text(context.date,style: .time)
                    .font(.system(size: 36, weight: .bold, design: .rounded))
            }
//            .padding(.top, 20)
            Spacer()
            }
    }
}

#Preview {
    SixNeverKnowExisted()
}
