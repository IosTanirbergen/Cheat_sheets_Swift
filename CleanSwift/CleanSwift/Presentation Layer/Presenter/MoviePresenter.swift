//
//  MoviePresenter.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 16.02.2021.
//

import UIKit

protocol MoviePresentationLogic {
    func presentData(data: [Results])
}

class MoviePresenter {
    weak var viewController: MovieDisplayLogic?
}

extension MoviePresenter: MoviePresentationLogic {
    func presentData(data: [Results]) {
        let viewModel = data.map { (model) -> MovieCellModel in
            let cellModel = MovieCellModel(title: model.title ?? "", rating: String(model.vote_average!))
            return cellModel
        }
        viewController?.displayData(data: viewModel)
    }
}
