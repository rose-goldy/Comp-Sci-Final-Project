//
//  ShortProgram.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 3/8/23.
//

import SwiftUI

struct ShortProgram: View {
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
    @State var pivotLevel: String = "Level"
    @State var sNoHoldLevel: String = "Level"
    @State var sNoHoldSteps: String = "Steps"
    @State var triangleI: String = "I"
    @State var trianglePI: String = "PI"
    @State var twizzlesLevel: String = "Level"
    @State var sMovesLevel: String = "Level"
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
    
    func correctSNoHoldLevel (level: String) -> Double {
        if (level) == "0" {
            let sNoHoldValue = (Double(sNoHoldGOE)! * 0.1 * shortNoHold.level00) + shortNoHold.level00
            return sNoHoldValue
        } else if (level) == "1" {
            let sNoHoldValue = (Double(sNoHoldGOE)! * 0.1 * shortNoHold.level01) + shortNoHold.level01
            return sNoHoldValue
        } else if (level) == "2" {
            let sNoHoldValue = (Double(sNoHoldGOE)! * 0.1 * shortNoHold.level02) + shortNoHold.level02
            return sNoHoldValue
        } else if (level) == "3" {
            let sNoHoldValue = (Double(sNoHoldGOE)! * 0.1 * shortNoHold.level03) + shortNoHold.level03
            return sNoHoldValue
        } else {
            let sNoHoldValue = (Double(sNoHoldGOE)! * 0.1 * shortNoHold.level04) + shortNoHold.level04
            return sNoHoldValue
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
            let sMovesValue = (Double(sMovesGOE)! * 0.1 * shortMoves.level00) + shortMoves.level00
            return sMovesValue
        } else if (level) == "1" {
            let sMovesValue = (Double(sMovesGOE)! * 0.1 * shortMoves.level01) + shortMoves.level01
            return sMovesValue
        } else if (level) == "2" {
            let sMovesValue = (Double(sMovesGOE)! * 0.1 * shortMoves.level02) + shortMoves.level02
            return sMovesValue
        } else if (level) == "3" {
            let sMovesValue = (Double(sMovesGOE)! * 0.1 * shortMoves.level03) + shortMoves.level03
            return sMovesValue
        } else {
            let sMovesValue = (Double(sMovesGOE)! * 0.1 * shortMoves.level04) + shortMoves.level04
            return sMovesValue
        }
    }
    
    var body: some View {
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
                                sNoHoldLevel = "0"
                            }, label: {
                                Text("BV")
                            })
                            Button(action: {
                                sNoHoldLevel = "1"
                            }, label: {
                                Text("1")
                            })
                            Button(action: {
                                sNoHoldLevel = "2"
                            }, label: {
                                Text("2")
                            })
                            Button(action: {
                                sNoHoldLevel = "3"
                            }, label: {
                                Text("3")
                            })
                            Button(action: {
                                sNoHoldLevel = "4"
                            }, label: {
                                Text("4")
                            })
                            
                        } label: {
                            Text("\(sNoHoldLevel)")
                        }
                        
                        Menu {
                            Button(action: {
                                sNoHoldSteps = "0"
                            }, label: {
                                Text("BV")
                            })
                            
                        } label: {
                            Text("\(sNoHoldSteps)")
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
                                sMovesLevel = "0"
                            }, label: {
                                Text("BV")
                            })
                            Button(action: {
                                sMovesLevel = "1"
                            }, label: {
                                Text("1")
                            })
                            Button(action: {
                                sMovesLevel = "2"
                            }, label: {
                                Text("2")
                            })
                            Button(action: {
                                sMovesLevel = "3"
                            }, label: {
                                Text("3")
                            })
                            Button(action: {
                                sMovesLevel = "4"
                            }, label: {
                                Text("4")
                            })
                            
                        } label: {
                            Text("\(sMovesLevel)")
                        }
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
                    
                VStack {
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
                        .background(.blue)
                        .padding(5)
                        .cornerRadius(30)
                        .padding(26)
                }
                
            Button(action: {
                let pivottt = correctPivotLevel (level: "\(pivotLevel)")
                let sNoHolddd = correctSNoHoldLevel(level: "\(sNoHoldLevel)")
                let triangleee = correctTriangleLevel(I: "\(triangleI)", PI: "\(trianglePI)")
                let twizzlesss = correctTwizzlesLevel(level: "\(twizzlesLevel)")
                let sMovesss = correctSMovesLevel(level: "\(sMovesLevel)")
                
                deductionScore = Double(deductions)!
                
                finalPivotValue = String(format: "%.2f", pivottt)
                finalSNoHoldValue = String(format: "%.2f", sNoHolddd)
                finalTriangleValue = String(format: "%.2f", triangleee)
                finalTwizzlesValue = String(format: "%.2f", twizzlesss)
                finalsMovesValue = String(format: "%.2f", sMovesss)
                let componentScore = Double(compScore)! + Double(presScore)! + Double(ssScore)!
                finalComponentScore = String(format: "%.2f", (componentScore * 1.3))
                techScore = pivottt + sNoHolddd + triangleee + twizzlesss + sMovesss
                finalTotalScore = String(format: "%.2f", (techScore + (componentScore * 1.3) - deductionScore))
            }){
                Text("Calculate")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: 110, maxHeight: 30)
                    .padding(4)
            }
            .background(Color.blue)
            .clipShape(Capsule())
            
                Spacer()
                
            }
        }
    }
    
    
    struct ShortProgram_Previews: PreviewProvider {
        static var previews: some View {
            ShortProgram()
        }
    }

