//
//  AppProtocols.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 16.02.2021.
//

import Foundation

// for UI
protocol SetupSubview {
    func setupView()
    func configureView()
}

protocol MovieDisplayLogic: class {
    func displayData(data: [MovieCellModel])
}

