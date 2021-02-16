//
//  MovieTableViewCell.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 16.02.2021.
//

import UIKit

class MovieTableViewCell: UITableViewCell, SetupSubview {
    
    // MARK: - Properties
    private var title  = UILabel()
    private var rating = UILabel()
    
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
    
    func setupView() {
        [stackMovieData].forEach {
            addSubview($0)
        }
        stackMovieData.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor,padding: .init(top: 8, left: 16, bottom: 8, right: 16))
        configureView()
    }
    
    func configureView() {
        title.configureLabel(textColor: .blue, textAlignment: .center, fontName: "", fontSize: 20, numberOfLines: 0)
        rating.configureLabel(textColor: .gray, textAlignment: .center, fontName: "", fontSize: 16, numberOfLines: 0)
    }
    
    func configure(data: MovieCellModel) {
        self.title.text = data.title
        self.rating.text = data.rating
    }

}
