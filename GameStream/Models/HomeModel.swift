//
//  HomeModel.swift
//  GameStream
//
//  Created by Edgar Cisneros on 25/05/23.
//

import UIKit

struct Game: Codable{
    
    let title, studio, contentRaiting, publicationYear: String
    let description : String
    let plataforms, tags: [String]
    let videosUrls: VideoUrls
    let falleryImages: [String]
    
    
}

struct VideoUrls: Codable{
    
    let mobile, tablet: String
    
}

typealias contentGames = [Game]

