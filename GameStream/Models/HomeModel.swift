//
//  HomeModel.swift
//  GameStream
//
//  Created by Edgar Cisneros on 25/05/23.
//

import UIKit

struct Game: Codable, Hashable{
    
    let title, studio, contentRaiting, publicationYear: String
    let description : String
    let platforms, tags: [String]
    let videosUrls: VideoUrls
    let galleryImages: [String]
}

struct VideoUrls: Codable, Hashable{
    
    let mobile, tablet: String
}

typealias contentGames = [Game]

