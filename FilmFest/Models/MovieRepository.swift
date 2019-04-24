//
//  MovieRepository.swift
//  FilmFest
//
//  Created by Brian Bansenauer on 4/22/19.
//  Copyright © 2019 Author. All rights reserved.
//

import Foundation
// DONE : Add to the protocol as dictated by the Test
protocol MovieRepository {
    var count:Int { get }
    func get( identifier:Int ) -> Movie?
    func add (movie: Movie)
}

// DONE : Be sure the repo conforms to the MovieRepository protocol
public class MovieDataRepository:MovieRepository{
    private var movieData = [Movie]()
    
    var count: Int { return movieData.count }
    
    func add(movie: Movie) {
        movieData.append(movie)
    }
    
    func get(identifier: Int) -> Movie? {
        if (movieData.isEmpty) {
            return nil
        } else {
            return movieData[identifier-1]
        }
    }
}
