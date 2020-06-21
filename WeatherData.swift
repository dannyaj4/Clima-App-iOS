//
//  WeatherData.swift
//  Clima
//
//  Created by Danny Aguswahyudy Jeremy on 10/06/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
    
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}
