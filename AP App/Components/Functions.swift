//
//  Functions.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 3/15/23.
//

import Foundation
import SwiftUI

class Functions: ObservableObject {
    @State private var pivotGOE: String = ""
    @State private var noHoldGOE: String = ""
    @State private var triangleGOE: String = ""
    @State private var twizzlesGOE: String = ""
    @State private var movesGOE: String = ""
    @Published private(set) var finalPivotValue: String = ""
    @Published private(set) var finalNoHoldValue: String = ""
    @Published private(set) var finalTriangleValue: String = ""
    @Published private(set) var finalTwizzlesValue: String = ""
    @Published private(set) var finalMovesValue: String = ""
    @Published private(set) var pivotLevel: String = "Level"
    @Published private(set) var noHoldLevel: String = "Level"
    @Published private(set) var noHoldSteps: String = "Steps"
    @Published private(set) var triangleI: String = "I"
    @Published private(set) var trianglePI: String = "PI"
    @Published private(set) var twizzlesLevel: String = "Level"
    @Published private(set) var movesLevel: String = "Level"
    @Published private(set) var compScore: String = ""
    @Published private(set) var presScore: String = ""
    @Published private(set) var ssScore: String = ""
    @Published private(set) var finalComponentScore: String = ""
    @Published private(set) var finalTotalScore: String = ""
    @Published private(set) var techScore: Double = 0.0
    @Published private(set) var deductions: String = ""
    @Published private(set) var deductionScore: Double = 0.0
    @Published var firstElement: String = "Element 1"
    @Published private(set) var secondElement: String = "Element 2"
    @Published private(set) var thirdElement: String = "Element 3"
    @Published private(set) var fourthElement: String = "Element 4"
    @Published private(set) var fifthElement: String = "Element 5"
    @Published private(set) var yourScore: Double = 0.0

    var possibleSElements: [String] = ["Pivot Block", "No Hold", "Triangle Intersection", "Twizzles", "Moves"]

