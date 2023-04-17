//
//  WorldShortRankings.swift
//  AP App
//
//  Created by Rose Goldenberg23 on 4/17/23.
//

import SwiftUI

//my plan is just to have the list of junior worlds 2023 and then try to insert the person's (user's) score in order
//(this will be my function)

//ROSE REFER BACK TO NATIONAL PARKS SHIT WITH ALL THE LISTS

struct WorldShortRankings: View {
    var body: some View {
        VStack {
            ForEach (worldTeamList, id: \.self) {
                Text($0)
            }
        }
    }
}

struct WorldShortRankings_Previews: PreviewProvider {
    static var previews: some View {
        WorldShortRankings()
    }
}
