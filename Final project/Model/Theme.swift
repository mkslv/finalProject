//
//  Еруьу.swift
//  Final project
//
//  Created by Max Kiselyov on 11/1/23.
//

import Foundation

struct Theme {
    enum CardColors {
        case red
        case orange
        case yellow
        case green
        case blue
        case purple
        
        var rgb: String {
            switch self {
            case .red:
                return "cardRed"
            case .orange:
                return "cardOrange"
            case .yellow:
                return "cardYellow"
            case .green:
                return "cardGreen"
            case .blue:
                return "cardBlue"
            case .purple:
                return "cardPurple"
            }
        }
    }
    
    static func getColor(_ color: CardColors) -> String {
        return color.rgb
    }
}
