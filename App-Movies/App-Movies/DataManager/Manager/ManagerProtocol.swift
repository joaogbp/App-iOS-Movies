//
//  ManagerProtocol.swift
//  App-Movies
//
//  Created by João Gabriel Borelli Padilha on 21/09/19.
//  Copyright © 2019 João Gabriel Borelli Padilha. All rights reserved.
//

import Foundation

protocol Manager {
    func getMovies(page: Int, completion: @escaping (([Movie])->Void))
}

