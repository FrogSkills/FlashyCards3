//
//  ContentView.swift
//  FlashyCards3
//
//  Created by Miguel on 1/4/26.
//

import SwiftUI

struct ContentView: View {
    @State var firstDictionary = [String : String]()
    @State var dictionaryCounter = 0
    
    var body: some View {
        
        // Make a var for # of dictionaries, start at 0
        
        // Make a function that generates 1 more dictionary
        
        // Add a button to add the function inside
        
        Button("Add more dictonaries/flash cards") {
            print("Starting \(firstDictionary.count)")
            firstDictionary = [:]
            print("Ending \(firstDictionary.count)")
        }
    }
}

#Preview {
    ContentView()
}
