//
//  ViewController.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 16.02.2021.
//

import UIKit

class MovieViewController: UIViewController, SetupSubview {
        
    //MARK: - Properties
    var movieTableView: UITableView = {
        let tb = UITableView(frame: .zero, style: .grouped)
        return tb
    }()
    
    private var interactor: MovieBuisnessLogic?
    var dataToDisplay = [MovieCellModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        interactor?.fetchMovies()
    }
    
    func setupView() {
        [movieTableView].forEach {
            view.addSubview($0)
        }
        
        movieTableView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        configureView()
    }
    
    func configureView() {
        view.backgroundColor = .white
        configureNavigationBar(isHidden: true, backgroundColor: .clear, title: "")
        movieTableView.register(MovieTableViewCell.self, forCellReuseIdentifier: MovieListViewConfigure.movieHomeID)
        movieTableView.delegate   = self
        movieTableView.dataSource = self
    }
    
    private func configure() {
        let viewController = self
        let presenter      = MoviePresenter()
        let interactor     = MovieInteractor(withMovieWorker: MovieWorker())
        
        interactor.presenter      = presenter
        presenter.viewController  = viewController
        viewController.interactor = interactor
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

