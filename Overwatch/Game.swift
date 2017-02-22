//
//  Game.swift
//  Overwatch
//
//  Created by William Brancato on 2/22/17.
//  Copyright © 2017 Gamesmith, LLC. All rights reserved.
//

import Foundation

struct Game {
    var offenseCharacters: [Hero] = []
    var defenseCharacters: [Hero] = []
    var supportCharacters: [Hero] = []
    var tankCharacters: [Hero] = []
    var heroType: HeroType = .offense
    var heroes: [Hero] { return heroesForType() }
    
    init() {
        self.createAllHeroes()
    }
    
    func heroesForType() -> [Hero] {
        switch self.heroType {
        case .offense: return self.offenseCharacters
        case .defense: return self.defenseCharacters
        case .support: return self.supportCharacters
        case .tank: return self.tankCharacters
        }
    }
    
}

extension Game {
    
    mutating func createAllHeroes() {
        for type in HeroType.allTypes {
            for name in HeroName.heroes(with: type) {
                switch type {
                case .offense: self.offenseCharacters.append(Hero(name: name))
                case .defense: self.defenseCharacters.append(Hero(name: name))
                case .tank:    self.supportCharacters.append(Hero(name: name))
                case .support: self.tankCharacters.append(Hero(name: name))
                }
            }
        }
    }
    
}
