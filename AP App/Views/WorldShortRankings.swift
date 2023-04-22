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
        
        NavigationView{
            
            List {
                
                Text("World Junior Short Ranking")
                    .ignoresSafeArea()
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 6000, height: 80)
                    .background(Color.blue)
                
                ForEach (0...worldTeamList.count-1, id: \.self) { index in
                    
                    //         let oneTeamData: [String] = [worldTeamList[index], String(worldScoreList[index]), worldTeamAndScoreList[index]]
                    
                    //      NavigationLink(destination:OneTeamView
                    //                          (oneTeamData: oneTeamData)) {
                    
                    
                    HStack {
                        Text("\(worldTeamList[index])")
                            .fontWeight(.bold)
                            .font(.title2)
                        
                        Spacer()
                        
                        Text("\(worldScoreList[index], specifier: "%.2f")")
                            .fontWeight(.bold)
                            .font(.title2)
                        
                    }
                    
                }
                
            }
            .listStyle(.plain)
        }
    }
}

struct WorldShortRankings_Previews: PreviewProvider {
    static var previews: some View {
        WorldShortRankings()
    }
}
