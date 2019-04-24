//
//  MovieRepository.swift
//  FilmFest
//
//  Created by Brian Bansenauer on 4/22/19.
//  Copyright © 2019 Author. All rights reserved.
//

import Foundation
// Add to the protocol as dictated by the Test
protocol MovieRepository {
    var count:Int { get }
    func add(movie: Movie)
    func get( identifier:Int ) -> Movie?
}

//Be sure the repo conforms to the MovieRepository protocol
public class MovieDataRepository:MovieRepository{
    
    private var movieData = [Movie]()
    
    var count: Int { return movieData.count }

    func add(movie: Movie) {
        movieData.append(movie)
    }
    
    func get(identifier: Int) -> Movie? {
        return movieData[identifier]
    }
}
