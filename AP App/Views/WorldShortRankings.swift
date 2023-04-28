//
//  WorldShortRankings.swift
//  AP App
//

import SwiftUI


struct WorldShortRankings: View {
    
    @State var teamName: String = ""
    @State var yourNewScore: String = ""
    
    
    var body: some View { 
        
        NavigationView{
            
            List {
                
                Text("World Junior Short Rankings")
                    .ignoresSafeArea()
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 6000, height: 80)
                    .background(Color.blue)
                
                ForEach (0...worldTeamAndScoreList.count-1, id: \.self) { index in
                    
                    Text("\(worldTeamAndScoreList[index])")
                        .fontWeight(.bold)
                        .font(.title2)
                    
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
