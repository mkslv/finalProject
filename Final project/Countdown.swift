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
        Countdown(name: "Birthday", emoji: "🎂", dateTime: Date.createFromComponents(2023, 11, 11, 12, 1)!, color: .cyan),
        Countdown(name: "Halloween", emoji: "🎃", dateTime: Date.createFromComponents(2023, 10, 31)!, isArchived: true, color: .systemCyan),
        Countdown(name: "New Year", emoji: "🎉", dateTime: Date.createFromComponents(2023, 12, 31)!, isArchived: true, color: .systemCyan),
        Countdown(name: "Anniversary", emoji: "💑", dateTime: Date.createFromComponents(2023, 7, 15)!, color: .systemRed),
        Countdown(name: "Vacation", emoji: "✈️", dateTime: Date.createFromComponents(2023, 8, 1)!, color: .systemPink),
        Countdown(name: "Meeting", emoji: "🤝", dateTime: Date.createFromComponents(2023, 11, 15)!, color: .orange),
        Countdown(name: "Conference", emoji: "📊", dateTime: Date.createFromComponents(2023, 9, 30)!, color: .purple),
        Countdown(name: "Graduation", emoji: "🎓", dateTime: Date.createFromComponents(2023, 6, 1)!, color: .green),
        Countdown(name: "Vacation 2", emoji: "🌴", dateTime: Date.createFromComponents(2023, 8, 15)!, color: .yellow),
        Countdown(name: "Anniversary 2", emoji: "❤️", dateTime: Date.createFromComponents(2023, 2, 14)!, color: .blue),
        Countdown(name: "Project Deadline", emoji: "⏰", dateTime: Date.createFromComponents(2023, 11, 30)!, color: .brown),
        Countdown(name: "Conference 2", emoji: "💼", dateTime: Date.createFromComponents(2023, 10, 15)!, color: .magenta),
        Countdown(name: "Christmas", emoji: "🎄", dateTime: Date.createFromComponents(2023, 12, 25)!, color: .red),
        Countdown(name: "Easter", emoji: "🐰", dateTime: Date.createFromComponents(2023, 4, 17)!, color: .gray),
        Countdown(name: "Meeting 2", emoji: "💬", dateTime: Date.createFromComponents(2023, 11, 5)!, color: .lightGray),
        Countdown(name: "Vacation 3", emoji: "⛱️", dateTime: Date.createFromComponents(2023, 7, 1)!, color: .magenta),
        Countdown(name: "Anniversary 3", emoji: "💍", dateTime: Date.createFromComponents(2023, 9, 10)!, color: .magenta),
        Countdown(name: "Birthday 2", emoji: "🎁", dateTime: Date.createFromComponents(2023, 10, 2)!, color: .lightGray),
        Countdown(name: "Meeting 3", emoji: "💼", dateTime: Date.createFromComponents(2023, 11, 20)!, color: .darkGray),
        Countdown(name: "Conference 3", emoji: "📊", dateTime: Date.createFromComponents(2023, 9, 15)!, color: .cyan),
    ]
}
