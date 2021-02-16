//
//  MovieWorker.swift
//  CleanSwift
//
//  Created by Tanirbergen Kaldibai on 16.02.2021.
//

import Foundation
import Alamofire

protocol MovieNetworkWorker {
    func fetchMovie(comp: @escaping([Results]) -> ())
}

class MovieWorker {
    
}

extension MovieWorker: MovieNetworkWorker {
    
    func fetchMovie(comp: @escaping ([Results]) -> ()) {
        AF.request(MovieAPI.baseURL, method: .get).response {
            result in
            switch result.result {
            case .success(let data):
                do {
                    let movieResult = try JSONDecoder().decode(Movie.self, from: data!)
                    comp(movieResult.results!)
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }
    
    
}
