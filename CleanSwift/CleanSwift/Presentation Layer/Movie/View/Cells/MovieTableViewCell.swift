//
//  MovieTableViewCell.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 16.02.2021.
//

import UIKit

protocol MovieCellDelegate: class {
    func didMovieTap(articleID: Int)
}

class MovieTableViewCell: UITableViewCell, SetupSubview {
    
    // MARK: - Properties
    private var title  = UILabel()
    private var rating = UILabel()
    private var toReadButton = UIButton(type: .system)
    
    // MARK: - External Vars
    weak var delegate: MovieCellDelegate?
    
    // MARK: - Internal Vars
    private var articleID: Int?
    
    lazy var stackMovieData: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [
            title,
            rating
        ])
        sv.axis    = .vertical
        sv.spacing = 8
        return sv
    }()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupView()
    }
    
    // MARK: - Methods
    func setupView() {
        [stackMovieData,toReadButton].forEach {
            addSubview($0)
        }
        stackMovieData.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor,padding: .init(top: 8, left: 16, bottom: 8, right: 16))
        toReadButton.anchor(top: nil, leading: nil, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor,padding: .init(top: 0, left: 0, bottom: 0, right: 16))
        toReadButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        configureView()
        setupAction()
    }
    
    func configureView() {
        title.configureLabel(textColor: .blue, textAlignment: .center, fontName: "", fontSize: 20, numberOfLines: 0)
        rating.configureLabel(textColor: .gray, textAlignment: .center, fontName: "", fontSize: 16, numberOfLines: 0)
        toReadButton.configureButton(title: "Read", titleColor: .systemRed, isEnabled: true, cornerRadius: 12, borderWidth: 0, borderColor: UIColor.clear.cgColor, height: 40, backgroundColor: .clear)
    }
    
    func setupAction() {
        toReadButton.addTarget(self, action: #selector(handleNextVC), for: .touchUpInside)
    }
    
    func configure(data: MovieCellModel) {
        self.title.text = data.title
        self.rating.text = data.rating
        self.articleID = data.id
    }
    
    // MARK: - OC Methods
    @objc private func handleNextVC() {
        guard let articleID = articleID else {
            return
        }
        
        delegate?.didMovieTap(articleID: articleID)
    }

}
