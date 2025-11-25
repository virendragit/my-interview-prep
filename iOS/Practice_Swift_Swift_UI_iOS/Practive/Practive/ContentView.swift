//
//  ContentView.swift
//  Practive
//
//  Created by Virendra Gupta on 25/11/25.
//

import SwiftUI

//Add Navigation bar in view add one right bar button on tapping on it will take you the next page which is SixNeverKnowComponentExised page(Done)
//Practice 6 thing
//Timeline
//Disclouse View
//Canvas
//Scene phase
//Color picker
//label


struct ContentView: View {
    
    @State var selectedColor: Color = .blue
    
    
    var body: some View {
        NavigationStack{
            Label("Cart", systemImage: "arrow.2.circlepath.circle")
                        .font(.largeTitle)
            VStack(spacing: 16) {
                ColorPicker("Choose Color", selection: $selectedColor, supportsOpacity: true)
                HStack(spacing: 12) {
                    Text("Selected:")
                    Circle()
                        .fill(selectedColor)
                        .frame(width: 24, height: 24)
                        .overlay(Circle().stroke(Color.primary.opacity(0.2), lineWidth: 1))
                }
            }
            
            .navigationTitle("Home")
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.teal, for: .navigationBar)
            .toolbarColorScheme(.light, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: ScemePhase()) {
                        Image(systemName: "arrow.left")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SixNeverKnowExisted()){
                        Image(systemName: "arrow.right")
                    }
                }
            }
        }
        
        
            }
           
        }
        


#Preview {
    ContentView()
}
