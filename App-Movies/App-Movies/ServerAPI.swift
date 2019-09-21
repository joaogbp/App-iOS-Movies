//
//  ServerAPI.swift
//  App-Movies
//
//  Created by João Gabriel Borelli Padilha on 21/09/19.
//  Copyright © 2019 João Gabriel Borelli Padilha. All rights reserved.
//

import Foundation

class ServerAPI {
    
    /// Base API URL
    static private var baseURL = "https://api.themoviedb.org/3"
    
    /// Movie Discover https://developers.themoviedb.org/3/discover/movie-discover
    static private var endPointMovieDiscover = "/discover/movie"
    
    /// Private Key
    static private var key = "d07601d5958c79ba7a3f580704785a43"
    
    /// Init Private
    private init() {}
    
    /// Prepares the link for Movie Discover
    ///
    /// - Parameters:
    ///   - lenguage: Target lenguage of de movie discover.
    ///   - includeAdult: Bool that indicates if adult content is going to be discovered.
    ///   - includeVideo: Bool that indicates if included video is going to be discovered.
    ///   - page: Page of the results
    /// - Returns: String with the link for use.
    static func getLinkMovieDiscover(lenguage: ServerAPILenguage, sortBy: ServerAPISortBy, includeAdult: Bool, includeVideo: Bool, page: Int) -> String {
        let link = ServerAPI.baseURL + ServerAPI.endPointMovieDiscover // https://api.themoviedb.org/3/discover/movie
            + "?api_key=\(ServerAPI.key)" // ?api_key=d07601d5958c79ba7a3f580704785a43
            + "&language=\(lenguage.rawValue)" // &language=en-US
            + "&sort_by=\(sortBy.rawValue)" // &sort_by=popularity.desc
            + "&include_adult=\(includeAdult)" // &include_adult=false
            + "&include_video=\(includeVideo)" // &include_video=false
            + "&page=\(page)" // &page=1
        // "https://api.themoviedb.org/3/discover/movie?api_key=d07601d5958c79ba7a3f580704785a43&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1"
        return link
    }
    
}

enum ServerAPILenguage: String {
    case enUS = "en-US"
}

enum ServerAPISortBy: String {
    case popularityDesc = "popularity.desc"
}
