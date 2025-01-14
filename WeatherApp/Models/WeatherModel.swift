//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Muhammad Nurjaman on 11/10/24.
//

import Foundation
import Foundation

struct WeatherModel: Codable {
    let lat: Double
    let lon: Double
    let timezone: String
    let timezone_offset: Int
    let current: CurrentWeather
    let minutely: [MinutelyWeather]?
    let hourly: [HourlyWeather]?
    let daily: [DailyWeather]?
    let alerts: [WeatherAlert]?

    struct CurrentWeather: Codable {
        let dt: Int
        let sunrise: Int
        let sunset: Int
        let temp: Double
        let feels_like: Double
        let pressure: Int
        let humidity: Int
        let dew_point: Double
        let uvi: Double
        let clouds: Int
        let visibility: Int
        let wind_speed: Double
        let wind_deg: Int
        let wind_gust: Double
        let weather: [WeatherDetails]
    }

    struct MinutelyWeather: Codable {
        let dt: Int
        let precipitation: Double
    }

    struct HourlyWeather: Codable {
        let dt: Int
        let temp: Double
        let feels_like: Double
        let pressure: Int
        let humidity: Int
        let dew_point: Double
        let uvi: Double
        let clouds: Int
        let visibility: Int
        let wind_speed: Double
        let wind_deg: Int
        let wind_gust: Double
        let weather: [WeatherDetails]
        let pop: Double
    }

    struct DailyWeather: Codable {
        let dt: Int
        let sunrise: Int
        let sunset: Int
        let moonrise: Int
        let moonset: Int
        let moon_phase: Double
        let summary: String?
        let temp: TempDetails
        let feels_like: FeelsLikeDetails
        let pressure: Int
        let humidity: Int
        let dew_point: Double
        let wind_speed: Double
        let wind_deg: Int
        let wind_gust: Double
        let weather: [WeatherDetails]
        let clouds: Int
        let pop: Double
        let rain: Double?
        let uvi: Double
    }

    struct TempDetails: Codable {
        let day: Double
        let min: Double
        let max: Double
        let night: Double
        let eve: Double
        let morn: Double
    }

    struct FeelsLikeDetails: Codable {
        let day: Double
        let night: Double
        let eve: Double
        let morn: Double
    }

    struct WeatherDetails: Codable {
        let id: Int
        let main: String
        let description: String
        let icon: String
    }

    struct WeatherAlert: Codable {
        let sender_name: String
        let event: String
        let start: Int
        let end: Int
        let description: String
    }
}


