//
//  Еруьу.swift
//  Final project
//
//  Created by Max Kiselyov on 11/1/23.
//

import UIKit

struct Theme {
    enum CardColors {
        case red
        case orange
        case yellow
        case green
        case blue
        case purple
        
        var rgb: (red: CGFloat, green: CGFloat, blue: CGFloat) {
            switch self {
            case .red:
                return (178/255, 59/255, 75/255)
            case .orange:
                return (231/255, 166/255, 81/255)
            case .yellow:
                return (204/255, 182/255, 98/255)
            case .green:
                return (86/255, 134/255, 77/255)
            case .blue:
                return (65/255, 110/255, 156/255)
            case .purple:
                return (120/255, 75/255, 161/255)
            }
        }
    }
    
    static func getColor(_ color: CardColors) -> UIColor {
        UIColor(red: color.rgb.red, green: color.rgb.green, blue: color.rgb.blue, alpha: 1.0)
    }
}
