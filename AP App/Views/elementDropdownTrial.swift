//
//  elementDropdownTrial.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 3/15/23.
//

import SwiftUI

struct elementDropdownTrial: View {
    
    @State var selectedElement: String = "Element"

    var what = "Yuie"
    
    var trialElements: [String] = ["Line Element", "Synchronized Spin", "Moves", "Traveling Element", "Whip Intersection"]
    
    var body: some View {
    
        VStack {
            
            Menu {
                Button(action: {
                    selectedElement = "Line Element"
                }, label: {
                    Text("Line Element")
                })
                Button(action: {
                    selectedElement = "Synchronized Spin"
                }, label: {
                    Text("Synchronized Spin")
                })
                Button(action: {
                    selectedElement = "Moves"
                }, label: {
                    Text("Moves")
                })
                Button(action: {
                    selectedElement = "Traveling Element"
                }, label: {
                    Text("Traveling Element")
                })
                Button(action: {
                    selectedElement = "Whip Intersection"
                }, label: {
                    Text("Whip Intersection")
                })
                Button(action: {
                    selectedElement = "Angled Intersection"
                }, label: {
                    Text("Angled Intersection")
                })
                Button(action: {
                    selectedElement = "No Hold"
                }, label: {
                    Text("No Hold")
                })
                Button(action: {
                    selectedElement = "Creative Lift"
                }, label: {
                    Text("Creative Lift")
                })
                
            } label: {
                Text("\(selectedElement)")
                    .padding()
            }
            
            Menu {
                ForEach(0...trialElements.count-1, id: \.self) {trial in
                    Button(action: {
                        selectedElement = "\(trialElements[trial])"
                    }, label: {
                        Text("\(trialElements[trial])")
                    })
                }
                
            } label: {
                Text("\(selectedElement)")
                    .padding()
            }
            
            
            Spacer()
            
            
            if selectedElement.contains("Intersection") {
                HStack {
                    Text("hello world")
                        .padding()
                    Text("hello world")
                        .padding()
                }
            } else {
                Text("otherwise")
            }
            Spacer()
        }
    }
}

struct elementDropdownTrial_Previews: PreviewProvider {
    static var previews: some View {
        elementDropdownTrial()
    }
}
