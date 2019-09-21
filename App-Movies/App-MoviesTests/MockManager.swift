//
//  MockManager.swift
//  App-MoviesTests
//
//  Created by João Gabriel Borelli Padilha on 21/09/19.
//  Copyright © 2019 João Gabriel Borelli Padilha. All rights reserved.
//

import XCTest
@testable import App_Movies

class MockManager: Manager {
    
    func getMovies(page: Int, completion: @escaping (([Movie]) -> Void)) {
        let bundle = Bundle(for: type(of: self))
        let path = bundle.path(forResource: "MovieDiscover", ofType: "json")
        let data = NSData(contentsOfFile: path!)
        
        do {
            //create decodable object from data
            let decodedObject = try JSONDecoder().decode(Page.self, from: data! as Data)
            if let results = decodedObject.results {
                completion(results)
            }
        } catch let error {
            print(error)
            
            let movie = Movie(id: 1, poster_path: "", title: "TestMovie")
            let movies = [movie]
            completion(movies)
        }
        
        
    }
    
}
