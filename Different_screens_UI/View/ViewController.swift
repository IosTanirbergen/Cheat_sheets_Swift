//
//  ViewController.swift
//  Different_screens_UI
//
//  Created by Tanirbergen Kaldibai on 05.02.2021.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    //MARK: - for different view size
    @State var isDifferentSize = UIScreen.main.bounds.height < 550.00
    //MARK: - Constants
    private var appleImg  = UIImageView()
    private var imageView = UIView()

    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        setupSubviews()
    }
    
    //MARK: - Methods
    private func setupSubviews() {
        view.addSubview(imageView)
        imageView.anchor(top: nil, leading: nil, bottom: nil, trailing: nil)
        imageView.anchor(top: nil, leading: nil, bottom: nil, trailing: nil)
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        imageView.addSubview(appleImg)
        appleImg.anchor(top: imageView.topAnchor, leading: imageView.leadingAnchor, bottom: imageView.bottomAnchor, trailing: imageView.trailingAnchor)
        configureSubviews()
    }
    
    private func configureSubviews() {
        imageView.configureView(width: isDifferentSize ? 150 : 300, height: isDifferentSize ? 150 : 300, cornerRadius: isDifferentSize ? 75 : 150, masksToBounds: true)
        appleImg.configureImage(image: #imageLiteral(resourceName: "Apple"), cornerRadius: 12, contentMode: .scaleAspectFill)
    }
    
    private func configureView() {
        view.backgroundColor = .white
        configureNavigationBar(isHidden: true)
    }


}

