//
//  MovieInteractor.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 16.02.2021.
//

import Foundation

protocol MovieBuisnessLogic {
    func fetchMovies()
}

class MovieInteractor {
    private let movieWorker: MovieNetworkWorker
    private var movieEntity: [Results]?
    var presenter: MoviePresentationLogic?
    
    required init(withMovieWorker apiWorker: MovieNetworkWorker) {
        self.movieWorker = apiWorker
    }
}

extension MovieInteractor: MovieBuisnessLogic {
    func fetchMovies() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) { [self] in
            movieWorker.fetchMovie { [unowned self] (data) in
                self.movieEntity = data
                self.presenter?.presentData(data: data)
            }
        }
    }
}
