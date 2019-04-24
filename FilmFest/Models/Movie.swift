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
    var shown:Bool = false
    
    
    
    
    init(title: String, releaseDate: String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
    
    mutating func Watched (){
        self.shown = true
    }
}
