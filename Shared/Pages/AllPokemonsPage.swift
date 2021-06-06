//
//  AllPokemonsPage.swift
//  PokedexMVC
//
//  Created by Will Xavier on 03/06/21.
//

import SwiftUI

struct AllPokemonsPage: View {
    
    //  MARK: - Variables
    
//    var pokemonList = [
//        PokemonModel(id: 1, name: "Bulbasaur", types: [
//            PokemonTypeModel(type: .poison),
//            PokemonTypeModel(type: .grass)
//        ]),
//        PokemonModel(id: 2, name: "Ivysaur", types: [
//            PokemonTypeModel(type: .poison),
//            PokemonTypeModel(type: .grass)
//        ]),
//        PokemonModel(id: 3, name: "Venosaur", types: [
//            PokemonTypeModel(type: .poison),
//            PokemonTypeModel(type: .grass)
//        ]),
//        PokemonModel(id: 4, name: "Charmander", types: [
//            PokemonTypeModel(type: .fire)
//        ]),
//        PokemonModel(id: 5, name: "Charmeleon", types: [
//            PokemonTypeModel(type: .fire)
//        ]),
//        PokemonModel(id: 6, name: "Charizard", types: [
//            PokemonTypeModel(type: .fire),
//            PokemonTypeModel(type: .flying)
//        ]),
//    ]
    var pokemonList = retrieveAllPokemonModels()
    
    // MARK: - States
    
    @State var showDetails = false
    
    
    // MARK: - body
    
    var body: some View {
        NavigationView {
            List(self.pokemonList, id: \.id) { pokemon in
                PokemonRow(pokemon: pokemon).onTapGesture {
                    print("TAAAAP on \(pokemon.name)")
                    self.showDetails.toggle()
                }.sheet(isPresented: $showDetails, onDismiss: {
                    print(" OOOOOON DISMISSSS")
                }) {
                    PokemonDetailsPage(pokemon: pokemon)
                }
            } //: - List
            

            .navigationBarTitle(Text("All Pokemons"))
        } //: - NavigationView
        
    }
}

// MARK: - Preview

struct AllPokemonsPage_Previews: PreviewProvider {
    static var previews: some View {
        AllPokemonsPage()
    }
}
