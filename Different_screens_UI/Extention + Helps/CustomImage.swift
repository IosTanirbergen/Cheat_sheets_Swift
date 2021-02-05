//
//  CustomImage.swift
//  Different_screens_UI
//
//  Created by Tanirbergen Kaldibai on 05.02.2021.
//

import UIKit

extension UIImageView {
    func configureImage(image: UIImage, cornerRadius: CGFloat, contentMode: UIView.ContentMode) {
        self.image = image
        self.layer.cornerRadius = cornerRadius
        self.image?.withRenderingMode(.alwaysOriginal)
        self.contentMode = contentMode
    }
}
