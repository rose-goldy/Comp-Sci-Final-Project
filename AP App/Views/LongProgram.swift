//
//  LongProgram.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 3/8/23.
//

import SwiftUI

struct LongProgram: View {
    
    @State var lineGOE: String = ""
    @State var spinGOE: String = ""
    @State var lMovesGOE: String = ""
    @State var circleGOE: String = ""
    @State var whipGOE: String = ""
    @State var angledGOE: String = ""
    @State var lNoHoldGOE: String = ""
    @State var liftsGOE: String = ""
    @State var finalLineValue: String = ""
    @State var finalSpinValue: String = ""
    @State var finallMovesValue: String = ""
    @State var finalCircleValue: String = ""
    @State var finalWhipValue: String = ""
    @State var finalAngledValue: String = ""
    @State var finallNoHoldValue: String = ""
    @State var finalLiftsValue: String = ""
    @State var lineLevel: String = ""
    @State var spinLevel: String = ""
    @State var lMovesLevel: String = ""
    @State var circleLevel: String = ""
    @State var whipLevel: String = ""
    @State var angledLevel: String = ""
    @State var lNoHoldLevel: String = ""
   // @State var liftLevel: String = ""
    @State var compScore: String = ""
    @State var presScore: String = ""
    @State var ssScore: String = ""
    @State var finalComponentScore: String = ""
    @State var finalTotalScore: String = ""
    @State var techScore: Double = 0.0
    
    func correctLineLevel (level: String) -> Double {
       if (level) == "0" {
           let lineValue = (Double(lineGOE)! * 0.1 * line.level00) + line.level00
           return lineValue
       } else if (level) == "1" {
            let lineValue = (Double(lineGOE)! * 0.1 * line.level01) + line.level01
           return lineValue
       } else if (level) == "2" {
            let lineValue = (Double(lineGOE)! * 0.1 * line.level02) + line.level02
           return lineValue
       } else if (level) == "3" {
            let lineValue = (Double(lineGOE)! * 0.1 * line.level03) + line.level03
           return lineValue
       } else {
            let lineValue = (Double(lineGOE)! * 0.1 * line.level04) + line.level04
           return lineValue
        }
    }
    
    func correctSpinLevel (level: String) -> Double {
       if (level) == "0" {
           let spinValue = (Double(spinGOE)! * 0.1 * spin.level00) + spin.level00
           return spinValue
       } else if (level) == "1" {
           let spinValue = (Double(spinGOE)! * 0.1 * spin.level01) + spin.level01
           return spinValue
       } else if (level) == "2" {
           let spinValue = (Double(spinGOE)! * 0.1 * spin.level02) + spin.level02
           return spinValue
       } else if (level) == "3" {
           let spinValue = (Double(spinGOE)! * 0.1 * spin.level03) + spin.level03
           return spinValue
       } else {
           let spinValue = (Double(spinGOE)! * 0.1 * spin.level04) + spin.level04
           return spinValue
        }
    }
    
    func correctMovesLevel (level: String) -> Double {
       if (level) == "0" {
           let lMovesValue = (Double(lMovesGOE)! * 0.1 * longMoves.level00) + longMoves.level00
           return lMovesValue
       } else if (level) == "1" {
           let lMovesValue = (Double(lMovesGOE)! * 0.1 * longMoves.level01) + longMoves.level01
           return lMovesValue
       } else if (level) == "2" {
           let lMovesValue = (Double(lMovesGOE)! * 0.1 * longMoves.level02) + longMoves.level02
           return lMovesValue
       } else if (level) == "3" {
           let lMovesValue = (Double(lMovesGOE)! * 0.1 * longMoves.level03) + longMoves.level03
           return lMovesValue
       } else {
           let lMovesValue = (Double(lMovesGOE)! * 0.1 * longMoves.level04) + longMoves.level04
           return lMovesValue
        }
    }
    
    func correctCircleLevel (level: String) -> Double {
       if (level) == "0" {
           let circleValue = (Double(circleGOE)! * 0.1 * travelingElement.level00) + travelingElement.level00
           return circleValue
       } else if (level) == "1" {
           let circleValue = (Double(circleGOE)! * 0.1 * travelingElement.level01) + travelingElement.level01
           return circleValue
       } else if (level) == "2" {
           let circleValue = (Double(circleGOE)! * 0.1 * travelingElement.level02) + travelingElement.level02
           return circleValue
       } else if (level) == "3" {
           let circleValue = (Double(circleGOE)! * 0.1 * travelingElement.level03) + travelingElement.level03
           return circleValue
       } else {
           let circleValue = (Double(circleGOE)! * 0.1 * travelingElement.level04) + travelingElement.level04
           return circleValue
        }
    }
    
    func correctWhipLevel (level: String) -> Double {
       if (level) == "0" {
           let whipValue = (Double(whipGOE)! * 0.1 * whip.level00) + whip.level00
           return whipValue
       } else if (level) == "1" {
           let whipValue = (Double(whipGOE)! * 0.1 * whip.level01) + whip.level01
           return whipValue
       } else if (level) == "2" {
           let whipValue = (Double(whipGOE)! * 0.1 * whip.level02) + whip.level02
           return whipValue
       } else if (level) == "3" {
           let whipValue = (Double(whipGOE)! * 0.1 * whip.level03) + whip.level03
           return whipValue
       } else {
           let whipValue = (Double(whipGOE)! * 0.1 * whip.level04) + whip.level04
           return whipValue
        }
    }
    
