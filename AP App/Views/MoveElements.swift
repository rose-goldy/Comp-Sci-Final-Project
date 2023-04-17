//
//  MoveElements.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 4/17/23.
//

import SwiftUI

struct MoveElements: View {
    @State private var elements = ["Pivot Block", "Twizzles", "Moves", "Triangle Intersection", "No Hold"]
    
    var body: some View {
      
        NavigationStack {
            List {
                ForEach(elements, id:\.self) { element in
                    Text(element)
                }
                .onMove(perform: move)
            }
            .toolbar {
                EditButton()
                
            }
        }
    }
    func move(from source: IndexSet, to destination: Int) {
        elements.move(fromOffsets: source, toOffset: destination)
    }
    
    func layout (element: String) {
        for i in 0...elements.count-1 {
            if elements[i].contains("Intersection") {
                
            }
        }
    }
    
//    if selectedElement.contains("Intersection") {
//        HStack {
//            Text("hello world")
//                .padding()
//            Text("hello world")
//                .padding()
//        }
//    } else {
//        Text("otherwise")
//    }
    
}

struct MoveElements_Previews: PreviewProvider {
    static var previews: some View {
        MoveElements()
    }
}
