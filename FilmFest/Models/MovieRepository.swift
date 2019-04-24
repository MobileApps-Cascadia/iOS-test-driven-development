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
    var count:Int{get}
   
    func add(newMovie: Movie)
    
    func get( identifier:Int ) -> Movie?
}

//TODO : Be sure the repo conforms to the MovieRepository protocol
public class MovieDataRepository:MovieRepository{
    func get(identifier: Int) -> Movie? {
      return movieData[identifier]
    }
    
   
    
    var count: Int {
        get
        {
           return movieData.count
        }
        
       
    }
    
    func add(newMovie: Movie) {
        
        movieData.append(newMovie)
    }
    
    private var movieData = [Movie]()
    
  
}
