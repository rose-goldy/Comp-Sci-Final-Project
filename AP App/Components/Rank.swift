//
//  Rank.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 4/24/23.
//

import SwiftUI

struct Rank: View {
    var text: String
    var background: Color = Color("Navy")
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .frame(maxWidth: 140, maxHeight: 40)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct Rank_Previews: PreviewProvider {
    static var previews: some View {
        Rank(text: "How do I rank?")
    }
}
