//
//  MovieRepository.swift
//  FilmFest
//
//  Created by Brian Bansenauer on 4/22/19.
//  Copyright © 2019 Author. All rights reserved.
//

import Foundation
protocol MovieRepository {
    var count:Int { get }
    
    func add(movie:Movie)
    func get(index:Int) -> Movie
}

public class MovieDataRepository:MovieRepository{
    private var movieData = [Movie]()
    
    var count: Int { return movieData.count}
    
    func add(movie: Movie) {
        movieData.append(movie)
    }
    
    func get(index:Int) -> Movie
    {   return movieData[index]  }
}
