//
//  Movie.swift
//  FilmFest
//
//  Created by Shahin N
//  Copyright © 2019 Author. All rights reserved.
//

import Foundation

struct Movie:Equatable {
    let title: String
    let releaseDate: String?
    var shown:Bool = true
    
    static func == (title1: Movie, title2: Movie) -> Bool {
            return
        title1.title == title2.title
    }
    
    init(title: String, releaseDate: String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
}
