//
//  PokemonDataSource.swift
//  PokedexMVC
//
//  Created by Will Xavier on 04/06/21.
//

import Foundation

func retrieveAllPokemonModels() -> [PokemonModel] {
    return [
        PokemonModel(id: 1, name: "Bulbasaur", types: [
            PokemonTypeModel(type: .poison),
            PokemonTypeModel(type: .grass)
        ]),
        PokemonModel(id: 2, name: "Ivysaur", types: [
            PokemonTypeModel(type: .poison),
            PokemonTypeModel(type: .grass)
        ]),
        PokemonModel(id: 3, name: "Venosaur", types: [
            PokemonTypeModel(type: .poison),
            PokemonTypeModel(type: .grass)
        ]),
        PokemonModel(id: 4, name: "Charmander", types: [
            PokemonTypeModel(type: .fire)
        ]),
        PokemonModel(id: 5, name: "Charmeleon", types: [
            PokemonTypeModel(type: .fire)
        ]),
        PokemonModel(id: 6, name: "Charizard", types: [
            PokemonTypeModel(type: .fire),
            PokemonTypeModel(type: .flying)
        ]),
    ]
}
