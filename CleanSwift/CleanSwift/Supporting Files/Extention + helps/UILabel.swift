//
//  UILabel.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 16.02.2021.
//

import UIKit

extension UILabel {
    func configureLabel(textColor: UIColor, textAlignment: NSTextAlignment, fontName: String, fontSize: CGFloat, numberOfLines: Int) {
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.font = UIFont(name: fontName, size: fontSize)
        self.numberOfLines = numberOfLines
    }
}
