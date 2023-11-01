//
//  DateCreator.swift
//  Final project
//
//  Created by Max Kiselyov on 10/31/23.
//

import Foundation

extension Date {
    static func createFromComponents(_ year: Int, _ month: Int = 1, _ day: Int = 1, _ hour: Int = 0, _ minute: Int = 0, _ second: Int = 0, timeZone: TimeZone? = nil) -> Date? {
        var components = DateComponents()
        components.year = year
        components.month = month
        components.day = day
        components.hour = hour
        components.minute = minute
        components.second = second
        if let timeZone = timeZone {
            components.timeZone = timeZone
        }
        components.calendar = Calendar.current
        return components.date
    }
}
