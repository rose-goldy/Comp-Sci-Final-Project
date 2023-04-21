////
////  WorldShortRankings.swift
////  AP App
////
////  Created by Rose Goldenberg23 on 4/17/23.
////
//
//import SwiftUI
//
////my plan is just to have the list of junior worlds 2023 and then try to insert the person's (user's) score in order
////(this will be my function)
//
////ROSE REFER BACK TO NATIONAL PARKS SHIT WITH ALL THE LISTS
//
//
//struct WorldShortRankings: View {
//    var body: some View {
//        
//        NavigationView{
//            
//            List {
//                
//                ForEach (0...worldTeamList.count-1, id: \.self) { index in
//                    
//                    let oneTeamData: [String] = [worldTeamList[index], String(worldScoreList[index]), worldTeamAndScoreList[index]]
//                    
//                    //      NavigationLink(destination:OneTeamView
//                    //                          (oneTeamData: oneTeamData)) {
//                    
//                    VStack{ 
//                        
//                        Group {
//                            Text(oneTeamData[0])
//                            
//                            Text(oneTeamData[1])
//                        }
//                        
//                        
//                        OneTeamView()
//                    }
//                    
//                }
//                
//            }
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding()
//            .background()
//            .cornerRadius(16)
//            .shadow(color: .gray, radius: 8, x:4, y:4)
//        }
//    }
//}
//
//struct WorldShortRankings_Previews: PreviewProvider {
//    static var previews: some View {
//        WorldShortRankings()
//    }
//}
