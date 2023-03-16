//
//  OpenShortProgram.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 3/15/23.
//

import SwiftUI

//class OpenShortProgram: ObservableObject {
    struct OpenShortProgram: View {
        @EnvironmentObject var functions = Functions
        
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
        
        
        //   var shortElements: [String] = [firstElement, secondElement, thirdElement, fourthElement, fifthElement]
        //  var shortElements: [String] = ["\(firstElement)", "\(secondElement)", "\(thirdElement)", "\(fourthElement)", "\(fifthElement)"]
        
        var body: some View {
            VStack (spacing: 2) {
                
                //       Spacer()
                
       //         var shortElements: [String] = [firstElement, secondElement, thirdElement, fourthElement, fifthElement]
                
        //        VStack (spacing: 23) {
//                    ForEach(0...shortElements.count-1, id: \.self) {index in
//                        if index == "Pivot Block" {
//                            HStack{
//                                Menu {
//                                    Button(action: {
//                                        pivotLevel = "0"
//                                    }, label: {
//                                        Text("BV")
//                                    })
//                                    Button(action: {
//                                        pivotLevel = "1"
//                                    }, label: {
//                                        Text("1")
//                                    })
//                                    Button(action: {
//                                        pivotLevel = "2"
//                                    }, label: {
//                                        Text("2")
//                                    })
//                                    Button(action: {
//                                        pivotLevel = "3"
//                                    }, label: {
//                                        Text("3")
//                                    })
//                                    Button(action: {
//                                        pivotLevel = "4"
//                                    }, label: {
//                                        Text("4")
//                                    })
//
//                                } label: {
//                                    Text("\(pivotLevel)")
//                                }
//
//                                TextField("GOE", text: $pivotGOE)
//                                    .gOEInput()
//
//                                Text("\(finalPivotValue)")
//                                    .elementResult()
//
//                            }
//                        } else if index == "No Hold" {
//                            HStack (spacing: 8) {
//                                Menu {
//                                    Button(action: {
//                                        noHoldLevel = "0"
//                                    }, label: {
//                                        Text("BV")
//                                    })
//                                    Button(action: {
//                                        noHoldLevel = "1"
//                                    }, label: {
//                                        Text("1")
//                                    })
//                                    Button(action: {
//                                        noHoldLevel = "2"
//                                    }, label: {
//                                        Text("2")
//                                    })
//                                    Button(action: {
//                                        noHoldLevel = "3"
//                                    }, label: {
//                                        Text("3")
//                                    })
//                                    Button(action: {
//                                        noHoldLevel = "4"
//                                    }, label: {
//                                        Text("4")
//                                    })
//
//                                } label: {
//                                    Text("\(noHoldLevel)")
//                                }
//
//                                Menu {
//                                    Button(action: {
//                                        noHoldSteps = "0"
//                                    }, label: {
//                                        Text("BV")
//                                    })
//
//                                } label: {
//                                    Text("\(noHoldSteps)")
//                                }
//
//                                TextField("GOE", text: $noHoldGOE)
//                                    .gOEInput()
//
//                                Text("\(finalNoHoldValue)")
//                                    .elementResult()
//
//                            }
//                        } else if index == "Triangle Intersection" {
//                            HStack (spacing: 14) {
//                                Menu {
//                                    Button(action: {
//                                        triangleI = "0"
//                                    }, label: {
//                                        Text("BV")
//                                    })
//                                    Button(action: {
//                                        triangleI = "1"
//                                    }, label: {
//                                        Text("1")
//                                    })
//                                    Button(action: {
//                                        triangleI = "2"
//                                    }, label: {
//                                        Text("2")
//                                    })
//                                    Button(action: {
//                                        triangleI = "3"
//                                    }, label: {
//                                        Text("3")
//                                    })
//                                    Button(action: {
//                                        triangleI = "4"
//                                    }, label: {
//                                        Text("4")
//                                    })
//
//                                } label: {
//                                    Text("\(triangleI)")
//                                }
//
//                                Menu {
//                                    Button(action: {
//                                        trianglePI = "0"
//                                    }, label: {
//                                        Text("BV")
//                                    })
//                                    Button(action: {
//                                        trianglePI = "1"
//                                    }, label: {
//                                        Text("1")
//                                    })
//                                    Button(action: {
//                                        trianglePI = "2"
//                                    }, label: {
//                                        Text("2")
//                                    })
//                                    Button(action: {
//                                        trianglePI = "3"
//                                    }, label: {
//                                        Text("3")
//                                    })
//                                    Button(action: {
//                                        trianglePI = "4"
//                                    }, label: {
//                                        Text("4")
//                                    })
//
//                                } label: {
//                                    Text("\(trianglePI)")
//                                }
//
//                                TextField("GOE", text: $triangleGOE)
//                                    .gOEInput()
//
//                                Text("\(finalTriangleValue)")
//                                    .elementResult()
//
//                            }
//                        } else if index == "Twizzles" {
//                            HStack{
//                                Menu {
//                                    Button(action: {
//                                        twizzlesLevel = "0"
//                                    }, label: {
//                                        Text("BV")
//                                    })
//                                    Button(action: {
//                                        twizzlesLevel = "1"
//                                    }, label: {
//                                        Text("1")
//                                    })
//                                    Button(action: {
//                                        twizzlesLevel = "2"
//                                    }, label: {
//                                        Text("2")
//                                    })
//                                    Button(action: {
//                                        twizzlesLevel = "3"
//                                    }, label: {
//                                        Text("3")
//                                    })
//                                    Button(action: {
//                                        twizzlesLevel = "4"
//                                    }, label: {
//                                        Text("4")
//                                    })
//
//                                } label: {
//                                    Text("\(twizzlesLevel)")
//                                }
//
//                                TextField("GOE", text: $twizzlesGOE)
//                                    .gOEInput()
//
//                                Text("\(finalTwizzlesValue)")
//                                    .elementResult()
//
//                            }
//                        } else {
//                            HStack{
//                                Menu {
//                                    Button(action: {
//                                        movesLevel = "0"
//                                    }, label: {
//                                        Text("BV")
//                                    })
//                                    Button(action: {
//                                        movesLevel = "1"
//                                    }, label: {
//                                        Text("1")
//                                    })
//                                    Button(action: {
//                                        movesLevel = "2"
//                                    }, label: {
//                                        Text("2")
//                                    })
//                                    Button(action: {
//                                        movesLevel = "3"
//                                    }, label: {
//                                        Text("3")
//                                    })
//                                    Button(action: {
//                                        movesLevel = "4"
//                                    }, label: {
//                                        Text("4")
//                                    })
//
//                                } label: {
//                                    Text("\(movesLevel)")
//                                }
//
//                                TextField("GOE", text: $movesGOE)
//                                    .gOEInput()
//
//                                Text("\(finalMovesValue)")
//                                    .elementResult()
//                            }
//                        }
//                    }
                    
       //         }
                
                Text("Technical Score")
                    .breakdownTitle()
                    .padding()
                
                HStack{
                    Menu {
                        Button(action: {
                            firstElement = "Pivot Block"
                        }, label: {
                            Text("Pivot Block")
                        })
                        Button(action: {
                            firstElement = "No Hold"
                        }, label: {
                            Text("No Hold")
                        })
                        Button(action: {
                            firstElement = "Triangle Intersection"
                        }, label: {
                            Text("Triangle Intersection")
                        })
                        Button(action: {
                            firstElement = "Twizzles"
                        }, label: {
                            Text("Twizzles")
                        })
                        Button(action: {
                            firstElement = "Moves"
                        }, label: {
                            Text("Moves")
                        })
                        
                    } label: {
                        Text("\(firstElement)")
                            .padding()
                    }
                    
                }
                
                HStack{
                    Menu {
                        Button(action: {
                            secondElement = "Pivot Block"
                        }, label: {
                            Text("Pivot Block")
                        })
                        Button(action: {
                            secondElement = "No Hold"
                        }, label: {
                            Text("No Hold")
                        })
                        Button(action: {
                            secondElement = "Triangle Intersection"
                        }, label: {
                            Text("Triangle Intersection")
                        })
                        Button(action: {
                            secondElement = "Twizzles"
                        }, label: {
                            Text("Twizzles")
                        })
                        Button(action: {
                            secondElement = "Moves"
                        }, label: {
                            Text("Moves")
                        })
                        
                    } label: {
                        Text("\(secondElement)")
                            .padding()
                    }
                }
                
                Spacer()
                
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
                }
                
                Spacer()
                
                HStack (spacing: 18) {
                    Text("Deductions")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                    
                    TextField("Points", text: $deductions)
                        .textFieldStyle(.roundedBorder)
                        .font(.callout)
                        .font(.caption)
                        .frame(maxWidth:65, maxHeight: 40)
                }
                
                HStack {
                    Text("Total Score")
                        .breakdownTitle()
                    
                    Text("\(finalTotalScore)")
                        .frame(maxWidth: 70, maxHeight: 34)
                        .foregroundColor(.white)
                        .background(Color("Navy"))
                        .cornerRadius(6)
                        .padding(26)
                }
                
                Button(action: {
                    let pivottt = Functions.correctPivotLevel (level: "\(pivotLevel)")
                    let noHolddd = Functions.correctNoHoldLevel(level: "\(triangleI)", steps: "\(trianglePI)")
                    let triangleee = Functions.correctTriangleLevel(I: "\(triangleI)", PI: "\(trianglePI)")
                    let twizzlesss = Functions.correctTwizzlesLevel(level: "\(twizzlesLevel)")
                    let movesss = Functions.correctSMovesLevel(level: "\(movesLevel)")
                    
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
    }
}
