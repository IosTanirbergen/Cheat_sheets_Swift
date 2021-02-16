//
//  MovieExtention.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 16.02.2021.
//

import UIKit

extension MovieViewController: MovieDisplayLogic {
    
    func displayData(data: [MovieCellModel]) {
        dataToDisplay.removeAll()
        dataToDisplay.append(contentsOf: data)
        movieTableView.reloadData()
    }
    
}
