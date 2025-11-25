//
//  ScemePhase.swift
//  Practive
//
//  Created by Virendra Gupta on 25/11/25.
//

import SwiftUI

struct ScemePhase: View {
    
    @Environment(\.scenePhase) private var schenePhase
    
    var body: some View {
        VStack{
            Text("App state is \(schenePhase)")
        }
        .onChange(of: schenePhase) { oldValue, newValue in
            switch newValue {
                
            case .background: print("App is in backgroup")
            case .inactive: print("App is in inactive")
            case .active: print("App is active")
            default: break
            }
        }
       
    }
}

#Preview {
    ScemePhase()
}
