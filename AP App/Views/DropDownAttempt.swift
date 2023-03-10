//
//  DropDownAttempt.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 3/10/23.
//

import SwiftUI

struct DropDownAttempt: View {
    @State var pivotGOE: String = ""
    @State var sNoHoldGOE: String = ""
    @State var triangleGOE: String = ""
    @State var twizzlesGOE: String = ""
    @State var sMovesGOE: String = ""
    @State var finalPivotValue: String = ""
    @State var finalSNoHoldValue: String = ""
    @State var finalTriangleValue: String = ""
    @State var finalTwizzlesValue: String = ""
    @State var finalsMovesValue: String = ""
    @State var pivotLevel: String = ""
    @State var sNoHoldLevel: String = ""
    @State var triangleLevel: String = ""
    @State var twizzlesLevel: String = ""
    @State var sMovesLevel: String = ""
    @State var compScore: String = ""
    @State var presScore: String = ""
    @State var ssScore: String = ""
    @State var finalComponentScore: String = ""
    @State var finalTotalScore: String = ""
    @State var techScore: Double = 0.0
    //
    @State var choiceMade = "Level"
    
    func correctPivotLevel (level: String) -> Double {
        if (level) == "0" {
            let pivotValue = (Double(pivotGOE)! * 0.1 * pivotBlock.level0) + pivotBlock.level0
            return pivotValue
        } else if (level) == "1" {
            let pivotValue = (Double(pivotGOE)! * 0.1 * pivotBlock.level1) + pivotBlock.level1
            return pivotValue
        } else if (level) == "2" {
            let pivotValue = (Double(pivotGOE)! * 0.1 * pivotBlock.level2) + pivotBlock.level2
            return pivotValue
        } else if (level) == "3" {
            let pivotValue = (Double(pivotGOE)! * 0.1 * pivotBlock.level3) + pivotBlock.level3
            return pivotValue
        } else {
            let pivotValue = (Double(pivotGOE)! * 0.1 * pivotBlock.level4) + pivotBlock.level4
            return pivotValue
        }
    }
    
    func correctSNoHoldLevel (level: String) -> Double {
        if (level) == "0" {
            let sNoHoldValue = (Double(sNoHoldGOE)! * 0.1 * shortNoHold.level0) + shortNoHold.level0
            return sNoHoldValue
        } else if (level) == "1" {
            let sNoHoldValue = (Double(sNoHoldGOE)! * 0.1 * shortNoHold.level1) + shortNoHold.level1
            return sNoHoldValue
        } else if (level) == "2" {
            let sNoHoldValue = (Double(sNoHoldGOE)! * 0.1 * shortNoHold.level2) + shortNoHold.level2
            return sNoHoldValue
        } else if (level) == "3" {
            let sNoHoldValue = (Double(sNoHoldGOE)! * 0.1 * shortNoHold.level3) + shortNoHold.level3
            return sNoHoldValue
        } else {
            let sNoHoldValue = (Double(sNoHoldGOE)! * 0.1 * shortNoHold.level4) + shortNoHold.level4
            return sNoHoldValue
        }
    }
    
