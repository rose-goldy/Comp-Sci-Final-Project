//
//  WorldShortRankings.swift
//  AP App
//

import SwiftUI

//my plan is just to have the list of junior worlds 2023 and then try to insert the person's (user's) score in order
//(this will be my function)

//ROSE REFER BACK TO NATIONAL PARKS SHIT WITH ALL THE LISTS


struct WorldShortRankings: View {
    
    @State var teamName: String = ""
    @State var yourNewScore: String = ""
    
//    func reorder (score: Double) {
//        //score will be yourScore
//        for index in 0...worldTeamAndScoreList.count-1 {
//        // (0...worldScoreList.count-1, id:\.self) { index in
//            if score > worldScoreList[Int(index)] {
//                worldTeamAndScoreList.insert(String(score), at: Int(index))
//            } else {
//                worldTeamAndScoreList = ["oh no"]
//            }
//        }
//    }
    
    var body: some View { 
        
        NavigationView{
            
            List {
//                HStack {
//                    TextField("Team Name", text: $teamName)
//                        .textFieldStyle(.roundedBorder)
//                        .font(.callout)
//                        .multilineTextAlignment(.center)
//                        .frame(maxWidth:110, maxHeight: 40)

//                    TextField("Score", text: $yourNewScore)
//                        .textFieldStyle(.roundedBorder)
//                        .font(.callout)
//                        .multilineTextAlignment(.center)
//                        .frame(maxWidth:60, maxHeight: 40)
//
//                    Spacer()
//
//                    Button(action: {
//                        reorder(score: Double(yourNewScore)!)
//
//                    }, label: {
//                        Rank(text: "How do I rank?")
//                    })
//                }
                
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
                    
//                    HStack {
//                        Text("\(worldTeamList[index])")
//                            .fontWeight(.bold)
//                            .font(.title2)
//
//                        Spacer()
//
//                        Text("\(worldScoreList[index], specifier: "%.2f")")
//                            .fontWeight(.bold)
//                            .font(.title2)
//
//                    }
                    
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
