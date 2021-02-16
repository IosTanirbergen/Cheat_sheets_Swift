//
//  UINavigationController.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 16.02.2021.
//


import UIKit

extension UIViewController {
    func configureNavigationBar(isHidden: Bool, backgroundColor: UIColor,title: String) {
        self.navigationController?.navigationBar.isHidden = isHidden
        self.navigationController?.navigationBar.backgroundColor = backgroundColor
        self.navigationController?.navigationItem.title = title
    }
}
