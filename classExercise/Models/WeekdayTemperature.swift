//
//  WeekdayTemperatures.swift
//  classExercise
//
//  Created by Wiaan Duvenhage on 2022/10/14.
//

import SwiftUI

struct WeekdayTemperature: Identifiable, Hashable{
    var id = UUID()
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
}
