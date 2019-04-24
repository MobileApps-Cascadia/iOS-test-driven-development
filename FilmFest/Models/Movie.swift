//
//  Movie.swift
//  FilmFest
//
//  Created by Brian Bansenauer on 4/22/19.
//  Copyright © 2019 Author. All rights reserved.
//

import Foundation

struct Movie {
    let title: String
    let releaseDate: String?
    var shown:Bool
    
    init(title: String, releaseDate: String? = nil, shown: Bool = false) {
        self.title = title
        self.releaseDate = releaseDate
        self.shown = shown
    }
}
