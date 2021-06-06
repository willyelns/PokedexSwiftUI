//
//  PokemonTypeModel.swift
//  PokedexMVC
//
//  Created by Will Xavier on 03/06/21.
//

import Foundation
import SwiftUI

enum PokemonType: String {
    case dark = "Dark"
    case dragon = "Dragon"
    case electric = "Electric"
    case fairy = "Fairy"
    case fighting = "Fighting"
    case fire = "Fire"
    case flying = "Flying"
    case ghost = "Ghost"
    case grass = "Grass"
    case ground = "Ground"
    case ice = "Ice"
    case normal = "Normal"
    case poison = "Poison"
    case psychic = "Psychic"
    case rock = "Rock"
    case steel = "Steel"
    case water = "Water"
}

struct PokemonTypeModel: Identifiable {
    var id: String
    var image: String
    var color: Color
    
    init(type: PokemonType) {
        let typeValue = type.rawValue
        self.id = typeValue
        self.image = "\(typeValue)TypeImage"
        self.color = Color("\(typeValue)TypeColor")
    }
}
