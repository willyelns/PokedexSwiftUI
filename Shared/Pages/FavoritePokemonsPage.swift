//
//  FavoritePokemonsPage.swift
//  PokedexMVC
//
//  Created by Will Xavier on 03/06/21.
//

import SwiftUI

struct FavoritePokemonsPage: View {
    var pokemonFavList = retrieveAllPokemonModels()
    
    var body: some View {
        NavigationView {
            List(self.pokemonFavList) { pokemon in
                PokemonRow(pokemon: pokemon)
            } //: - List

            .navigationBarTitle(Text("Favorite Pokemons"))
        } //: - NavigationView
        
    }
}

struct FavoritePokemonsPage_Previews: PreviewProvider {
    static var previews: some View {
        FavoritePokemonsPage()
    }
}
