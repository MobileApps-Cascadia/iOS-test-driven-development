//
//  MovieRepository.swift
//  FilmFest
//
//  Created by Brian Bansenauer on 4/22/19.
//  Copyright © 2019 Author. All rights reserved.
//

import Foundation
// TODO : Add to the protocol as dictated by the Test
protocol MovieRepository {
    var count:Int { get }
    func add(movie: Movie)
    func get(index: Int) -> Movie
}

//TODO : Be sure the repo conforms to the MovieRepository protocol
public class MovieDataRepository:MovieRepository{
    func add(movie: Movie) {
        movieData.append(movie)
    }
    
    private var movieData = [Movie]()
    
    var count: Int { return movieData.count }
    func get(index: Int) -> Movie{
        return movieData[index]
    }
}
