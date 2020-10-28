//
//  CustomTabPicker.swift
//  BuildNetflix
//
//  Created by Yingying Chen on 10/23/20.
//

import SwiftUI

struct CustomTabSwicher: View {
    
    @State private var currentTab : CustomTab = .episodes
    
    
    var tabs: [CustomTab]
    var movie: Movie

    
    @Binding var showSeasonPicker : Bool
    @Binding var selectedSeason : Int
    
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        
        let string = tab.rawValue
        return string.withOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            // custom picker
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack (spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        
                        VStack {
                            
                            // red bar
                            
                            // need calculation
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor( tab == currentTab ? Color.red : Color.clear  )
                            
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor( tab == currentTab ? Color.white : Color.gray  )

                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)
                           
                        }
                        
                    }
                }
            }
            
            // selected view
            
            switch currentTab {
            case .episodes:
                EpisodeView(episodes: movie.episodes ?? [], showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
                
            case .trailers:
                TrailerList(trailers: movie.trailers)
            case .more:
                MoreLikeThis(movies: movie.moreLikeThisMovies)

            }
            
            
        }
        .foregroundColor(.white)
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"

}

struct CustomTabPicker_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwicher(tabs: [.episodes, .trailers, .more], movie: exampleMovie1, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
       
    }
}
