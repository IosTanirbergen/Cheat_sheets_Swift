//
//  ViewController.swift
//  Helps
//
//  Created by Tanirbergen Kaldibai on 13.02.2021.
//

import UIKit

class ViewController: UIViewController, SetupView {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        configureView()
        setupAction()
    }
    
    func configureView() {
        view.backgroundColor = .white
        configureNavigationBar(isHidden: true, backgroundColor: .clear, title: "")
    }
    
    func setupAction() {
        
    }
    


}

