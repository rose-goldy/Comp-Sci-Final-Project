//
//  ElementDetail.swift
//  AP App
//

import SwiftUI

struct ElementDetail: View {
    
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
        
        VStack{
            
            HStack {
                Menu {
                    ForEach(0...possibleSElements.count-1, id: \.self) {trial in
                        Button(action: {
                            firstElement = "\(possibleSElements[trial])"
                        }, label: {
                            Text("\(possibleSElements[trial])")
                                .frame(maxWidth: 200)
                        })
                    }
                    
                } label: {
                    Text("\(firstElement)")
                        .frame(maxWidth: 165)
                        .padding()
                }
                if firstElement == "Pivot Block" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                pivotLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(pivotLevel)")
                    }
                    
                    TextField("GOE", text: $pivotGOE)
                        .gOEInput()
                    
                    Text("\(finalPivotValue)")
                        .elementResult()
                } else if firstElement == "No Hold" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                noHoldLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
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
                    
                    TextField("GOE", text: $noHoldGOE)
                        .gOEInput()
                    
                    Text("\(finalNoHoldValue)")
                        .elementResult()
                } else if firstElement == "Triangle Intersection" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                triangleI = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(triangleI)")
                    }
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                trianglePI = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                    } label: {
                        Text("\(trianglePI)")
                    }
                    
                    TextField("GOE", text: $triangleGOE)
                        .gOEInput()
                    
                    Text("\(finalTriangleValue)")
                        .elementResult()
                    
                } else if firstElement == "Twizzles" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                twizzlesLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                    } label: {
                        Text("\(twizzlesLevel)")
                    }
                    
                    TextField("GOE", text: $twizzlesGOE)
                        .gOEInput()
                    
                    Text("\(finalTwizzlesValue)")
                        .elementResult()
                } else {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                movesLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(movesLevel)")
                    }
                    
                    TextField("GOE", text: $movesGOE)
                        .gOEInput()
                    
                    Text("\(finalMovesValue)")
                        .elementResult()
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack{
                Menu {
                    ForEach(0...possibleSElements.count-1, id: \.self) {trial in
                        Button(action: {
                            secondElement = "\(possibleSElements[trial])"
                        }, label: {
                            Text("\(possibleSElements[trial])")
                        })
                    }
                    
                } label: {
                    Text("\(secondElement)")
                        .frame(maxWidth: 165)
                        .padding()
                }
                //                   functions.setUp(element: firstElement)
                //closure, subview
                if secondElement == "Pivot Block" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                pivotLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(pivotLevel)")
                    }
                    
                    TextField("GOE", text: $pivotGOE)
                        .gOEInput()
                    
                    Text("\(finalPivotValue)")
                        .elementResult()
                } else if secondElement == "No Hold" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                noHoldLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
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
                    
                    TextField("GOE", text: $noHoldGOE)
                        .gOEInput()
                    
                    Text("\(finalNoHoldValue)")
                        .elementResult()
                } else if secondElement == "Triangle Intersection" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                triangleI = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(triangleI)")
                    }
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                trianglePI = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                    } label: {
                        Text("\(trianglePI)")
                    }
                    
                    TextField("GOE", text: $triangleGOE)
                        .gOEInput()
                    
                    Text("\(finalTriangleValue)")
                        .elementResult()
                    
                } else if secondElement == "Twizzles" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                twizzlesLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                    } label: {
                        Text("\(twizzlesLevel)")
                    }
                    
                    TextField("GOE", text: $twizzlesGOE)
                        .gOEInput()
                    
                    Text("\(finalTwizzlesValue)")
                        .elementResult()
                } else {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                movesLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(movesLevel)")
                    }
                    
                    TextField("GOE", text: $movesGOE)
                        .gOEInput()
                    
                    Text("\(finalMovesValue)")
                        .elementResult()
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack{
                Menu {
                    ForEach(0...possibleSElements.count-1, id: \.self) {trial in
                        Button(action: {
                            thirdElement = "\(possibleSElements[trial])"
                        }, label: {
                            Text("\(possibleSElements[trial])")
                        })
                    }
                    
                } label: {
                    Text("\(thirdElement)")
                        .frame(maxWidth: 165)
                        .padding()
                }
                //                   functions.setUp(element: firstElement)
                //closure, subview
                if thirdElement == "Pivot Block" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                pivotLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(pivotLevel)")
                    }
                    
                    TextField("GOE", text: $pivotGOE)
                        .gOEInput()
                    
                    Text("\(finalPivotValue)")
                        .elementResult()
                } else if thirdElement == "No Hold" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                noHoldLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
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
                    
                    TextField("GOE", text: $noHoldGOE)
                        .gOEInput()
                    
                    Text("\(finalNoHoldValue)")
                        .elementResult()
                } else if thirdElement == "Triangle Intersection" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                triangleI = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(triangleI)")
                    }
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                trianglePI = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                    } label: {
                        Text("\(trianglePI)")
                    }
                    
                    TextField("GOE", text: $triangleGOE)
                        .gOEInput()
                    
                    Text("\(finalTriangleValue)")
                        .elementResult()
                    
                } else if thirdElement == "Twizzles" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                twizzlesLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                    } label: {
                        Text("\(twizzlesLevel)")
                    }
                    
                    TextField("GOE", text: $twizzlesGOE)
                        .gOEInput()
                    
                    Text("\(finalTwizzlesValue)")
                        .elementResult()
                } else {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                movesLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(movesLevel)")
                    }
                    
                    TextField("GOE", text: $movesGOE)
                        .gOEInput()
                    
                    Text("\(finalMovesValue)")
                        .elementResult()
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack{
                Menu {
                    ForEach(0...possibleSElements.count-1, id: \.self) {trial in
                        Button(action: {
                            fourthElement = "\(possibleSElements[trial])"
                        }, label: {
                            Text("\(possibleSElements[trial])")
                        })
                    }
                    
                } label: {
                    Text("\(fourthElement)")
                        .frame(maxWidth: 165)
                        .padding()
                }
                if fourthElement == "Pivot Block" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                pivotLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(pivotLevel)")
                    }
                    
                    TextField("GOE", text: $pivotGOE)
                        .gOEInput()
                    
                    Text("\(finalPivotValue)")
                        .elementResult()
                } else if fourthElement == "No Hold" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                noHoldLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
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
                    
                    TextField("GOE", text: $noHoldGOE)
                        .gOEInput()
                    
                    Text("\(finalNoHoldValue)")
                        .elementResult()
                } else if fourthElement == "Triangle Intersection" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                triangleI = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(triangleI)")
                    }
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                trianglePI = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                    } label: {
                        Text("\(trianglePI)")
                    }
                    
                    TextField("GOE", text: $triangleGOE)
                        .gOEInput()
                    
                    Text("\(finalTriangleValue)")
                        .elementResult()
                    
                } else if fourthElement == "Twizzles" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                twizzlesLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                    } label: {
                        Text("\(twizzlesLevel)")
                    }
                    
                    TextField("GOE", text: $twizzlesGOE)
                        .gOEInput()
                    
                    Text("\(finalTwizzlesValue)")
                        .elementResult()
                } else {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                movesLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(movesLevel)")
                    }
                    
                    TextField("GOE", text: $movesGOE)
                        .gOEInput()
                    
                    Text("\(finalMovesValue)")
                        .elementResult()
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack{ 
                Menu {
                    ForEach(0...possibleSElements.count-1, id: \.self) {trial in
                        Button(action: {
                            fifthElement = "\(possibleSElements[trial])"
                        }, label: {
                            Text("\(possibleSElements[trial])")
                        })
                    }
                    
                } label: {
                    Text("\(fifthElement)")
                        .frame(maxWidth: 165)
                        .padding()
                }
                //                   functions.setUp(element: firstElement)
                //closure, subview
                if fifthElement == "Pivot Block" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                pivotLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(pivotLevel)")
                    }
                    
                    TextField("GOE", text: $pivotGOE)
                        .gOEInput()
                    
                    Text("\(finalPivotValue)")
                        .elementResult()
                } else if fifthElement == "No Hold" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                noHoldLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
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
                    
                    TextField("GOE", text: $noHoldGOE)
                        .gOEInput()
                    
                    Text("\(finalNoHoldValue)")
                        .elementResult()
                } else if fifthElement == "Triangle Intersection" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                triangleI = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(triangleI)")
                    }
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                trianglePI = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                    } label: {
                        Text("\(trianglePI)")
                    }
                    
                    TextField("GOE", text: $triangleGOE)
                        .gOEInput()
                    
                    Text("\(finalTriangleValue)")
                        .elementResult()
                    
                } else if fifthElement == "Twizzles" {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                twizzlesLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                    } label: {
                        Text("\(twizzlesLevel)")
                    }
                    
                    TextField("GOE", text: $twizzlesGOE)
                        .gOEInput()
                    
                    Text("\(finalTwizzlesValue)")
                        .elementResult()
                } else {
                    Menu {
                        ForEach(0...4, id: \.self) {index in
                            Button(action: {
                                movesLevel = "\(index)"
                            }, label: {
                                Text("\(index)")
                            })
                        }
                        
                    } label: {
                        Text("\(movesLevel)")
                    }
                    
                    TextField("GOE", text: $movesGOE)
                        .gOEInput()
                    
                    Text("\(finalMovesValue)")
                        .elementResult()
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        
    }
}

struct ElementDetail_Previews: PreviewProvider {
    static var previews: some View {
        ElementDetail()
            .environmentObject(Functions())
    }
}
