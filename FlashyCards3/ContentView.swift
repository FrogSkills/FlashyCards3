//
//  ContentView.swift
//  FlashyCards3
//
//  Created by Miguel on 1/4/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var exampleArray = ["Yes", "No", "Maybe"]
    
    
    var body: some View {
        
        // Make a function that generates 1 more dictionary
        
        // Add a button to add the function inside
        
        // Ternary operator, if no word is inputed add a symbol or something.
        
        // List View, join both textfields in 1 section?
        // Add a trashcan to the right, or just swipe.
        
        NavigationStack {
            List {
                ForEach(exampleArray, id: \.self) { term in
                    NavigationLink {
                            Set(setTitle: term)
                        } label: {
                            Text(term)
                        }
                }
            }
            .navigationTitle("Flash Cards")
        }
    }
}

#Preview {
    ContentView()
}
