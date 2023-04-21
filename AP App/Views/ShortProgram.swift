//
//  ShortProgram.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 3/8/23.
//

import SwiftUI

struct ShortProgram: View {
    @EnvironmentObject var functions: Functions
    
    @State var pivotGOE: String = ""
    @State var noHoldGOE: String = ""
    @State var triangleGOE: String = ""
    @State var twizzlesGOE: String = ""
    @State var movesGOE: String = ""
    @State var finalPivotValue: String = ""
    @State var finalSNoHoldValue: String = ""
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
    
    func correctPivotLevel (level: String) -> Double {
        if (level) == "0" {
            let pivotValue = (Double(pivotGOE)! * 0.1 * pivotBlock.level00) + pivotBlock.level00
            return pivotValue
        } else if (level) == "1" {
            let pivotValue = (Double(pivotGOE)! * 0.1 * pivotBlock.level01) + pivotBlock.level01
            return pivotValue
        } else if (level) == "2" {
            let pivotValue = (Double(pivotGOE)! * 0.1 * pivotBlock.level02) + pivotBlock.level02
            return pivotValue
        } else if (level) == "3" {
            let pivotValue = (Double(pivotGOE)! * 0.1 * pivotBlock.level03) + pivotBlock.level03
            return pivotValue
        } else {
            let pivotValue = (Double(pivotGOE)! * 0.1 * pivotBlock.level04) + pivotBlock.level04
            return pivotValue
        }
    }
    
