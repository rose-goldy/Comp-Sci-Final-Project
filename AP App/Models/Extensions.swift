//
//  Extensions.swift
//  AP App
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
        self.frame(maxWidth: 50, maxHeight: 28.5)
            .foregroundColor(.white)
            .background(Color("Navy"))
            .cornerRadius(6)
    }
}

extension Text {
    func longElementResult() -> some View {
        self.frame(maxWidth: 50, maxHeight: 40)
            .foregroundColor(.white)
            .background(Color("Navy"))
            .cornerRadius(6)
    }
}

extension TextField {
    func componentResult() -> some View {
        self.textFieldStyle(.roundedBorder)
            .font(.callout)
            .font(.caption)
            .frame(maxWidth:65, maxHeight: 40)
    }
}

extension Text {
    func deduction() -> some View {
        self.font(.title2)
            .fontWeight(.heavy)
            .multilineTextAlignment(.leading)
    }
}

extension Text {
    func finalScore() -> some View {
        self.frame(maxWidth: 70, maxHeight: 34)
            .foregroundColor(.white)
            .background(Color("Navy"))
            .cornerRadius(6)
            .padding(26)
    }
}



