//
//  DataManagerFactory.swift
//  App-Movies
//
//  Created by João Gabriel Borelli Padilha on 21/09/19.
//  Copyright © 2019 João Gabriel Borelli Padilha. All rights reserved.
//

import Foundation

/// Available types of DataManager
///
/// - API: Requests and deal with API data
/// - local: Requests and deal with Local data
enum DataManagerTypes {
    case API
    case local
}

/// Singleton that creates and provide the DataManager
class DataManagerFactory {
    
    private static var sharedDataManagerFactory = DataManagerFactory()
    
    private init() { }
    
    class func shared() -> DataManagerFactory {
        return sharedDataManagerFactory
    }
    
    func getDataManager(type dataManagerType: DataManagerTypes) -> DataManager {
        switch dataManagerType {
        case .API:
            return DataManager(manager: APIManager())
        case .local:
            return DataManager(manager: LocalManager())
        }
    }
    
}
