//
//  Movie.swift
//  App-Movies
//
//  Created by João Gabriel Borelli Padilha on 21/09/19.
//  Copyright © 2019 João Gabriel Borelli Padilha. All rights reserved.
//

import Foundation

/// Sruct for Movie data
struct Movie: Decodable {
    var id: Int?
    //    var popularity: Int?
    //    var vote_count: Int?
    //    var video: Bool?
    var poster_path: String? //"/zfE0R94v1E8cuKAerbskfD3VfUt.jpg"
    //    var adult: Bool?
    //    var backdrop_path: String? //"/4W0FnjSGn4x0mKZlBRx8OjFxQUM.jpg",
    //    var original_language: String? // ": "en",
    //    var original_title: String // ": "It Chapter Two",
    //    "genre_ids": [
    //    35,
    //    27
    //    ],
    var title: String? // ": "It Chapter Two",
    //    "vote_average": 7.2,
    //    "overview": "27 years after overcoming the malevolent supernatural entity Pennywise, the former members of the Losers' Club, who have grown up and moved away from Derry, are brought back together by a devastating phone call.",
    //    var release_date: String // ": "2019-09-06"
}
