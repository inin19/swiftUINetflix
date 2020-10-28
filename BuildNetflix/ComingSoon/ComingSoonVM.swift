//
//  ComingSoonVM.swift
//  BuildNetflix
//
//  Created by Yingying Chen on 10/28/20.
//

import Foundation


class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
    
    
    
}
