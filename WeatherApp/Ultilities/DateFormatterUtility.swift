//
//  DateFormatterUtility.swift
//  WeatherApp
//
//  Created by Muhammad Nurjaman on 11/10/24.
//

import Foundation

import Foundation

class DateFormatterUtility {
    static let shared = DateFormatterUtility()

    private let dateFormatter: DateFormatter

    private init() {
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    }

    func formatTimestamp(_ timestamp: Int) -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(timestamp))
        return dateFormatter.string(from: date)
    }
}

