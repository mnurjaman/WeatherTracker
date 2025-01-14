//
//  NetworkManager.swift
//  WeatherApp
//
//  Created by Muhammad Nurjaman on 11/10/24.
//


import Alamofire
import Foundation

class NetworkManager {
    static let shared = NetworkManager()

    private init() {}

    func getRequest<T: Decodable>(urlString: String, completion: @escaping (Result<T, Error>) -> Void) {
        AF.request(urlString).validate().responseDecodable(of: T.self) { response in
            switch response.result {
            case .success(let decodedData):
                completion(.success(decodedData))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}

