//
//  MovieRepoTest.swift
//  FilmFestTests
//
//  Created by Brian Bansenauer on 4/22/19.
//  Copyright © 2019 Author. All rights reserved.
//

import XCTest
@testable import FilmFest
class MovieRepoTest: XCTestCase {
    var sut: MovieRepository!
    
    let scifiMovie = Movie(title: "Sci-Fi")
    let arthouseMovie = Movie(title: "Arthouse Drama")
    let actionMovie = Movie(title: "Action/Adventure")


    override func setUp() {
        sut = MovieDataRepository()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: Initial Value Test
    /**
     * Business Rule: MovieDataRepository starts out empty
     */
    
    func testInit_RepositoryCount_IsZero(){
        XCTAssertEqual(sut.count, 0)
    }
    
    // MARK: Add and Query Values
    /**
     * Business Rule: Movies are appended to the repo in order
     *      and accessed via their index number
     */
    
    func testAdd_RepositoryCount_IsOne()
    {
        sut.add(Movie: movie)
        
        XCTAssertEqual(sut.count, 1)
    }
    
    func testShowMovie(){
        sut.add(Movie: scifiMovie)
    }

}
