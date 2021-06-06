//
//  PokemonRow.swift
//  PokedexMVC
//
//  Created by Will Xavier on 03/06/21.
//

import SwiftUI


struct PokemonRow: View {
    // MARK:  - Variables
    var pokemon: PokemonModel
    // MARK: - States
    @State private var isFavorite: Bool = false
    @State private var showTypeDetails: Bool = false
    
    init(pokemon: PokemonModel) {
        self.pokemon = pokemon
        self.isFavorite = pokemon.isFavorite
    }
    
    // MARK: - Body
    var body: some View {
        HStack {
            AsyncImage(
                url: self.pokemon.imageUrl
                    ).aspectRatio(contentMode: .fit)
            Spacer()
            self.titleItem(self.pokemon.name)
                    
                Spacer()
                VStack(alignment: .trailing) {
                    self.favoriteButton()
                    Spacer()
                    HStack {
                        ForEach(self.pokemon.types) { type in
//                            self.pokemonTypeLabel(type)
                            Button(action: {
                                print("show details")
                                self.showTypeDetails.toggle()
                            }) {
                                Group {
                                    if self.showTypeDetails {
                                        self.pokemonTypeLabel(type)
                                    } else {
                                        self.pokemonTypeIcon(type)
                                    }
                                }
                            }.buttonStyle(PlainButtonStyle())
                        }
                    } //: HStack - Type container
                } //: - VStack
                
        } //: - HStack
        .padding(.all, 16.0)
        .frame(width: 400.0, height: 150.0) // TODO: Check this size to autosize
        .border(Color("CardBorderColor"), width: 1.5)
        .cornerRadius(3.0)
    }
    
    // MARK: - View Methods
    
    private func titleItem(_ title: String) -> some View{
        return Text(title)
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
    }
    
    private func pokemonTypeLabel(_ type: PokemonTypeModel) -> some View {
        return Text(type.id)
            .font(.body)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.center)
            .padding(.all, 8.0)
            .background(type.color)
            .foregroundColor(.white)
            .cornerRadius(5)
    }
    
    private func pokemonTypeIcon(_ type: PokemonTypeModel) -> some View {
        return Image(type.image)
            .resizable()
            .scaledToFit()
            .padding(.all, 8.0)
            .background(type.color)
            .frame(width: 35.0, height: 35.0)
            .clipShape(Circle())
    }
    
    private func favoriteButton() -> some View {
        return Button(action: addToFavorite) {
            Image(systemName: isFavorite ? "star.fill" : "star")
                .resizable(resizingMode: .stretch)
                .foregroundColor(Color("FavoriteColor"))
                .frame(width: 30.0, height: 30.0)
        }.buttonStyle(PlainButtonStyle())
//        return Image(systemName: isFavorite ? "star.fill" : "star")
//            .resizable(resizingMode: .stretch)
//            .foregroundColor(Color("FavoriteColor"))
//            .frame(width: 30.0, height: 30.0)
    }
    
    // MARK: - Action Methods
    
    private func addToFavorite() {
        if !self.isFavorite {
            print("Set the \(self.pokemon.name) to favorite list")
        } else {
            print("Remove the \(self.pokemon.name) to favorite list")
        }
        self.isFavorite.toggle()
        
    }
}

struct PokemonRow_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRow(pokemon: PokemonModel(id: 1, name: "Bulbasaur", types: [
            PokemonTypeModel(type: .grass),
            PokemonTypeModel(type: .poison)
        ])).previewLayout(.fixed(width: 400, height: 150))
    }
}

