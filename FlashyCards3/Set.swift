//
//  Set.swift
//  FlashyCards3
//
//  Created by Miguel on 1/4/26.
//

import SwiftUI

struct Set: View {
    @State var setTitle : String
    @State var practiceVar = ["1", "2"]
    @State private var addCardsButton = false
    var body: some View {
        NavigationStack {
            List {
                ForEach(practiceVar, id: \.self) { name in
                    Text(name)
                }
            }
            .sheet(isPresented: $addCardsButton) {
                NavigationStack {
                    AddingASet()
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        addCardsButton = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            //TODO: Change the title name to the incoming value.
            .navigationTitle(setTitle)
        }
    }
}

#Preview {
    Set(setTitle: "")
}