    func correctTriangleLevel (level: String) -> Double {
        if (level) == "0" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level0) + triangle.level0
            return triangleValue
        } else if (level) == "1" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level1) + triangle.level1
            return triangleValue
        } else if (level) == "2" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level2) + triangle.level2
            return triangleValue
        } else if (level) == "3" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level3) + triangle.level3
            return triangleValue
        } else {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level4) + triangle.level4
            return triangleValue
        }
    }
    
    func correctTwizzlesLevel (level: String) -> Double {
        if (level) == "0" {
            let twizzlesValue = (Double(twizzlesGOE)! * 0.1 * twizzles.level0) + twizzles.level0
            return twizzlesValue
        } else if (level) == "1" {
            let twizzlesValue = (Double(twizzlesGOE)! * 0.1 * twizzles.level1) + twizzles.level1
            return twizzlesValue
        } else if (level) == "2" {
            let twizzlesValue = (Double(twizzlesGOE)! * 0.1 * twizzles.level2) + twizzles.level2
            return twizzlesValue
        } else if (level) == "3" {
            let twizzlesValue = (Double(twizzlesGOE)! * 0.1 * twizzles.level3) + twizzles.level3
            return twizzlesValue
        } else {
            let twizzlesValue = (Double(twizzlesGOE)! * 0.1 * twizzles.level4) + twizzles.level4
            return twizzlesValue
        }
    }
    
    func correctSMovesLevel (level: String) -> Double {
        if (level) == "0" {
            let sMovesValue = (Double(sMovesGOE)! * 0.1 * shortMoves.level0) + shortMoves.level0
            return sMovesValue
        } else if (level) == "1" {
            let sMovesValue = (Double(sMovesGOE)! * 0.1 * shortMoves.level1) + shortMoves.level1
            return sMovesValue
        } else if (level) == "2" {
            let sMovesValue = (Double(sMovesGOE)! * 0.1 * shortMoves.level2) + shortMoves.level2
            return sMovesValue
        } else if (level) == "3" {
            let sMovesValue = (Double(sMovesGOE)! * 0.1 * shortMoves.level3) + shortMoves.level3
            return sMovesValue
        } else {
            let sMovesValue = (Double(sMovesGOE)! * 0.1 * shortMoves.level4) + shortMoves.level4
            return sMovesValue
        }
    }
    
    var body: some View {
        VStack (spacing: 2) {
            
            //       Spacer()
            
            Text("Technical Score")
                .breakdownTitle()
                .padding()
            
            HStack (spacing: 10) {
                VStack (spacing: 23) {
                    ForEach(0...shortElements.count-1, id: \.self) {index in
                        Text(shortElements[index].text)
                            .elementTitle()
                    }
                    
                }
                VStack (spacing: 8) {
                    //The drop-down list is not my code...
                     Menu {
                        Button(action: {
                            choiceMade = "BV"
                            let pivotValue = (Double(pivotGOE)! * 0.1 * pivotBlock.level0) + pivotBlock.level0
                            let pivottt = correctPivotLevel (level: "\(pivotLevel)")
                            finalPivotValue = String(format: "%.2f", pivottt)
                        }, label: {
                            Text("BV")
                        })
                        Button(action: {
                            choiceMade = "1"
                        }, label: {
                            Text("1")
                        })
                        Button(action: {
                            choiceMade = "2"
                        }, label: {
                            Text("2")
                        })
                        Button(action: {
                            choiceMade = "3"
                        }, label: {
                            Text("3")
                        })
                        Button(action: {
                            choiceMade = "4"
                        }, label: {
                            Text("4")
                        })
                        
                    } label: {
                        Label(
                            title: {Text("\(choiceMade)") },
                            icon: {Image(systemName: "plus")}
                        )
                    }
                    
                    
                    
                    
                    TextField("Level", text: $pivotLevel)
                        .levelInput()
                    TextField("Level", text: $sNoHoldLevel)
                        .levelInput()
                    TextField("Level", text: $triangleLevel)
                        .levelInput()
                    TextField("Level", text: $twizzlesLevel)
                        .levelInput()
                    TextField("Level", text: $sMovesLevel)
                        .levelInput()
                }
                
                VStack (spacing: 8) {
                    TextField("GOE", text: $pivotGOE)
                        .gOEInput()
                    TextField("GOE", text: $sNoHoldGOE)
                        .gOEInput()
                    TextField("GOE", text: $triangleGOE)
                        .gOEInput()
                    TextField("GOE", text: $twizzlesGOE)
                        .gOEInput()
                    TextField("GOE", text: $sMovesGOE)
                        .gOEInput()
                }
                
                VStack (spacing: 8) {
                    Text("\(finalPivotValue)")
                        .elementResult()
                    Text("\(finalSNoHoldValue)")
                        .elementResult()
                    Text("\(finalTriangleValue)")
                        .elementResult()
                    Text("\(finalTwizzlesValue)")
                        .elementResult()
                    Text("\(finalsMovesValue)")
                        .elementResult()
          //          Text("\(techScore)")
                }
            }
            
                 Spacer()
            
            Text("Component Score")
                .breakdownTitle()
            
            HStack (spacing: 20) {
                VStack (spacing: 18) {
                    Text("Composition")
                        .elementTitle()
                    Text("Presentation")
                        .elementTitle()
                    Text("Skating Skills")
                        .elementTitle()
                }
                VStack{
                    TextField("Score", text: $compScore)
                        .textFieldStyle(.roundedBorder)
                        .font(.callout)
                        .font(.caption)
                        .frame(maxWidth:65, maxHeight: 40)
                    TextField("Score", text: $presScore)
                        .textFieldStyle(.roundedBorder)
                        .font(.callout)
                        .font(.caption)
                        .frame(maxWidth:65, maxHeight: 40)
                    TextField("Score", text: $ssScore)
                        .textFieldStyle(.roundedBorder)
                        .font(.callout)
                        .font(.caption)
                        .frame(maxWidth:65, maxHeight: 40)
                }
                //                  VStack{
                //                       Text("Total:")
                //                       .font(.title3)
                //                        .foregroundColor(Color("Navy"))
                //                     Text("\(finalComponentScore)")
                //                        .elementResult()
                //                  }
                //         }
                
                Button(action: {
                    let pivottt = correctPivotLevel (level: "\(pivotLevel)")
                    let sNoHolddd = correctSNoHoldLevel(level: "\(sNoHoldLevel)")
                    let triangleee = correctTriangleLevel(level: "\(triangleLevel)")
                    let twizzlesss = correctTwizzlesLevel(level: "\(twizzlesLevel)")
                    let sMovesss = correctSMovesLevel(level: "\(sMovesLevel)")
                    
                    finalPivotValue = String(format: "%.2f", pivottt)
                    finalSNoHoldValue = String(format: "%.2f", sNoHolddd)
                    finalTriangleValue = String(format: "%.2f", triangleee)
                    finalTwizzlesValue = String(format: "%.2f", twizzlesss)
                    finalsMovesValue = String(format: "%.2f", sMovesss)
                    let componentScore = Double(compScore)! + Double(presScore)! + Double(ssScore)!
                    finalComponentScore = String(format: "%.2f", (componentScore * 1.3))
                    techScore = pivottt + sNoHolddd + triangleee + twizzlesss + sMovesss
                    finalTotalScore = String(format: "%.2f", (techScore + (componentScore * 1.3)))
                }){
                    Text("Calculate")
                        .font(.caption)
                        .fontWeight(.thin)
                        .foregroundColor(.black)
                        .frame(maxWidth: 60, maxHeight: 25)
                        .padding(4)
                }
                .background(Color.blue)
                .clipShape(Capsule())
            }
            
            Spacer()
            
            HStack{
                Text("Total Score")
                    .breakdownTitle()
                
                Text("\(finalTotalScore)")
                    .elementResult()
                    .padding()
            }
            
            Spacer()
            
        }
    }
}



struct DropDownAttempt_Previews: PreviewProvider {
    static var previews: some View {
        DropDownAttempt()
    }
}
