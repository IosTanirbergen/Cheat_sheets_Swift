//
//  UITextField.swift
//  Helps
//
//  Created by Tanirbergen Kaldibai on 13.02.2021.
//
import UIKit

extension UITextField {
    func configureTextField(placeholder: String, cornerRadius: CGFloat, textColor: UIColor, font: String, fontSize: CGFloat,height: CGFloat,textAlignment: NSTextAlignment) {
        self.placeholder = placeholder
        self.layer.cornerRadius = cornerRadius
        self.textColor = textColor
        self.font = UIFont(name: font, size: fontSize)
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
        self.textAlignment = textAlignment
    }
}
