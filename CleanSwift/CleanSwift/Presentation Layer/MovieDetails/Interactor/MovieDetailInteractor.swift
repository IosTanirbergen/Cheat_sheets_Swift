//
//  MovieDetailInteractor.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 17.02.2021.
//

import Foundation

protocol MovieDetailsBuisnessLogic {
    func fetchDetails()
}

protocol MovieDetailsStoreProtocol: class {
    var articleID: Int { get set }
}

class MovieDetailsInteractor: MovieDetailsStoreProtocol {
    
    var articleID: Int = 0
    
    
}

extension MovieDetailsInteractor: MovieDetailsBuisnessLogic {
    func fetchDetails() {
        print("articleID \(articleID)")
    }
}
