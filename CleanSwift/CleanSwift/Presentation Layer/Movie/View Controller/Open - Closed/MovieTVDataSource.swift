//
//  MovieTVDataSource.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 16.02.2021.
//

import UIKit

extension MovieViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataToDisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MovieListViewConfigure.movieHomeID, for: indexPath) as? MovieTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(data: dataToDisplay[indexPath.item])
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

extension MovieViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return MovieListViewConfigure.heightForRow
    }
}

extension MovieViewController: MovieCellDelegate {
    func didMovieTap(articleID: Int) {
        router?.navigateToDetails(articleID: articleID)
    }
}
