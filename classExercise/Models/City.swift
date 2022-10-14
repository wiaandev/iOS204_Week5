//
//  City.swift
//  classExercise
//
//  Created by Wiaan Duvenhage on 2022/10/14.
//

import SwiftUI

struct City: Identifiable {
    var id = UUID()
    var name: String
    var code: String
    var icon: String
    var wind: String
    var humidity: String
    var weather: [WeekdayTemperature]

}
