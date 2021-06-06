//
//  PokemonDetailsPage.swift
//  PokedexMVC
//
//  Created by Will Xavier on 03/06/21.
//

import SwiftUI

struct PokemonDetailsPage: View {
    
    // MARK: - Variables
    var pokemon: PokemonModel
    
    // MARK: - State
//    @Binding var showSheet: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(pokemon.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
//                Button(action: {
//                    print("closing")
////                    self.showSheet = false
//                }) {
//                    Image(systemName: "chevron.down")
//                        .padding(.all, 16)
////                        .frame(width: 100, height: 100, alignment: .center)
//                        .background(Color("PrimaryColor").opacity(0.7))
//                        .foregroundColor(Color("SecondaryColor"))
//                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                }
            }
            .padding(.horizontal, 16)
            Spacer()
            AsyncImage(
                url: self.pokemon.imageUrl
                    )
            .aspectRatio(contentMode: .fit)
            .padding(.all, 16.0)
            Spacer()
            Text("Order: \(pokemon.id)")
            Text("Types:")
                .padding(.vertical)
            HStack {
                ForEach(self.pokemon.types) { type in
                    PokemonTypeLabel(type: type)
                        .padding(.trailing)
                }
            }.padding(.leading)
            Spacer()
        }
        .padding(.all, 16.0)
    }
}

struct PokemonDetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailsPage(pokemon: PokemonModel(id: 1, name: "Bulbasaur", types: [
            PokemonTypeModel(type: .poison),
            PokemonTypeModel(type: .grass)
        ]))
    }
}
