//
//  UIImageView.swift
//  Helps
//
//  Created by Tanirbergen Kaldibai on 13.02.2021.
//

import UIKit

extension UIImageView {
    func configureImageView(image: UIImage, cornerRadius: CGFloat, contentMode: UIView.ContentMode) {
        self.image = image
        self.layer.cornerRadius = cornerRadius
        self.contentMode = contentMode
    }
}
