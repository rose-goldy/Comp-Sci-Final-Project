//
//  LongPButton.swift
//  AP App
//

import SwiftUI

struct LongPButton: View {
    var text: String
    var background: Color = Color("Navy")
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct LongPButton_Previews: PreviewProvider {
    static var previews: some View {
        LongPButton(text: "Long Program")
    }
}
