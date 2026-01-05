//
//  AddingASet.swift
//  FlashyCards3
//
//  Created by Miguel on 1/4/26.
//

import SwiftUI

struct AddingASet: View {
    @State var firstDictionary = [String : String]()
    @State private var dictionaryKeyWord = ""
    @State private var dictionaryDefenition = ""
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            List {
                ForEach(Array(firstDictionary.keys), id: \.self) { term in
                    Text(term)
                }
            }
            
            
            ScrollView() {
                Button("Add more dictonaries/flash cards") {
                    for (keyy, valuee) in firstDictionary {
                        print("Keyword: \(keyy)  Definition: \(valuee)")
                    }
                    //                print("Starting \(firstDictionary.count)")
                    //       This whipes it all clean         firstDictionary = [:]
                    //                print("Ending \(firstDictionary.count)")
                }
                .padding(.vertical)
                
                VStack(alignment: .leading){
                    Text("KeyWord:")
                        .padding(.horizontal)
                    TextField("Add to the KeyWord", text: $dictionaryKeyWord)
                        .textFieldStyle(.roundedBorder)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray, lineWidth: 2)
                        }
                        .padding(.horizontal)
                }
                //            .padding()
                
                VStack(alignment: .leading) {
                    Text("Definition:")
                    TextField("Add to the Defenition", text: $dictionaryDefenition)
                        .textFieldStyle(.roundedBorder)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray, lineWidth: 2)
                            
                        }
                }
                .padding()
                
            }
            HStack {
                Spacer()
                Button{
                    // Clear both textfields.
                } label: {
                    Image(systemName: "x.circle.fill")
                        .foregroundStyle(.red)
                }
                
                Spacer()
                Spacer()
                
                Button{
                    firstDictionary[dictionaryKeyWord] = dictionaryDefenition
                } label: {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundStyle(.blue)
                }
                Spacer()
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Cancel") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    AddingASet()
}