    func correctNoHoldLevel (level: String, steps: String) -> Double {
        if level == "0" && steps == "0" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level00) + noHold.level00
            return noHoldValue
        } else if level == "0" && steps == "1" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level01) + noHold.level01
            return noHoldValue
        } else if level == "0" && steps == "2" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level02) + noHold.level02
            return noHoldValue
        } else if level == "0" && steps == "3" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level03) + noHold.level03
            return noHoldValue
        } else if level == "0" && steps == "4" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level04) + noHold.level04
            return noHoldValue
        } else if level == "1" && steps == "0" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level10) + noHold.level10
            return noHoldValue
        } else if level == "1" && steps == "1" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level11) + noHold.level11
            return noHoldValue
        } else if level == "1" && steps == "2" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level12) + noHold.level12
            return noHoldValue
        } else if level == "1" && steps == "3" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level13) + noHold.level13
            return noHoldValue
        } else if level == "1" && steps == "4" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level14) + noHold.level14
            return noHoldValue
        } else if level == "2" && steps == "0" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level20) + noHold.level20
            return noHoldValue
        } else if level == "2" && steps == "1" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level21) + noHold.level21
            return noHoldValue
        } else if level == "2" && steps == "2" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level22) + noHold.level22
            return noHoldValue
        } else if level == "2" && steps == "3" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level23) + noHold.level23
            return noHoldValue
        } else if level == "2" && steps == "4" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level24) + noHold.level24
            return noHoldValue
        } else if level == "3" && steps == "0" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level30) + noHold.level30
            return noHoldValue
        } else if level == "3" && steps == "1" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level31) + noHold.level31
            return noHoldValue
        } else if level == "3" && steps == "2" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level32) + noHold.level32
            return noHoldValue
        } else if level == "3" && steps == "3" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level33) + noHold.level33
            return noHoldValue
        } else if level == "3" && steps == "4" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level34) + noHold.level34
            return noHoldValue
        } else if level == "4" && steps == "0" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level40) + noHold.level40
            return noHoldValue
        } else if level == "4" && steps == "1" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level41) + noHold.level41
            return noHoldValue
        } else if level == "4" && steps == "2" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level42) + noHold.level42
            return noHoldValue
        } else if level == "4" && steps == "3" {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level43) + noHold.level43
            return noHoldValue
        } else {
            let noHoldValue = (Double(noHoldGOE)! * 0.1 * noHold.level44) + noHold.level44
            return noHoldValue
        }
    }
    
    func correctTriangleLevel (I: String, PI: String) -> Double {
        if I == "0" && PI == "0" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level00) + triangle.level00
            return triangleValue
        } else if I == "0" && PI == "1" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level01) + triangle.level01
            return triangleValue
        } else if I == "0" && PI == "2" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level02) + triangle.level02
            return triangleValue
        } else if I == "0" && PI == "3" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level03) + triangle.level03
            return triangleValue
        } else if I == "0" && PI == "4" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level04) + triangle.level04
            return triangleValue
        } else if I == "1" && PI == "0" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level10) + triangle.level10
            return triangleValue
        } else if I == "1" && PI == "1" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level11) + triangle.level11
            return triangleValue
        } else if I == "1" && PI == "2" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level12) + triangle.level12
            return triangleValue
        } else if I == "1" && PI == "3" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level13) + triangle.level13
            return triangleValue
        } else if I == "1" && PI == "4" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level14) + triangle.level14
            return triangleValue
        } else if I == "2" && PI == "0" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level20) + triangle.level20
            return triangleValue
        } else if I == "2" && PI == "1" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level21) + triangle.level21
            return triangleValue
        } else if I == "2" && PI == "2" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level22) + triangle.level22
            return triangleValue
        } else if I == "2" && PI == "3" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level23) + triangle.level23
            return triangleValue
        } else if I == "2" && PI == "4" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level24) + triangle.level24
            return triangleValue
        } else if I == "3" && PI == "0" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level30) + triangle.level30
            return triangleValue
        } else if I == "3" && PI == "1" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level31) + triangle.level31
            return triangleValue
        } else if I == "3" && PI == "2" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level32) + triangle.level32
            return triangleValue
        } else if I == "3" && PI == "3" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level33) + triangle.level33
            return triangleValue
        } else if I == "3" && PI == "4" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level34) + triangle.level34
            return triangleValue
        } else if I == "4" && PI == "0" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level40) + triangle.level40
            return triangleValue
        } else if I == "4" && PI == "1" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level41) + triangle.level41
            return triangleValue
        } else if I == "4" && PI == "2" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level42) + triangle.level42
            return triangleValue
        } else if I == "4" && PI == "3" {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level43) + triangle.level43
            return triangleValue
        } else {
            let triangleValue = (Double(triangleGOE)! * 0.1 * triangle.level44) + triangle.level44
            return triangleValue
        }
    }
    
    func correctTwizzlesLevel (level: String) -> Double {
        if (level) == "0" {
            let twizzlesValue = (Double(twizzlesGOE)! * 0.1 * twizzles.level00) + twizzles.level00
            return twizzlesValue
        } else if (level) == "1" {
            let twizzlesValue = (Double(twizzlesGOE)! * 0.1 * twizzles.level01) + twizzles.level01
            return twizzlesValue
        } else if (level) == "2" {
            let twizzlesValue = (Double(twizzlesGOE)! * 0.1 * twizzles.level02) + twizzles.level02
            return twizzlesValue
        } else if (level) == "3" {
            let twizzlesValue = (Double(twizzlesGOE)! * 0.1 * twizzles.level03) + twizzles.level03
            return twizzlesValue
        } else {
            let twizzlesValue = (Double(twizzlesGOE)! * 0.1 * twizzles.level04) + twizzles.level04
            return twizzlesValue
        }
    }
    
    func correctSMovesLevel (level: String) -> Double {
        if (level) == "0" {
            let movesValue = (Double(movesGOE)! * 0.1 * moves.level00) + moves.level00
            return movesValue
        } else if (level) == "1" {
            let movesValue = (Double(movesGOE)! * 0.1 * moves.level01) + moves.level01
            return movesValue
        } else if (level) == "2" {
            let movesValue = (Double(movesGOE)! * 0.1 * moves.level02) + moves.level02
            return movesValue
        } else if (level) == "3" {
            let movesValue = (Double(movesGOE)! * 0.1 * moves.level03) + moves.level03
            return movesValue
        } else {
            let movesValue = (Double(movesGOE)! * 0.1 * moves.level04) + moves.level04
            return movesValue
        }
    }
    
    var body: some View {
        NavigationView{
            
            VStack (spacing: 2) {
                
                //       Spacer()
                
                Text("Technical Score")
                    .breakdownTitle()
                    .padding()
                
                HStack (spacing: 6) {
                    VStack (spacing: 23) {
                        ForEach(0...shortElements.count-1, id: \.self) {index in
                            Text(shortElements[index].text)
                                .elementTitle()
                        }
                        
                    }
                    VStack (spacing: 22) {
                        
                        Menu {
                            Button(action: {
                                pivotLevel = "0"
                            }, label: {
                                Text("BV")
                            })
                            Button(action: {
                                pivotLevel = "1"
                            }, label: {
                                Text("1")
                            })
                            Button(action: {
                                pivotLevel = "2"
                            }, label: {
                                Text("2")
                            })
                            Button(action: {
                                pivotLevel = "3"
                            }, label: {
                                Text("3")
                            })
                            Button(action: {
                                pivotLevel = "4"
                            }, label: {
                                Text("4")
                            })
                            
                        } label: {
                            Text("\(pivotLevel)")
                        }
                        
                        HStack (spacing: 8) {
                            Menu {
                                Button(action: {
                                    noHoldLevel = "0"
                                }, label: {
                                    Text("BV")
                                })
                                Button(action: {
                                    noHoldLevel = "1"
                                }, label: {
                                    Text("1")
                                })
                                Button(action: {
                                    noHoldLevel = "2"
                                }, label: {
                                    Text("2")
                                })
                                Button(action: {
                                    noHoldLevel = "3"
                                }, label: {
                                    Text("3")
                                })
                                Button(action: {
                                    noHoldLevel = "4"
                                }, label: {
                                    Text("4")
                                })
                                
                            } label: {
                                Text("\(noHoldLevel)")
                            }
                            
                            Menu {
                                Button(action: {
                                    noHoldSteps = "0"
                                }, label: {
                                    Text("BV")
                                })
                                
                            } label: {
                                Text("\(noHoldSteps)")
                            }
                        }
                        
                        HStack (spacing: 14) {
                            Menu {
                                Button(action: {
                                    triangleI = "0"
                                }, label: {
                                    Text("BV")
                                })
                                Button(action: {
                                    triangleI = "1"
                                }, label: {
                                    Text("1")
                                })
                                Button(action: {
                                    triangleI = "2"
                                }, label: {
                                    Text("2")
                                })
                                Button(action: {
                                    triangleI = "3"
                                }, label: {
                                    Text("3")
                                })
                                Button(action: {
                                    triangleI = "4"
                                }, label: {
                                    Text("4")
                                })
                                
                            } label: {
                                Text("\(triangleI)")
                            }
                            
                            Menu {
                                Button(action: {
                                    trianglePI = "0"
                                }, label: {
                                    Text("BV")
                                })
                                Button(action: {
                                    trianglePI = "1"
                                }, label: {
                                    Text("1")
                                })
                                Button(action: {
                                    trianglePI = "2"
                                }, label: {
                                    Text("2")
                                })
                                Button(action: {
                                    trianglePI = "3"
                                }, label: {
                                    Text("3")
                                })
                                Button(action: {
                                    trianglePI = "4"
                                }, label: {
                                    Text("4")
                                })
                                
                            } label: {
                                Text("\(trianglePI)")
                            }
                        }
                        
                        Menu {
                            Button(action: {
                                twizzlesLevel = "0"
                            }, label: {
                                Text("BV")
                            })
                            Button(action: {
                                twizzlesLevel = "1"
                            }, label: {
                                Text("1")
                            })
                            Button(action: {
                                twizzlesLevel = "2"
                            }, label: {
                                Text("2")
                            })
                            Button(action: {
                                twizzlesLevel = "3"
                            }, label: {
                                Text("3")
                            })
                            Button(action: {
                                twizzlesLevel = "4"
                            }, label: {
                                Text("4")
                            })
                            
                        } label: {
                            Text("\(twizzlesLevel)")
                        }
                        
                        Menu {
                            Button(action: {
                                movesLevel = "0"
                            }, label: {
                                Text("BV")
                            })
                            Button(action: {
                                movesLevel = "1"
                            }, label: {
                                Text("1")
                            })
                            Button(action: {
                                movesLevel = "2"
                            }, label: {
                                Text("2")
                            })
                            Button(action: {
                                movesLevel = "3"
                            }, label: {
                                Text("3")
                            })
                            Button(action: {
                                movesLevel = "4"
                            }, label: {
                                Text("4")
                            })
                            
                        } label: {
                            Text("\(movesLevel)")
                        }
                    }
                    
                    VStack (spacing: 8) {
                        TextField("GOE", text: $pivotGOE)
                            .gOEInput()
                        TextField("GOE", text: $noHoldGOE)
                            .gOEInput()
                        TextField("GOE", text: $triangleGOE)
                            .gOEInput()
                        TextField("GOE", text: $twizzlesGOE)
                            .gOEInput()
                        TextField("GOE", text: $movesGOE)
                            .gOEInput()
                    }
                    
                    VStack (spacing: 19.5) {
                        Text("\(finalPivotValue)")
                            .elementResult()
                        Text("\(finalSNoHoldValue)")
                            .elementResult()
                        Text("\(finalTriangleValue)")
                            .elementResult()
                        Text("\(finalTwizzlesValue)")
                            .elementResult()
                        Text("\(finalMovesValue)")
                            .elementResult()
                        //          Text("\(techScore)")
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
                    //                  VStack{
                    //                       Text("Total:")
                    //                       .font(.title3)
                    //                        .foregroundColor(Color("Navy"))
                    //                     Text("\(finalComponentScore)")
                    //                        .elementResult()
                    //                  }
                    //         }
                    
                    
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
                
                HStack (spacing: 20){
                    Button(action: {
                        let pivottt = correctPivotLevel (level: "\(pivotLevel)")
                        let noHolddd = correctNoHoldLevel(level: "\(triangleI)", steps: "\(trianglePI)")
                        let triangleee = correctTriangleLevel(I: "\(triangleI)", PI: "\(trianglePI)")
                        let twizzlesss = correctTwizzlesLevel(level: "\(twizzlesLevel)")
                        let movesss = correctSMovesLevel(level: "\(movesLevel)")
                        
                        deductionScore = Double(deductions)!
                        
                        finalPivotValue = String(format: "%.2f", pivottt)
                        finalSNoHoldValue = String(format: "%.2f", noHolddd)
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
                            .frame(maxWidth: 110, maxHeight: 42)
                            .padding(4)
                    }
                    .background(Color("Navy"))
                    .clipShape(Capsule())
                    
                    NavigationLink {
                        OneTeamView()
                    } label: {
                        LeaveCalculator(text: "View Rankings")
                    }
                }
                
                Spacer()
                
            }
            //      .navigationBarHidden(true)
        }
        }
    }
    
    
    struct ShortProgram_Previews: PreviewProvider {
        static var previews: some View {
            ShortProgram()
                .environmentObject(Functions())
        }
    }

