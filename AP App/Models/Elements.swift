//
//  Elements.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 3/8/23.
//

import Foundation


struct Element : Identifiable {
    var id: UUID {
        UUID ()
    }
    var text: String
    var level00: Double
    var level01: Double
    var level02: Double
    var level03: Double
    var level04: Double
    var level10: Double
    var level11: Double
    var level12: Double
    var level13: Double
    var level14: Double
    var level20: Double
    var level21: Double
    var level22: Double
    var level23: Double
    var level24: Double
    var level30: Double
    var level31: Double
    var level32: Double
    var level33: Double
    var level34: Double
    var level40: Double
    var level41: Double
    var level42: Double
    var level43: Double
    var level44: Double
}


var line = Element(text: "Line Element", level00: 1.0, level01: 1.5, level02: 2.0, level03: 3.0, level04: 4.0, level10: 0.0, level11: 0.0, level12: 0.0, level13: 0.0, level14: 0.0, level20: 0.0,level21: 0.0, level22: 0.0, level23: 0.0, level24: 0.0, level30: 0.0, level31: 0.0, level32: 0.0, level33: 0.0, level34: 0.0, level40: 0.0, level41: 0.0, level42: 0.0, level43: 0.0, level44: 0.0)
var spin = Element(text: "Synchronized Spin", level00: 1.5, level01: 3.5, level02: 4.5, level03: 5.5, level04: 6.5, level10: 0.0, level11: 0.0, level12: 0.0, level13: 0.0, level14: 0.0, level20: 0.0,level21: 0.0, level22: 0.0, level23: 0.0, level24: 0.0, level30: 0.0, level31: 0.0, level32: 0.0, level33: 0.0, level34: 0.0, level40: 0.0, level41: 0.0, level42: 0.0, level43: 0.0, level44: 0.0)

var longMoves = Element(text: "Moves", level00: 1.5, level01: 3.5, level02: 4.5, level03: 5.5, level04: 6.5, level10: 0.0, level11: 0.0, level12: 0.0, level13: 0.0, level14: 0.0, level20: 0.0,level21: 0.0, level22: 0.0, level23: 0.0, level24: 0.0, level30: 0.0, level31: 0.0, level32: 0.0, level33: 0.0, level34: 0.0, level40: 0.0, level41: 0.0, level42: 0.0, level43: 0.0, level44: 0.0)

var travelingElement = Element(text: "Traveling Element", level00: 1.0, level01: 2.0, level02: 3.0, level03: 4.0, level04: 5.0, level10: 0.0, level11: 0.0, level12: 0.0, level13: 0.0, level14: 0.0, level20: 0.0,level21: 0.0, level22: 0.0, level23: 0.0, level24: 0.0, level30: 0.0, level31: 0.0, level32: 0.0, level33: 0.0, level34: 0.0, level40: 0.0, level41: 0.0, level42: 0.0, level43: 0.0, level44: 0.0)

var whip = Element(text: "Whip Intersection", level00: 3.75, level01: 5.0, level02: 6.0, level03: 6.75, level04: 7.5, level10: 0.0, level11: 0.0, level12: 0.0, level13: 0.0, level14: 0.0, level20: 0.0,level21: 0.0, level22: 0.0, level23: 0.0, level24: 0.0, level30: 0.0, level31: 0.0, level32: 0.0, level33: 0.0, level34: 0.0, level40: 0.0, level41: 0.0, level42: 0.0, level43: 0.0, level44: 0.0)

var angled = Element(text: "Angled Intersection", level00: 3.75, level01: 5.0, level02: 6.0, level03: 6.75, level04: 7.5, level10: 0.0, level11: 0.0, level12: 0.0, level13: 0.0, level14: 0.0, level20: 0.0,level21: 0.0, level22: 0.0, level23: 0.0, level24: 0.0, level30: 0.0, level31: 0.0, level32: 0.0, level33: 0.0, level34: 0.0, level40: 0.0, level41: 0.0, level42: 0.0, level43: 0.0, level44: 0.0)

