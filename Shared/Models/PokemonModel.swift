//
//  PokemonModel.swift
//  PokedexMVC
//
//  Created by Will Xavier on 03/06/21.
//

import Foundation

struct PokemonModel: Identifiable {
    let id: Int
    let name: String
    let imageUrl: URL
    let types: [PokemonTypeModel]
    var isFavorite: Bool = false
    
    init(id: Int, name: String, types: [PokemonTypeModel]) {
        self.id = id
        self.name = name
        self.imageUrl = URL(string: "https://pokeres.bastionbot.org/images/pokemon/\(self.id).png")!
        self.types = types
//        self.isFavorite = false
    }
}
