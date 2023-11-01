//
//  Countdown.swift
//  Final project
//
//  Created by Max Kiselyov on 10/31/23.
//

import UIKit

struct Countdown {
    let id = UUID()
    var name: String = "Countdown"
    var emoji: Character
    var dateTime: Date
    var isArchived: Bool = false
    var color: UIColor
        
    enum Repeat: String {
        case off
        case weekly
        case monthly
        case yearly

        // возвращаем значение для лейбла
        var repeatLabel: String {
            return self.rawValue.prefix(1).uppercased() + self.rawValue.dropFirst()
        }
    }
}

extension Countdown {
    static let sampleData: [Countdown] = [
        Countdown(name: "Birthday", emoji: "🎂", dateTime: Date.createFromComponents(2023, 11, 11, 19, 00)!, color: Theme.getColor(.purple)),
        Countdown(name: "DEADLINE", emoji: "🎃", dateTime: Date.createFromComponents(2023, 11, 05, 19, 59)!, isArchived: true, color: Theme.getColor(.orange)),
        Countdown(name: "New Year", emoji: "🎉", dateTime: Date.createFromComponents(2023, 12, 31)!, isArchived: true, color: Theme.getColor(.green)),
        Countdown(name: "Anniversary", emoji: "💑", dateTime: Date.createFromComponents(2023, 11, 2, 21, 00)!, color: Theme.getColor(.red)),
        Countdown(name: "Vacation", emoji: "✈️", dateTime: Date.createFromComponents(2023, 8, 1)!, color: Theme.getColor(.purple)),
        Countdown(name: "Meeting", emoji: "🤝", dateTime: Date.createFromComponents(2023, 11, 15)!, color: Theme.getColor(.orange)),
        Countdown(name: "Conference", emoji: "📊", dateTime: Date.createFromComponents(2023, 9, 30)!, color: Theme.getColor(.yellow)),
        Countdown(name: "Graduation", emoji: "🎓", dateTime: Date.createFromComponents(2023, 6, 1)!, color: Theme.getColor(.purple)),
        Countdown(name: "Vacation 2", emoji: "🌴", dateTime: Date.createFromComponents(2023, 8, 15)!, color: Theme.getColor(.yellow)),
        Countdown(name: "Anniversary 2", emoji: "❤️", dateTime: Date.createFromComponents(2023, 2, 14)!, color: Theme.getColor(.blue)),
        Countdown(name: "Project Deadline", emoji: "⏰", dateTime: Date.createFromComponents(2023, 11, 30)!, color: Theme.getColor(.orange)),
        Countdown(name: "Conference 2", emoji: "💼", dateTime: Date.createFromComponents(2023, 10, 15)!, color: Theme.getColor(.red)),
        Countdown(name: "Christmas", emoji: "🎄", dateTime: Date.createFromComponents(2023, 12, 25)!, color: Theme.getColor(.red)),
        Countdown(name: "Easter", emoji: "🐰", dateTime: Date.createFromComponents(2023, 4, 17)!, color: Theme.getColor(.blue)),
        Countdown(name: "Meeting 2", emoji: "💬", dateTime: Date.createFromComponents(2023, 11, 5)!, color: Theme.getColor(.green)),
        Countdown(name: "Vacation 3", emoji: "⛱️", dateTime: Date.createFromComponents(2023, 7, 1)!, color: Theme.getColor(.red)),
        Countdown(name: "Anniversary 3", emoji: "💍", dateTime: Date.createFromComponents(2023, 9, 10)!, color: Theme.getColor(.orange)),
        Countdown(name: "Birthday 2", emoji: "🎁", dateTime: Date.createFromComponents(2023, 10, 2)!, color: Theme.getColor(.orange)),
        Countdown(name: "Meeting 3", emoji: "💼", dateTime: Date.createFromComponents(2023, 11, 20)!, color: Theme.getColor(.purple)),
        Countdown(name: "Conference 3", emoji: "📊", dateTime: Date.createFromComponents(2023, 9, 15)!, color: Theme.getColor(.purple)),
    ]
}
