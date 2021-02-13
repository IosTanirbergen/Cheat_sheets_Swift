//
//  UIButton.swift
//  Helps
//
//  Created by Tanirbergen Kaldibai on 13.02.2021.
//
import UIKit

extension UIButton {
    @discardableResult
    func configureButton(title: String, titleColor: UIColor, isEnabled: Bool, cornerRadius: CGFloat, borderWidth: CGFloat, borderColor: CGColor, height: CGFloat,backgroundColor: UIColor) -> UIButton{
        let button = UIButton(type: .system)
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.isEnabled = isEnabled
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
        self.backgroundColor = backgroundColor
        return button
    }
}
