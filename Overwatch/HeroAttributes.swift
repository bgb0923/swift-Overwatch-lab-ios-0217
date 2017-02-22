//
//  HeroAttributes.swift
//  Overwatch
//
//  Created by William Brancato on 2/22/17.
//  Copyright © 2017 Gamesmith, LLC. All rights reserved.
//

import Foundation

enum HeroName: String, CustomStringConvertible {
    
    var description: String {
        switch self {
        case .soldier76:
            return "Soldier 76"
        default:
            return rawValue.capitalized
        }
        
    }
        case genji
        case mcCree
        case pharah
        case reaper
        case soldier76
        case tracer
        case bastion
        case hanzo
        case junkrat
        case mei
        case torbjörn
        case widowmaker
        case dva
        case reinhardt
        case roadhog
        case winston
        case zarya
        case ana
        case lúcio
        case mercy
        case symmetra
        case zenyatta
    
    static func heroes(with type: HeroType) -> [HeroName] {
        switch type {
            case .offense: return [.genji, .mcCree, .pharah, .reaper, .soldier76, .tracer]
            case .defense: return [.bastion, .hanzo, .junkrat, .mei, .torbjörn, .widowmaker]
            case .tank: return [.dva, .reinhardt, .roadhog, .winston, .zarya]
            case .support: return [.ana, .lúcio, .mercy, .symmetra, .zenyatta]
        }
    }
    
}

enum HeroType: String, CustomStringConvertible {
    
    static var allTypes: [HeroType] {
        return [.offense, .defense, .tank, .support]
    }
    
    var description: String {
        switch self {
        case .offense: return "Offense: 💥"
        case .defense: return "Defense: 🛡"
        case .support: return "Support: 🚑"
        case .tank: return "Tank: 🐼"
        }
    }
    case offense
    case defense
    case support
    case tank
}
