//
//  HomeVM.swift
//  BuildNetflix
//
//  Created by Yingying Chen on 10/21/20.
//

import Foundation


class HomeVM: ObservableObject {
    // string == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public var allGenre: [HomeGenre] =  [.AllGenres, .Action, .Comedy , .Horror , .Thriller]
    
    
    public func getMovie(forCat cat: String, andHomeRow homeRow : HomeTopRow, andGenre genre: HomeGenre ) -> [Movie] {
        
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movie:
            return (movies[cat] ?? []).filter({ $0.movieType == .movie })
        case .tvShows:
            return (movies[cat] ?? []).filter({ $0.movieType == .tvShow })
        case .myList:
            return movies[cat] ?? []
        }
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies()  {
        movies["Trending Now"]  = exampleMovies
        movies["Stand-Up Comedy"]  = exampleMovies.shuffled()
        movies["New Release"]  = exampleMovies.shuffled()
        movies["Sci-Fi"]  = exampleMovies.shuffled()
        movies["Romantic"]  = exampleMovies.shuffled()


    }
}
