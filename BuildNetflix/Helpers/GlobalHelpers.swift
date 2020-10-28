//
//  GlobalHelpers.swift
//  BuildNetflix
//
//  Created by Yingying Chen on 10/21/20.
//

import Foundation
import SwiftUI


let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!

let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var randomExampleImageURL : URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}


let exampleTrailer1 = Trailer(name: "Season 3 trainer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)

let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)

let exampleTrailer3 = Trailer(name: "The stranger things", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)


let exampleTrailers = [exampleTrailer1, exampleTrailer2,exampleTrailer3]


let episode1 = Episode(name: "begining and ending", season: 1, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/300/102", description: "Six Months after idsaaprease, thesefeghsefjjwefewf", length: 53, videoURL: exampleVideoURL)

let episode2 = Episode(name: "Dark matter", season: 1, episodeNumber: 2, thumbnailImageURLString: "https://picsum.photos/300/104", description: "Six Months after idsaaprease, thesefeghsefjjwefewf", length: 54, videoURL: exampleVideoURL)



let episode3 = Episode(name: "Ghosts", season: 1, episodeNumber: 3, thumbnailImageURLString: "https://picsum.photos/300/105", description: "Six Months after idsaaprease, thesefeghsefjjewf wef wefew wefewf", length: 56, videoURL: exampleVideoURL)




let episode4 = Episode(name: "begining and ending", season: 2, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/300/102", description: "Six Months after idsaaprease, thesefeghsefjjwefewf", length: 53, videoURL: exampleVideoURL)

let episode5 = Episode(name: "Dark matter", season: 2, episodeNumber: 2, thumbnailImageURLString: "https://picsum.photos/300/104", description: "Six Months after idsaaprease, thesefeghsefjjwefewf", length: 54, videoURL: exampleVideoURL)



let episode6 = Episode(name: "Ghosts", season: 2, episodeNumber: 3, thumbnailImageURLString: "https://picsum.photos/300/105", description: "Six Months after idsaaprease, thesefeghsefjjewf wef wefew wefewf", length: 56, videoURL: exampleVideoURL)



var allExampleEpisodes = [episode1,episode2, episode3,episode4,episode5,episode6]



let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [ exampleMovie2,exampleMovie3, exampleMovie4,exampleMovie5, exampleMovie6, exampleMovie7 ],
    episodes: allExampleEpisodes,
    promotionHeadline: "Best Rated Show",
    trailers: [exampleTrailer1]
)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    trailers: [exampleTrailer1]

)
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA" ,
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    trailers: [exampleTrailer1]

)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "New episodes coming soon",
    trailers: [exampleTrailer1]
    
)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    trailers: [exampleTrailer1]
)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 4 Now",
    trailers: [exampleTrailer1]
)


let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "Stranger Things",
    thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 3 Now",
    trailers: [exampleTrailer1]
)

var exampleMovies : [Movie]   {
    return [exampleMovie1, exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6].shuffled()
    
}


let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Begining and Edning", description: "Six Months after disappearence, the police form a task in 2053, Joanas learn that most of twinede perished in a paoclayipc evnet", season: 2, episode: 1)

extension LinearGradient {
    static let blackOpaictyGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)

}


extension String {
    func withOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}


extension View  {
    func hideKeyboard()  {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
