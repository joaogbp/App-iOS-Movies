//
//  Page.swift
//  App-Movies
//
//  Created by João Gabriel Borelli Padilha on 21/09/19.
//  Copyright © 2019 João Gabriel Borelli Padilha. All rights reserved.
//

import Foundation

/// Struct for Page based on the Documentation of [Movie Discover](https://developers.themoviedb.org/3/discover/movie-discover)
struct Page: Decodable {
    var page: Int?
    var total_results: Int?
    var total_pages: Int?
    var results: [Movie]?
}

