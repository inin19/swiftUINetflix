//
//  Trailer.swift
//  BuildNetflix
//
//  Created by Yingying Chen on 10/24/20.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
