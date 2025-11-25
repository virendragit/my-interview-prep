//
//  SixNeverKnowExisted.swift
//  Practive
//
//  Created by Virendra Gupta on 25/11/25.
//

import SwiftUI

struct SixNeverKnowExisted: View {
    
    @State var darkMode: Bool = false
    @State var bioMetric: Bool = false
    
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
            
            TimelineView(.periodic(from: .now, by: 60)) { context in
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    Text("25°C")
                        .font(.title)
                    Text("Updated at \(context.date.formatted(date: .omitted, time: .shortened))")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                .padding(.top, 10)
            }
            //            .padding(.top, 10)
            VStack(spacing: 10){
                DisclosureGroup("More items"){
                    Toggle("dark mode is on", isOn: $darkMode)
                    Toggle("biomatic is on", isOn: $bioMetric)
                    Text("25°C")
                        .font(.title)
                }
                .padding()
            }
            
            Canvas { context, size in
                       let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
                       context.fill(Path(ellipseIn: rect), with: .color(.green))
                   }
                   .frame(width: 100, height: 100)
            Spacer()
        }
    }
}

#Preview {
    SixNeverKnowExisted()
}
