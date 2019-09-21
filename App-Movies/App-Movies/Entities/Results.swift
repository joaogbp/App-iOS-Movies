//
//  Results.swift
//  App-Movies
//
//  Created by João Gabriel Borelli Padilha on 21/09/19.
//  Copyright © 2019 João Gabriel Borelli Padilha. All rights reserved.
//

import Foundation

//ResultError enum which shows all possible errors
enum ResultError: Error {
    case networkError(Error)
    case dataNotFound
    case jsonParsingError(Error)
    case invalidStatusCode(Int)
}

//Result enum to show success or failure
enum Result<T> {
    case success(T)
    case failure(ResultError)
}
