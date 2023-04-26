//
//  LongProgram.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 3/8/23.
//

import SwiftUI

struct LongProgram: View {
    @EnvironmentObject var functions: Functions
    
    @State var lineGOE: String = ""
    @State var spinGOE: String = ""
    @State var movesGOE: String = ""
    @State var circleGOE: String = ""
    @State var whipGOE: String = ""
    @State var angledGOE: String = ""
    @State var noHoldGOE: String = ""
    @State var liftsGOE: String = ""
    @State var finalLineValue: String = ""
    @State var finalSpinValue: String = ""
    @State var finalMovesValue: String = ""
    @State var finalCircleValue: String = ""
    @State var finalWhipValue: String = ""
    @State var finalAngledValue: String = ""
    @State var finalNoHoldValue: String = ""
    @State var finalLiftsValue: String = ""
    @State var lineLevel: String = "Level"
    @State var spinLevel: String = "Level"
    @State var movesLevel: String = "Level"
    @State var circleLevel: String = "Level"
    @State var whipI: String = "I"
    @State var whipPI: String = "PI"
    @State var angledI: String = "I"
    @State var angledPI: String = "PI"
    @State var noHoldLevel: String = "Level"
    @State var noHoldSteps: String = "Steps"
    @State var liftLevel: String = "Level"
    @State var compScore: String = ""
    @State var presScore: String = ""
    @State var ssScore: String = ""
    @State var finalComponentScore: String = ""
    @State var finalTotalScore: String = ""
    @State var techScore: Double = 0.0
    @State var deductions: String = ""
    @State var deductionScore: Double = 0.0
    
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
    
//    func correctLineLevel (level: String) -> Double {
//        for i in 0...4 {
//            if (level) == "\(i)" {
//                let lineValue = (Double(lineGOE)! * 0.1 * line.level0\(i) + line.level0\(i))
//            }
//        else {
//            let lineValue = (Double(lineGOE)! * 0.1 * line.level04) + line.level04
//           return lineValue
//        }
//    }
    
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
    