var longNoHold = Element(text: "No Hold", level00: 0.0, level01: 0.0, level02: 0.0, level03: 0.0, level04: 0.0, level10: 0.0, level11: 0.0, level12: 0.0, level13: 0.0, level14: 0.0, level20: 0.0,level21: 0.0, level22: 0.0, level23: 0.0, level24: 0.0, level30: 0.0, level31: 0.0, level32: 0.0, level33: 0.0, level34: 0.0, level40: 0.0, level41: 0.0, level42: 0.0, level43: 0.0, level44: 0.0)

var creativeLift = Element(text: "Creative Lift", level00: 0.0, level01: 4.0, level02: 0.0, level03: 0.0, level04: 0.0, level10: 0.0, level11: 0.0, level12: 0.0, level13: 0.0, level14: 0.0, level20: 0.0,level21: 0.0, level22: 0.0, level23: 0.0, level24: 0.0, level30: 0.0, level31: 0.0, level32: 0.0, level33: 0.0, level34: 0.0, level40: 0.0, level41: 0.0, level42: 0.0, level43: 0.0, level44: 0.0)

var pivotBlock = Element(text: "Pivot Block", level00: 1.5, level01: 3.5, level02: 4.5, level03: 5.5, level04: 6.5, level10: 0.0, level11: 0.0, level12: 0.0, level13: 0.0, level14: 0.0, level20: 0.0,level21: 0.0, level22: 0.0, level23: 0.0, level24: 0.0, level30: 0.0, level31: 0.0, level32: 0.0, level33: 0.0, level34: 0.0, level40: 0.0, level41: 0.0, level42: 0.0, level43: 0.0, level44: 0.0)

var shortNoHold = Element(text: "No Hold", level00: 0.0, level01: 0.0, level02: 0.0, level03: 0.0, level04: 0.0, level10: 0.0, level11: 0.0, level12: 0.0, level13: 0.0, level14: 0.0, level20: 0.0,level21: 0.0, level22: 0.0, level23: 0.0, level24: 0.0, level30: 0.0, level31: 0.0, level32: 0.0, level33: 0.0, level34: 0.0, level40: 0.0, level41: 0.0, level42: 0.0, level43: 0.0, level44: 0.0)

var triangle = Element(text: "Triangle Intersection", level00: 0.0, level01: 0.0, level02: 0.0, level03: 0.0, level04: 0.0, level10: 0.0, level11: 0.0, level12: 0.0, level13: 0.0, level14: 0.0, level20: 0.0,level21: 0.0, level22: 0.0, level23: 0.0, level24: 0.0, level30: 0.0, level31: 0.0, level32: 0.0, level33: 0.0, level34: 0.0, level40: 0.0, level41: 0.0, level42: 0.0, level43: 0.0, level44: 0.0)
var twizzles = Element(text: "Twizzles", level00: 1.5, level01: 3.5, level02: 4.5, level03: 5.5, level04: 6.5, level10: 0.0, level11: 0.0, level12: 0.0, level13: 0.0, level14: 0.0, level20: 0.0,level21: 0.0, level22: 0.0, level23: 0.0, level24: 0.0, level30: 0.0, level31: 0.0, level32: 0.0, level33: 0.0, level34: 0.0, level40: 0.0, level41: 0.0, level42: 0.0, level43: 0.0, level44: 0.0)

var shortMoves = Element(text: "Moves", level00: 1.5, level01: 3.5, level02: 4.5, level03: 5.5, level04: 6.5, level10: 0.0, level11: 0.0, level12: 0.0, level13: 0.0, level14: 0.0, level20: 0.0,level21: 0.0, level22: 0.0, level23: 0.0, level24: 0.0, level30: 0.0, level31: 0.0, level32: 0.0, level33: 0.0, level34: 0.0, level40: 0.0, level41: 0.0, level42: 0.0, level43: 0.0, level44: 0.0)

var longElements : [Element] = [line, spin, longMoves, travelingElement, whip, angled, longNoHold, creativeLift]

var shortElements : [Element] = [pivotBlock, shortNoHold, triangle, twizzles, shortMoves]


//how do i put two structs in the same list
