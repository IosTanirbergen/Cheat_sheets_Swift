//
//  MovieDetailViewController.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 17.02.2021.
//

import UIKit

class MovieDetailViewController: UIViewController, SetupSubview {
    
    //MARK: - External vars
    private(set) var router: (MovieDetailsRoutingLogic & MovieDetailsDataPassingProtocol)?
    
    //MARK: - Internal vars
    private var interactor: (MovieDetailsBuisnessLogic & MovieDetailsStoreProtocol)?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        interactor?.fetchDetails()
    }
    
    func setupView() {
        configureView()
    }
    
    func configureView() {
        view.backgroundColor = .white
        configureNavigationBar(isHidden: false, backgroundColor: .systemGray2, title: "hello!")
    }
    
    private func configure() {
        let viewController = self
        let interactor     = MovieDetailsInteractor()
        let router         = MovieDetailsRouter()
        
        router.dataStore          = interactor
        viewController.interactor = interactor
        viewController.router     = router
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
