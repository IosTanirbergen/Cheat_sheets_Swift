//
//  UIView.swift
//  Helps
//
//  Created by Tanirbergen Kaldibai on 13.02.2021.
//

import UIKit

extension UIView {
    
    func configureSizeView(height: CGFloat, width: CGFloat) {
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func configureLayerView(radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
    
    func configureView(color: UIColor) {
        self.backgroundColor = color
    }
}
