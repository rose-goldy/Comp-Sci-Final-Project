//
//  LeaveCalculator.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 4/21/23.
//

import SwiftUI

struct LeaveCalculator: View {
    var text: String
    var background: Color = Color("Navy")
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .frame(maxWidth: 130, maxHeight: 40)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct LeaveCalculator_Previews: PreviewProvider {
    static var previews: some View {
        LeaveCalculator(text: "View Ranking")
    }
}
