//
//  MovieDetailRouter.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 17.02.2021.
//

import Foundation

protocol MovieDetailsRoutingLogic {
    
}

protocol MovieDetailsDataPassingProtocol {
    var dataStore: MovieDetailsStoreProtocol? { get }
}

class MovieDetailsRouter: MovieDetailsDataPassingProtocol {
    weak var dataStore: MovieDetailsStoreProtocol?
}

extension MovieDetailsRouter: MovieDetailsRoutingLogic {
    
}
