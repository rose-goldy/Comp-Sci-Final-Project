//
//  FirstView.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 3/8/23.
//

import SwiftUI

struct FirstView: View {
    @StateObject var functions = Functions()
    var body: some View {
        NavigationView {
            VStack (spacing: 100) {
                Text("Northernettes Junior 2022-2023\nIJS Score Calculator")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 350, maxHeight: 200)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                
                VStack (spacing: 70) {
                  
                    NavigationLink {
                        ShortProgram()
                    } label: {
                     ShortPButton(text: "Short Program Calculator")
                    }
                    
                    NavigationLink {
                        LongProgram()
                    } label: {
                     LongPButton(text: "Long Program Calculator")
                    }
                    
                }
                Spacer()
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
