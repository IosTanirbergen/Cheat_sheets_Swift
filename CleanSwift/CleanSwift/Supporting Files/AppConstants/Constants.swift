//
//  Constants.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 16.02.2021.
//

import UIKit

struct MovieListViewConfigure {
    static let movieHomeID = "homeTBID"
    static let heightForRow: CGFloat = 75
}

struct MovieAPI {
    //https://api.themoviedb.org/3/discover/movie?api_key=210e2b075f370d9cf11509de665a1272
    static let scheme     = "https://"
    static let host       = "api.themoviedb.org/"
    static let path       = "3/discover/movie?"
    static let parameters = "api_key=210e2b075f370d9cf11509de665a1272"
    static let baseURL    = MovieAPI.scheme + MovieAPI.host + MovieAPI.path + MovieAPI.parameters
}
