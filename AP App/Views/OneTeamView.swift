//
//  OneTeamView.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 4/21/23.
//

import SwiftUI

struct OneTeamView: View {
    
    var oneTeamData: [String] = []
    
    var body: some View {
        HStack {
           Text("\(worldTeamList[0])")
                .fontWeight(.bold)
                .font(.title2)
                .padding(20)
            
            Text("\(worldScoreList[0], specifier: "%.2f")")
                .fontWeight(.bold)
                .font(.title2)
                .padding(20)
            
        }
    }
}

struct OneTeamView_Previews: PreviewProvider {
    static var previews: some View {
        OneTeamView()
    }
}
