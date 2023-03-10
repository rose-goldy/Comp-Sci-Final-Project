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
    var level0: Double
    var level1: Double
    var level2: Double
    var level3: Double
    var level4: Double
}

var line = Element(text: "Line Element", level0: 1.0, level1: 1.5, level2: 2.0, level3: 3.0, level4: 4.0)
var spin = Element(text: "Sychronized Spin", level0: 1.5, level1: 3.5, level2: 4.5, level3: 5.5, level4: 6.5)
var longMoves = Element(text: "Moves", level0: 1.5, level1: 3.5, level2: 4.5, level3: 5.5, level4: 6.5)
var travelingElement = Element(text: "Traveling Element", level0: 1.0, level1: 2.0, level2: 3.0, level3: 4.0, level4: 5.0)
var whip = Element(text: "Whip Intersection", level0: 3.75, level1: 5.0, level2: 6.0, level3: 6.75, level4: 7.5)
var angled = Element(text: "Angled Intersection", level0: 3.75, level1: 5.0, level2: 6.0, level3: 6.75, level4: 7.5)
var longNoHold = Element(text: "No Hold", level0: 0.5, level1: 0.75, level2: 2.25, level3: 3.75, level4: 5.0)
var creativeLift = Element(text: "Creative Lift", level0: 0.0, level1: 4.0, level2: 0.0, level3: 0.0, level4: 0.0)
var pivotBlock = Element(text: "Pivot Block", level0: 1.5, level1: 3.5, level2: 4.5, level3: 5.5, level4: 6.5)
var shortNoHold = Element(text: "No Hold", level0: 0.5, level1: 1.0, level2: 1.75, level3: 3.0, level4: 4.0)
var triangle = Element(text: "Triangle Intersection", level0: 2.5, level1: 3.5, level2: 6.0, level3: 6.75, level4: 7.25)
var twizzles = Element(text: "Twizzles", level0: 1.5, level1: 3.5, level2: 4.5, level3: 5.5, level4: 6.5)
var shortMoves = Element(text: "Moves", level0: 1.5, level1: 3.5, level2: 4.5, level3: 5.5, level4: 6.5)

var longElements : [Element] = [line, spin, longMoves, travelingElement, whip, angled, longNoHold, creativeLift]

var shortElements : [Element] = [pivotBlock, shortNoHold, triangle, twizzles, shortMoves]


