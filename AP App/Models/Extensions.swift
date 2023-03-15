//
//  Extensions.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 3/8/23.
//

import Foundation
import SwiftUI

extension Text {
    func elementTitle() -> some View {
        self.font(.headline)
            .fontWeight(.semibold)
            .foregroundColor(Color("Navy"))
            .multilineTextAlignment(.leading)
    }
}

extension Text {
    func breakdownTitle() -> some View {
        self.fontWeight(.heavy)
            .multilineTextAlignment(.leading)
            .font(.title)
            .frame(maxWidth: .infinity, maxHeight: 50)
    }
}

extension TextField {
    func gOEInput() -> some View {
        self.textFieldStyle(.roundedBorder)
            .font(.callout)
            .font(.caption)
            .frame(maxWidth:48, maxHeight: 35)
    }
}

extension TextField {
    func levelInput() -> some View {
        self.textFieldStyle(.roundedBorder)
            .font(.callout)
            .font(.caption)
            .frame(maxWidth:52, maxHeight: 35)
    }
}

extension Text {
    func elementResult() -> some View {
        self.frame(maxWidth: 50, maxHeight: 28.1)
            .foregroundColor(.white)
            .background(.blue)
            .padding(5)
            .cornerRadius(30)
    }
}

extension Text {
    func longElementResult() -> some View {
        self.frame(maxWidth: 50, maxHeight: 40)
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(6)
    }
}

