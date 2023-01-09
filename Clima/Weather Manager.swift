//
//  Weather Manager.swift
//  Clima
//
//  Created by Олександр Федоренко on 09.01.2023.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=2af7a80c70f03d3e8c60f4d5ba0c9828&units=metric"
    
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
