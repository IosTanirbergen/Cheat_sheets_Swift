//
//  MoviesRouter.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 17.02.2021.
//

import UIKit

protocol MovieRoutingLogic {
    func navigateToDetails(articleID: Int)
}

class MovieRouter {
    weak var viewController: UIViewController?
}

extension MovieRouter: MovieRoutingLogic {
    
    func navigateToDetails(articleID: Int) {
        let vc = MovieDetailViewController()
        vc.router?.dataStore?.articleID = articleID
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
}
