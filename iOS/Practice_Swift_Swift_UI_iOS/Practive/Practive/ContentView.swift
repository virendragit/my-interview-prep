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
    var body: some View {
        NavigationStack{
            VStack{
//                Text"
            }
            
            .navigationTitle("Home")
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.teal, for: .navigationBar)
            .toolbarColorScheme(.light, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: SixNeverKnowExisted()) {
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
