//
//  OneTeamView.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 4/21/23.
//

import SwiftUI

struct OneTeamView: View {
    var body: some View {
        HStack {
           Text("\(worldTeamList[0])")
            Text("\(worldScoreList[0])")
        }
    }
}

struct OneTeamView_Previews: PreviewProvider {
    static var previews: some View {
        OneTeamView()
    }
}
