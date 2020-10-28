//
//  TopMoviePreview.swift
//  BuildNetflix
//
//  Created by Yingying Chen on 10/21/20.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    // could be in VM
    func isCategoryLst(_ cat: String) -> Bool {
        let catCount = movie.categories.count // 4
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category  in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLst(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                            
                           
                        }
                    }
                }
                HStack {
                    
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        // todo
                    }
                    
                    Spacer()
                    PlayButton(text: "Play", imageName: "play.fill") {
                        // todo
                    }.frame(width: 120)
                    
                    Spacer()
                    SmallVerticalButton(text: "Info button", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        // todo
                    }
                    
                    Spacer()
                    
                }
                .padding(.vertical, 14)
                
            }
            .background(
                LinearGradient.blackOpaictyGradient
                    .padding(.top, 250)
                
            )
        }
        .foregroundColor(Color.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
