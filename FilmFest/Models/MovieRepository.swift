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
    func get( identifier:Int ) -> Movie?
    var addedCount:Int { get}
    func add(movie:Movie)
    
}

//TODO : Be sure the repo conforms to the MovieRepository protocol
public class MovieDataRepository:MovieRepository{
    func get(identifier: Int) -> Movie? {
        
        
        return{movieData[identifier] }()
    }
    
    var addedCount: Int = 0
    
    func add(movie: Movie) {
        let movie_title = String(describing:self)
        let newMovie = Movie(title: movie_title, shown: false)
        movieData.append(newMovie)
        
        addedCount = addedCount + 1
    }
    
   
    private var movieData = [Movie]()
    
    
    
    
    var count: Int {return 0 + addedCount }
    
}
