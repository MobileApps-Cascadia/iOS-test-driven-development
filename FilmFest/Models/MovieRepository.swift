//
//  MovieRepository.swift
//  FilmFest
//
//  Created by Brian Bansenauer on 4/22/19.
//  Copyright © 2019 Author. All rights reserved.
//

import Foundation
// TODO : Add to the protocol as dictated by the Test

var movie: String?

protocol MovieRepository {
    var count:Int { get }
    
    func get( identifier:Int ) -> Movie?
    
    func add(Movie: Movie)
}

//TODO : Be sure the repo conforms to the MovieRepository protocol
public class MovieDataRepository:MovieRepository{
    
    private var movieData = [Movie]()
    
    func get(identifier: Int) -> Movie? {
        
    return movieData[identifier]
    
    }
    
    var count: Int { return movieData.count }
    
    func add(Movie: Movie){
        movieData.append(Movie)
    }
    
}
