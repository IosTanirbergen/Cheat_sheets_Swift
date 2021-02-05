//
//  UIView.swift
//  Different_screens_UI
//
//  Created by Tanirbergen Kaldibai on 05.02.2021.
//

import UIKit

extension UIView {
    func configureView(width: CGFloat, height: CGFloat, cornerRadius: CGFloat, masksToBounds: Bool) {
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = masksToBounds
    }
}
