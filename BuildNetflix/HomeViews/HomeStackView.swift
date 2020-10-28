//
//  HomeStackView.swift
//  BuildNetflix
//
//  Created by Yingying Chen on 10/26/20.
//

import Foundation
import SwiftUI


struct HomeStack: View {
    var vm : HomeVM
    
    var topRowSelection: HomeTopRow // no binding one way
    var seletedGenre: HomeGenre
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ForEach(vm.allCategories, id: \.self) { category in
            VStack {
                HStack {
                    Text(category)
                        .font(.title3)
                        .bold()
                    
                    Spacer()
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(vm.getMovie(forCat: category, andHomeRow: topRowSelection, andGenre: seletedGenre)) { movie  in
                            StandardHomeMovie(movie: movie).frame(width: 100, height: 200)
                                .padding(.horizontal, 5)
                                .onTapGesture(perform: {
                                    movieDetailToShow = movie
                                })
                            
                        }
                    }
                }
            }
            
        }
    }
}


struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                HomeStack(vm: HomeVM(), topRowSelection: .home, seletedGenre: .AllGenres, movieDetailToShow: .constant(nil))

            }
            .foregroundColor(.white)
        }
    }
}
