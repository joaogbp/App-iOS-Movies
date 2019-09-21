//
//  DataManagerTests.swift
//  App-MoviesTests
//
//  Created by João Gabriel Borelli Padilha on 21/09/19.
//  Copyright © 2019 João Gabriel Borelli Padilha. All rights reserved.
//

import XCTest
@testable import App_Movies

class DataManagerTests: XCTestCase {
    
    private var dataManager: DataManager!
    private var expectedFirstTitle = "It Chapter Two"
    
    override func setUp() {
        super.setUp()
        let mockManager = MockManager()
        dataManager = DataManager.init(manager: mockManager)
    }
    
    func testMovieResult() {
        dataManager.getMovies(page: 1) { (movies) in
            XCTAssertEqual(movies.first?.title, self.expectedFirstTitle)
        }
    }
    
}
