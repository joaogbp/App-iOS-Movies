//
//  DataManager.swift
//  App-Movies
//
//  Created by João Gabriel Borelli Padilha on 21/09/19.
//  Copyright © 2019 João Gabriel Borelli Padilha. All rights reserved.
//

import Foundation

class DataManager {
    
    var manager: Manager?
    
    init(manager: Manager) {
        self.manager = manager
    }
    
    func getMovies(page: Int, completion: @escaping (([Movie])->Void)) {
        manager?.getMovies(page: page, completion: { (movies) in
            print("[DataManager]")
            completion(movies)
        })
    }
    
}

