//
//  WeatherData.swift
//  WeatherApp
//
//  Created by Yazeed Alhanaki on 15/09/1443 AH.
//

import Foundation
/*
 We use Codable so that we can match the JSON object that's coming from web
 to Decode the object automatically without doing it one by one.
 let object = JSONDecoder().decode(the object must confirm to Codable.self)
 */
struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}


struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
    let description: String
}
