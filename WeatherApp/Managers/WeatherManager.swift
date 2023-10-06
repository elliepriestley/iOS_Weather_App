//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by Ellie Priestley on 06/10/2023.
//

import Foundation
import CoreLocation

class WeatherManager {
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat={\(latitude)}&lon={\(longitude)}&appid={}") else { fatalError("Missing URL")}
    }
}