    func correctAngledLevel (level: String) -> Double {
       if (level) == "0" {
           let angledValue = (Double(angledGOE)! * 0.1 * angled.level00) + angled.level00
           return angledValue
       } else if (level) == "1" {
           let angledValue = (Double(angledGOE)! * 0.1 * angled.level01) + angled.level01
           return angledValue
       } else if (level) == "2" {
           let angledValue = (Double(angledGOE)! * 0.1 * angled.level02) + angled.level02
           return angledValue
       } else if (level) == "3" {
           let angledValue = (Double(angledGOE)! * 0.1 * angled.level03) + angled.level03
           return angledValue
       } else {
           let angledValue = (Double(angledGOE)! * 0.1 * angled.level04) + angled.level04
           return angledValue
        }
    }
    
    func correctNoHoldLevel (level: String) -> Double {
       if (level) == "0" {
           let lNoHoldValue = (Double(lNoHoldGOE)! * 0.1 * longNoHold.level00) + longNoHold.level00
           return lNoHoldValue
       } else if (level) == "1" {
           let lNoHoldValue = (Double(lNoHoldGOE)! * 0.1 * longNoHold.level01) + longNoHold.level01
           return lNoHoldValue
       } else if (level) == "2" {
           let lNoHoldValue = (Double(lNoHoldGOE)! * 0.1 * longNoHold.level02) + longNoHold.level02
           return lNoHoldValue
       } else if (level) == "3" {
           let lNoHoldValue = (Double(lNoHoldGOE)! * 0.1 * longNoHold.level03) + longNoHold.level03
           return lNoHoldValue
       } else {
           let lNoHoldValue = (Double(lNoHoldGOE)! * 0.1 * longNoHold.level04) + longNoHold.level04
           return lNoHoldValue
        }
    }

    var body: some View {
        VStack (spacing: 2) {
            Text("Technical Score")
                .breakdownTitle()
            
            HStack (spacing: 10) {
                VStack (spacing: 23) {
                    ForEach(0...longElements.count-1, id: \.self) {index in
                        Text(longElements[index].text)
                            .elementTitle()
                    }
                    
                }
                VStack (spacing: 8) {
                    TextField("Level", text: $lineLevel)
                        .levelInput()
                    TextField("Level", text: $spinLevel)
                        .levelInput()
                    TextField("Level", text: $lMovesLevel)
                        .levelInput()
                    TextField("Level", text: $circleLevel)
                        .levelInput()
                    TextField("Level", text: $whipLevel)
                        .levelInput()
                    TextField("Level", text: $angledLevel)
                        .levelInput()
                    TextField("Level", text: $lNoHoldLevel)
                        .levelInput()
                    Text("1")
                        .font(.callout)
                        .font(.caption)
                        .frame(maxWidth:45, maxHeight: 40)
                }
                
                VStack (spacing: 8) {
                    TextField("GOE", text: $lineGOE)
                        .gOEInput()
                    TextField("GOE", text: $spinGOE)
                        .gOEInput()
                    TextField("GOE", text: $lMovesGOE)
                        .gOEInput()
                    TextField("GOE", text: $circleGOE)
                        .gOEInput()
                    TextField("GOE", text: $whipGOE)
                        .gOEInput()
                    TextField("GOE", text: $angledGOE)
                        .gOEInput()
                    TextField("GOE", text: $lNoHoldGOE)
                        .gOEInput()
                    TextField("GOE", text: $liftsGOE)
                        .gOEInput()
                    
                }
                
                VStack (spacing: 7) {
                    Text("\(finalLineValue)")
                        .elementResult()
                    Text("\(finalSpinValue)")
                        .elementResult()
                    Text("\(finallMovesValue)")
                        .elementResult()
                    Text("\(finalCircleValue)")
                        .elementResult()
                    Text("\(finalWhipValue)")
                        .elementResult()
                    Text("\(finalAngledValue)")
                        .elementResult()
                    Text("\(finallNoHoldValue)")
                        .elementResult()
                    Text("\(finalLiftsValue)")
                        .elementResult()
                    //         Text("\(techScore)")
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
                //          VStack{
                //              Text("Total:")
                //              .font(.title3)
                //                 .foregroundColor(Color("Navy"))
                //             Text("\(finalComponentScore)")
                //                .elementResult()
                //         }
                // }
                
                Button(action: {
                    let lineee = correctLineLevel (level: "\(lineLevel)")
                    let spinnn = correctSpinLevel(level: "\(spinLevel)")
                    let movesss = correctMovesLevel(level: "\(lMovesLevel)")
                    let circleee = correctCircleLevel(level: "\(circleLevel)")
                    let whippp = correctWhipLevel(level: "\(whipLevel)")
                    let angleddd = correctAngledLevel(level: "\(angledLevel)")
                    let noHolddd = correctNoHoldLevel(level: "\(lNoHoldLevel)")
                    
                    finalLineValue = String(format: "%.2f", lineee)
                    finalSpinValue = String(format: "%.2f", spinnn)
                    finallMovesValue = String(format: "%.2f", movesss)
                    
                    finalCircleValue = String(format: "%.2f", circleee)
                    finalWhipValue = String(format: "%.2f", whippp)
                    finalAngledValue = String(format: "%.2f", angleddd)
                    finallNoHoldValue = String(format: "%.2f", noHolddd)
                    let liftsValue = (Double(liftsGOE)! * 0.1 * creativeLift.level01) + creativeLift.level01
                    finalLiftsValue = String(format: "%.2f", liftsValue)
                    let componentScore = Double(compScore)! + Double(presScore)! + Double(ssScore)!
                    finalComponentScore = String(format: "%.2f", (componentScore * 2.7))
                    techScore = lineee + spinnn + movesss + circleee + whippp + angleddd + noHolddd + liftsValue
                    finalTotalScore = String(format: "%.2f", (techScore + (componentScore * 2.7)))
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

struct LongProgram_Previews: PreviewProvider {
    static var previews: some View {
        LongProgram()
    }
}