    func reorder (score: Double) {
        //score will be yourScore
        for index in 0...worldTeamAndScoreList.count-1 {
        // (0...worldScoreList.count-1, id:\.self) { index in
            if score > worldScoreList[Int(index)] {
                worldTeamAndScoreList.insert(String(score), at: Int(index))
            } else {
                worldTeamAndScoreList = ["oh no"]
            }
        }
    }


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





//    func setUp(element: String) {
//        Menu {
//            ForEach(0...4, id: \.self) {index in
//                Button(action: {
//                    pivotLevel = "\(index)"
//                }, label: {
//                    Text("\(index)")
//                })
//            }
//
//        } label: {
//            Text("\(pivotLevel)")
//        }
//
//        TextField("GOE", text: $pivotGOE)
//            .gOEInput()
//
//        Text("\(finalPivotValue)")
//            .elementResult()
//    }
//





//    func setUp() {
//        ForEach(0...possibleSElements.count-1, id: \.self) {element in
//            if possibleSElements[element] == "Pivot Block" {
//                HStack{
//                    Menu {
//                        ForEach(0...4, id: \.self) {index in
//                            Button(action: {
//                                pivotLevel = "\(index)"
//                            }, label: {
//                                Text("\(index)")
//                            })
//                        }
//
//                    } label: {
//                        Text("\(pivotLevel)")
//                    }
//
//                    TextField("GOE", text: $pivotGOE)
//                        .gOEInput()
//
//                    Text("\(finalPivotValue)")
//                        .elementResult()
//
//                }
//            } else if possibleSElements[element] == "No Hold" {
//                HStack (spacing: 8) {
//                    Menu {
//                        ForEach(0...4, id: \.self) {index in
//                            Button(action: {
//                                noHoldLevel = "\(index)"
//                            }, label: {
//                                Text("\(index)")
//                            })
//                        }
//
//                    } label: {
//                        Text("\(noHoldLevel)")
//                    }
//
//                    Menu {
//                        Button(action: {
//                            noHoldSteps = "0"
//                        }, label: {
//                            Text("BV")
//                        })
//
//                    } label: {
//                        Text("\(noHoldSteps)")
//                    }
//
//                    TextField("GOE", text: $noHoldGOE)
//                        .gOEInput()
//
//                    Text("\(finalNoHoldValue)")
//                        .elementResult()
//
//                }
//            } else if possibleSElements[element] == "Triangle Intersection" {
//                HStack (spacing: 14) {
//                    Menu {
//                        ForEach(0...4, id: \.self) {index in
//                            Button(action: {
//                                triangleI = "\(index)"
//                            }, label: {
//                                Text("\(index)")
//                            })
//                        }
//
//                    } label: {
//                        Text("\(triangleI)")
//                    }
//
//                    Menu {
//                        ForEach(0...3, id: \.self) {index in
//                            Button(action: {
//                                trianglePI = "\(index)"
//                            }, label: {
//                                Text("\(index)")
//                            })
//                        }
//
//
//                    } label: {
//                        Text("\(trianglePI)")
//                    }
//
//                    TextField("GOE", text: $triangleGOE)
//                        .gOEInput()
//
//                    Text("\(finalTriangleValue)")
//                        .elementResult()
//
//                }
//            } else if possibleSElements[element] == "Twizzles" {
//                HStack{
//                    Menu {
//                        ForEach(0...4, id: \.self) {index in
//                            Button(action: {
//                                twizzlesLevel = "\(index)"
//                            }, label: {
//                                Text("\(index)")
//                            })
//                        }
//
//
//                    } label: {
//                        Text("\(twizzlesLevel)")
//                    }
//
//                    TextField("GOE", text: $twizzlesGOE)
//                        .gOEInput()
//
//                    Text("\(finalTwizzlesValue)")
//                        .elementResult()
//
//                }
//            } else {
//                HStack{
//                    Menu {
//                        ForEach(0...4, id: \.self) {index in
//                            Button(action: {
//                                movesLevel = "\(index)"
//                            }, label: {
//                                Text("\(index)")
//                            })
//                        }
//
//                    } label: {
//                        Text("\(movesLevel)")
//                    }
//
//                    TextField("GOE", text: $movesGOE)
//                        .gOEInput()
//
//                    Text("\(finalMovesValue)")
//                        .elementResult()
//                }
//            }
//        }


//    func elementSetUp (element: String) {
//        if index == "Pivot Block" {
//            HStack{
//                Menu {
//                    Button(action: {
//                        pivotLevel = "0"
//                    }, label: {
//                        Text("BV")
//                    })
//                    Button(action: {
//                        pivotLevel = "1"
//                    }, label: {
//                        Text("1")
//                    })
//                    Button(action: {
//                        pivotLevel = "2"
//                    }, label: {
//                        Text("2")
//                    })
//                    Button(action: {
//                        pivotLevel = "3"
//                    }, label: {
//                        Text("3")
//                    })
//                    Button(action: {
//                        pivotLevel = "4"
//                    }, label: {
//                        Text("4")
//                    })
//
//                } label: {
//                    Text("\(pivotLevel)")
//                }
//
//                TextField("GOE", text: $pivotGOE)
//                    .gOEInput()
//
//                Text("\(finalPivotValue)")
//                    .elementResult()
//
//            }
//        } else if index == "No Hold" {
//            HStack (spacing: 8) {
//                Menu {
//                    Button(action: {
//                        noHoldLevel = "0"
//                    }, label: {
//                        Text("BV")
//                    })
//                    Button(action: {
//                        noHoldLevel = "1"
//                    }, label: {
//                        Text("1")
//                    })
//                    Button(action: {
//                        noHoldLevel = "2"
//                    }, label: {
//                        Text("2")
//                    })
//                    Button(action: {
//                        noHoldLevel = "3"
//                    }, label: {
//                        Text("3")
//                    })
//                    Button(action: {
//                        noHoldLevel = "4"
//                    }, label: {
//                        Text("4")
//                    })
//
//                } label: {
//                    Text("\(noHoldLevel)")
//                }
//
//                Menu {
//                    Button(action: {
//                        noHoldSteps = "0"
//                    }, label: {
//                        Text("BV")
//                    })
//
//                } label: {
//                    Text("\(noHoldSteps)")
//                }
//
//                TextField("GOE", text: $noHoldGOE)
//                    .gOEInput()
//
//                Text("\(finalNoHoldValue)")
//                    .elementResult()
//
//            }
//        } else if index == "Triangle Intersection" {
//            HStack (spacing: 14) {
//                Menu {
//                    Button(action: {
//                        triangleI = "0"
//                    }, label: {
//                        Text("BV")
//                    })
//                    Button(action: {
//                        triangleI = "1"
//                    }, label: {
//                        Text("1")
//                    })
//                    Button(action: {
//                        triangleI = "2"
//                    }, label: {
//                        Text("2")
//                    })
//                    Button(action: {
//                        triangleI = "3"
//                    }, label: {
//                        Text("3")
//                    })
//                    Button(action: {
//                        triangleI = "4"
//                    }, label: {
//                        Text("4")
//                    })
//
//                } label: {
//                    Text("\(triangleI)")
//                }
//
//                Menu {
//                    Button(action: {
//                        trianglePI = "0"
//                    }, label: {
//                        Text("BV")
//                    })
//                    Button(action: {
//                        trianglePI = "1"
//                    }, label: {
//                        Text("1")
//                    })
//                    Button(action: {
//                        trianglePI = "2"
//                    }, label: {
//                        Text("2")
//                    })
//                    Button(action: {
//                        trianglePI = "3"
//                    }, label: {
//                        Text("3")
//                    })
//                    Button(action: {
//                        trianglePI = "4"
//                    }, label: {
//                        Text("4")
//                    })
//
//                } label: {
//                    Text("\(trianglePI)")
//                }
//
//                TextField("GOE", text: $triangleGOE)
//                    .gOEInput()
//
//                Text("\(finalTriangleValue)")
//                    .elementResult()
//
//            }
//        } else if index == "Twizzles" {
//            HStack{
//                Menu {
//                    Button(action: {
//                        twizzlesLevel = "0"
//                    }, label: {
//                        Text("BV")
//                    })
//                    Button(action: {
//                        twizzlesLevel = "1"
//                    }, label: {
//                        Text("1")
//                    })
//                    Button(action: {
//                        twizzlesLevel = "2"
//                    }, label: {
//                        Text("2")
//                    })
//                    Button(action: {
//                        twizzlesLevel = "3"
//                    }, label: {
//                        Text("3")
//                    })
//                    Button(action: {
//                        twizzlesLevel = "4"
//                    }, label: {
//                        Text("4")
//                    })
//
//                } label: {
//                    Text("\(twizzlesLevel)")
//                }
//
//                TextField("GOE", text: $twizzlesGOE)
//                    .gOEInput()
//
//                Text("\(finalTwizzlesValue)")
//                    .elementResult()
//
//            }
//        } else {
//            HStack{
//                Menu {
//                    Button(action: {
//                        movesLevel = "0"
//                    }, label: {
//                        Text("BV")
//                    })
//                    Button(action: {
//                        movesLevel = "1"
//                    }, label: {
//                        Text("1")
//                    })
//                    Button(action: {
//                        movesLevel = "2"
//                    }, label: {
//                        Text("2")
//                    })
//                    Button(action: {
//                        movesLevel = "3"
//                    }, label: {
//                        Text("3")
//                    })
//                    Button(action: {
//                        movesLevel = "4"
//                    }, label: {
//                        Text("4")
//                    })
//
//                } label: {
//                    Text("\(movesLevel)")
//                }
//
//                TextField("GOE", text: $movesGOE)
//                    .gOEInput()
//
//                Text("\(finalMovesValue)")
//                    .elementResult()
//            }
//        }
//    }

}