  func correctWhipLevel (I: String, PI: String) -> Double {
        if I == "0" && PI == "0" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level00) + whip.level00
            return whipValue
        } else if I == "0" && PI == "1" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level01) + whip.level01
            return whipValue
        } else if I == "0" && PI == "2" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level02) + whip.level02
            return whipValue
        } else if I == "0" && PI == "3" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level03) + whip.level03
            return whipValue
        } else if I == "0" && PI == "4" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level04) + whip.level04
            return whipValue
        } else if I == "1" && PI == "0" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level10) + whip.level10
            return whipValue
        } else if I == "1" && PI == "1" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level11) + whip.level11
            return whipValue
        } else if I == "1" && PI == "2" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level12) + whip.level12
            return whipValue
        } else if I == "1" && PI == "3" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level13) + whip.level13
            return whipValue
        } else if I == "1" && PI == "4" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level14) + whip.level14
            return whipValue
        } else if I == "2" && PI == "0" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level20) + whip.level20
            return whipValue
        } else if I == "2" && PI == "1" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level21) + whip.level21
            return whipValue
        } else if I == "2" && PI == "2" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level22) + whip.level22
            return whipValue
        } else if I == "2" && PI == "3" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level23) + whip.level23
            return whipValue
        } else if I == "2" && PI == "4" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level24) + whip.level24
            return whipValue
        } else if I == "3" && PI == "0" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level30) + whip.level30
            return whipValue
        } else if I == "3" && PI == "1" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level31) + whip.level31
            return whipValue
        } else if I == "3" && PI == "2" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level32) + whip.level32
            return whipValue
        } else if I == "3" && PI == "3" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level33) + whip.level33
            return whipValue
        } else if I == "3" && PI == "4" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level34) + whip.level34
            return whipValue
        } else if I == "4" && PI == "0" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level40) + whip.level40
            return whipValue
        } else if I == "4" && PI == "1" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level41) + whip.level41
            return whipValue
        } else if I == "4" && PI == "2" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level42) + whip.level42
            return whipValue
        } else if I == "4" && PI == "3" {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level43) + whip.level43
            return whipValue
        } else {
            let whipValue = (Double(whipGOE)! * 0.1 * whip.level44) + whip.level44
            return whipValue
        }
    }
    
    func correctAngledLevel (I: String, PI: String) -> Double {
        if I == "0" && PI == "0" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level00) + angled.level00
            return angledValue
        } else if I == "0" && PI == "1" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level01) + angled.level01
            return angledValue
        } else if I == "0" && PI == "2" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level02) + angled.level02
            return angledValue
        } else if I == "0" && PI == "3" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level03) + angled.level03
            return angledValue
        } else if I == "0" && PI == "4" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level04) + angled.level04
            return angledValue
        } else if I == "1" && PI == "0" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level10) + angled.level10
            return angledValue
        } else if I == "1" && PI == "1" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level11) + angled.level11
            return angledValue
        } else if I == "1" && PI == "2" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level12) + angled.level12
            return angledValue
        } else if I == "1" && PI == "3" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level13) + angled.level13
            return angledValue
        } else if I == "1" && PI == "4" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level14) + angled.level14
            return angledValue
        } else if I == "2" && PI == "0" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level20) + angled.level20
            return angledValue
        } else if I == "2" && PI == "1" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level21) + angled.level21
            return angledValue
        } else if I == "2" && PI == "2" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level22) + angled.level22
            return angledValue
        } else if I == "2" && PI == "3" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level23) + angled.level23
            return angledValue
        } else if I == "2" && PI == "4" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level24) + angled.level24
            return angledValue
        } else if I == "3" && PI == "0" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level30) + angled.level30
            return angledValue
        } else if I == "3" && PI == "1" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level31) + angled.level31
            return angledValue
        } else if I == "3" && PI == "2" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level32) + angled.level32
            return angledValue
        } else if I == "3" && PI == "3" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level33) + angled.level33
            return angledValue
        } else if I == "3" && PI == "4" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level34) + angled.level34
            return angledValue
        } else if I == "4" && PI == "0" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level40) + angled.level40
            return angledValue
        } else if I == "4" && PI == "1" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level41) + angled.level41
            return angledValue
        } else if I == "4" && PI == "2" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level42) + angled.level42
            return angledValue
        } else if I == "4" && PI == "3" {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level43) + angled.level43
            return angledValue
        } else {
            let angledValue = (Double(angledGOE)! * 0.1 * angled.level44) + angled.level44
            return angledValue
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
                
                VStack (spacing: 22) {
                    
                    Menu {
                        Button(action: {
                            lineLevel = "0"
                        }, label: {
                            Text("BV")
                        })
                        Button(action: {
                            lineLevel = "1"
                        }, label: {
                            Text("1")
                        })
                        Button(action: {
                            lineLevel = "2"
                        }, label: {
                            Text("2")
                        })
                        Button(action: {
                            lineLevel = "3"
                        }, label: {
                            Text("3")
                        })
                        Button(action: {
                            lineLevel = "4"
                        }, label: {
                            Text("4")
                        })
                            
                    } label: {
                        Text("\(lineLevel)")
                    }
                        
                    Menu {
                        Button(action: {
                            spinLevel = "0"
                        }, label: {
                            Text("BV")
                        })
                        Button(action: {
                            spinLevel = "1"
                        }, label: {
                            Text("1")
                        })
                        Button(action: {
                            spinLevel = "2"
                        }, label: {
                            Text("2")
                        })
                        Button(action: {
                            spinLevel = "3"
                        }, label: {
                            Text("3")
                        })
                        Button(action: {
                            spinLevel = "4"
                        }, label: {
                            Text("4")
                        })
                        
                    } label: {
                        Text("\(spinLevel)")
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
                    
                    Menu {
                        Button(action: {
                            circleLevel = "0"
                        }, label: {
                            Text("BV")
                        })
                        Button(action: {
                            circleLevel = "1"
                        }, label: {
                            Text("1")
                        })
                        Button(action: {
                            circleLevel = "2"
                        }, label: {
                            Text("2")
                        })
                        Button(action: {
                            circleLevel = "3"
                        }, label: {
                            Text("3")
                        })
                        Button(action: {
                            circleLevel = "4"
                        }, label: {
                            Text("4")
                        })
                        
                    } label: {
                        Text("\(circleLevel)")
                    }
                        
                    HStack (spacing: 14) {
                            Menu {
                                Button(action: {
                                    whipI = "0"
                                }, label: {
                                    Text("BV")
                                })
                                Button(action: {
                                    whipI = "1"
                                }, label: {
                                    Text("1")
                                })
                                Button(action: {
                                    whipI = "2"
                                }, label: {
                                    Text("2")
                                })
                                Button(action: {
                                    whipI = "3"
                                }, label: {
                                    Text("3")
                                })
                                Button(action: {
                                    whipI = "4"
                                }, label: {
                                    Text("4")
                                })
                                
                            } label: {
                                Text("\(whipI)")
                            }
                            
                            Menu {
                                Button(action: {
                                    whipPI = "0"
                                }, label: {
                                    Text("BV")
                                })
                                Button(action: {
                                    whipPI = "1"
                                }, label: {
                                    Text("1")
                                })
                                Button(action: {
                                    whipPI = "2"
                                }, label: {
                                    Text("2")
                                })
                                Button(action: {
                                    whipPI = "3"
                                }, label: {
                                    Text("3")
                                })
                                Button(action: {
                                    whipPI = "4"
                                }, label: {
                                    Text("4")
                                })
                                
                            } label: {
                                Text("\(whipPI)")
                            }
                        }
                    
                    HStack (spacing: 14) {
                            Menu {
                                Button(action: {
                                    angledI = "0"
                                }, label: {
                                    Text("BV")
                                })
                                Button(action: {
                                    angledI = "1"
                                }, label: {
                                    Text("1")
                                })
                                Button(action: {
                                    angledI = "2"
                                }, label: {
                                    Text("2")
                                })
                                Button(action: {
                                    angledI = "3"
                                }, label: {
                                    Text("3")
                                })
                                Button(action: {
                                    angledI = "4"
                                }, label: {
                                    Text("4")
                                })
                                
                            } label: {
                                Text("\(angledI)")
                            }
                            
                            Menu {
                                Button(action: {
                                    angledPI = "0"
                                }, label: {
                                    Text("BV")
                                })
                                Button(action: {
                                    angledPI = "1"
                                }, label: {
                                    Text("1")
                                })
                                Button(action: {
                                    angledPI = "2"
                                }, label: {
                                    Text("2")
                                })
                                Button(action: {
                                    angledPI = "3"
                                }, label: {
                                    Text("3")
                                })
                                Button(action: {
                                    angledPI = "4"
                                }, label: {
                                    Text("4")
                                })
                                
                            } label: {
                                Text("\(angledPI)")
                            }
                        }
                    
                    HStack (spacing: 8) {
                        Menu {
                            Button(action: {
                                noHoldLevel = "0"
                            }, label: {
                                Text("BV")
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
                            Button(action: {
                                noHoldSteps = "1"
                            }, label: {
                                Text("1")
                            })
                            Button(action: {
                                noHoldSteps = "2"
                            }, label: {
                                Text("2")
                            })
                            Button(action: {
                                noHoldSteps = "3"
                            }, label: {
                                Text("3")
                            })
                            Button(action: {
                                noHoldSteps = "4"
                            }, label: {
                                Text("4")
                            })
                            
                        } label: {
                            Text("\(noHoldSteps)")
                        }
                    }
                        
                        Menu {
                            Button(action: {
                                liftLevel = "1"
                            }, label: {
                                Text("1")
                            })
                            
                        } label: {
                            Text("\(liftLevel)")
                        }
                }
                
                VStack (spacing: 8) {
                    TextField("GOE", text: $lineGOE)
                        .gOEInput()
                    TextField("GOE", text: $spinGOE)
                        .gOEInput()
                    TextField("GOE", text: $movesGOE)
                        .gOEInput()
                    TextField("GOE", text: $circleGOE)
                        .gOEInput()
                    TextField("GOE", text: $whipGOE)
                        .gOEInput()
                    TextField("GOE", text: $angledGOE)
                        .gOEInput()
                    TextField("GOE", text: $noHoldGOE)
                        .gOEInput()
                    TextField("GOE", text: $liftsGOE)
                        .gOEInput()
                    
                }
                
                VStack (spacing: 16) {
                    Text("\(finalLineValue)")
                        .longElementResult()
                    Text("\(finalSpinValue)")
                        .longElementResult()
                    Text("\(finalMovesValue)")
                        .longElementResult()
                    Text("\(finalCircleValue)")
                        .longElementResult()
                    Text("\(finalWhipValue)")
                        .longElementResult()
                    Text("\(finalAngledValue)")
                        .longElementResult()
                    Text("\(finalNoHoldValue)")
                        .longElementResult()
                    Text("\(finalLiftsValue)")
                        .longElementResult()
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
            
            HStack{
                Text("Total Score")
                    .breakdownTitle()
                
                Text("\(finalTotalScore)")
                    .frame(maxWidth: 70, maxHeight: 40)
                    .foregroundColor(.white)
                    .background(Color("Navy"))
                    .cornerRadius(6)
                    .padding(26)
            }
            
            Button(action: {
                let lineee = correctLineLevel (level: "\(lineLevel)")
                let spinnn = correctSpinLevel(level: "\(spinLevel)")
                let movesss = correctMovesLevel(level: "\(movesLevel)")
                let circleee = correctCircleLevel(level: "\(circleLevel)")
                let whippp = correctWhipLevel(I: "\(whipI)", PI: "\(whipPI)")
                let angleddd = correctAngledLevel(I: "\(angledI)", PI: "\(angledPI)")
                let noHolddd = correctNoHoldLevel(level: "\(noHoldLevel)", steps: "\(noHoldSteps)")
                
                deductionScore = Double(deductions)!
                
                finalLineValue = String(format: "%.2f", lineee)
                finalSpinValue = String(format: "%.2f", spinnn)
                finalMovesValue = String(format: "%.2f", movesss)
                
                finalCircleValue = String(format: "%.2f", circleee)
                finalWhipValue = String(format: "%.2f", whippp)
                finalAngledValue = String(format: "%.2f", angleddd)
                finalNoHoldValue = String(format: "%.2f", noHolddd)
                let liftsValue = (Double(liftsGOE)! * 0.1 * creativeLift.level01) + creativeLift.level01
                finalLiftsValue = String(format: "%.2f", liftsValue)
                let componentScore = Double(compScore)! + Double(presScore)! + Double(ssScore)!
                finalComponentScore = String(format: "%.2f", (componentScore * 2.7))
                techScore = lineee + spinnn + movesss + circleee + whippp + angleddd + noHolddd + liftsValue
                finalTotalScore = String(format: "%.2f", (techScore + (componentScore * 2.7) - deductionScore))
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
            
        }
  //      .navigationBarHidden(true)
    }
}

struct LongProgram_Previews: PreviewProvider {
    static var previews: some View {
        LongProgram()
            .environmentObject(Functions())
    }
}
