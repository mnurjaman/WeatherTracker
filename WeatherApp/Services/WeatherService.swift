//
//  WeatherService.swift
//  WeatherApp
//
//  Created by Muhammad Nurjaman on 11/10/24.
//

import Foundation
class WeatherService {
    func fetchWeather(for lat: Double, lon: Double, completion: @escaping (Result<WeatherModel, Error>) -> Void) {
        let apiKey = "a5b9efb12a173cd81afafcbbaf412265"
        let urlString = "https://api.openweathermap.org/data/3.0/onecall?lat=33.44&lon=-94.04&exclude=hourly,daily&appid={API key}"
        
        NetworkManager.shared.getRequest(urlString: urlString, completion: completion)
    }
}
