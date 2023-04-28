//
//  OpenShortProgram.swift
//  AP App
//

import SwiftUI

    struct OpenShortProgram: View {
        @EnvironmentObject var functions: Functions
   
        
        
        @State var pivotGOE: String = ""
        @State var noHoldGOE: String = ""
        @State var triangleGOE: String = ""
        @State var twizzlesGOE: String = ""
        @State var movesGOE: String = ""
        @State var finalPivotValue: String = ""
        @State var finalNoHoldValue: String = ""
        @State var finalTriangleValue: String = ""
        @State var finalTwizzlesValue: String = ""
        @State var finalMovesValue: String = ""
        @State var pivotLevel: String = "Level"
        @State var noHoldLevel: String = "Level"
        @State var noHoldSteps: String = "Steps"
        @State var triangleI: String = "I"
        @State var trianglePI: String = "PI"
        @State var twizzlesLevel: String = "Level"
        @State var movesLevel: String = "Level"
        @State var compScore: String = ""
        @State var presScore: String = ""
        @State var ssScore: String = ""
        @State var finalComponentScore: String = ""
        @State var finalTotalScore: String = ""
        @State var techScore: Double = 0.0
        @State var deductions: String = ""
        @State var deductionScore: Double = 0.0
        @State var firstElement: String = "Element 1"
        @State var secondElement: String = "Element 2"
        @State var thirdElement: String = "Element 3"
        @State var fourthElement: String = "Element 4"
        @State var fifthElement: String = "Element 5"
        @State var selectedElement: String = "Element"
        
          var possibleSElements: [String] = ["Pivot Block", "No Hold", "Triangle Intersection", "Twizzles", "Moves"]
        
        var body: some View {
            VStack (spacing: 2) {
                
                //       Spacer()
                
                VStack (spacing: 23) {
                    
                }
                
                Text("Technical Score")
                    .breakdownTitle()
                    .padding()
                
                ElementDetail()
                               
       //         Spacer()
                
                Text("Component Score")
                    .breakdownTitle()
                
                HStack (spacing: 20) {
                    VStack (spacing: 28) {
                        Text("Composition")
                            .elementTitle()
                        Text("Presentation")
                            .elementTitle()
                        Text("Skating Skills")
                            .elementTitle()
                    }
                    VStack{
                        TextField("Score", text: $compScore)
                            .componentResult()
                        TextField("Score", text: $presScore)
                            .componentResult()
                        TextField("Score", text: $ssScore)
                            .componentResult()
                    }
                }
                
    //            Spacer()
                
                HStack (spacing: 18) {
                    Text("Deductions")
                        .deduction()
                    
                    TextField("Points", text: $deductions)
                        .componentResult()
                }
                
                HStack {
                    Text("Total Score")
                        .breakdownTitle()
                    
                    Text("\(finalTotalScore)")
                        .finalScore()
                }
                
                Button(action: {
                    let pivottt = functions.correctPivotLevel(level: "\(pivotLevel)")
                    let noHolddd = functions.correctNoHoldLevel(level: "\(triangleI)", steps: "\(trianglePI)")
                    let triangleee = functions.correctTriangleLevel(I: "\(triangleI)", PI: "\(trianglePI)")
                    let twizzlesss = functions.correctTwizzlesLevel(level: "\(twizzlesLevel)") 
                    let movesss = functions.correctSMovesLevel(level: "\(movesLevel)")

                    deductionScore = Double(deductions)!

                    finalPivotValue = String(format: "%.2f", pivottt)
                    finalNoHoldValue = String(format: "%.2f", noHolddd)
                    finalTriangleValue = String(format: "%.2f", triangleee)
                    finalTwizzlesValue = String(format: "%.2f", twizzlesss)
                    finalMovesValue = String(format: "%.2f", movesss)
                    let componentScore = Double(compScore)! + Double(presScore)! + Double(ssScore)!
                    finalComponentScore = String(format: "%.2f", (componentScore * 1.3))
                    techScore = pivottt + noHolddd + triangleee + twizzlesss + movesss
                    finalTotalScore = String(format: "%.2f", (techScore + (componentScore * 1.3) - deductionScore))
                }){
                    Text("Calculate")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: 110, maxHeight: 30)
                        .padding(4)
                }
                .background(Color("Navy"))
                .clipShape(Capsule())
                
                //         Spacer()
                
            }
        }
    }
//}

struct OpenShortProgram_Previews: PreviewProvider {
    static var previews: some View {
        OpenShortProgram()
            .environmentObject(Functions())
    }
}
