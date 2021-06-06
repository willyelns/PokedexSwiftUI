//
//  PokemonTypeLabel.swift
//  PokedexMVC
//
//  Created by Will Xavier on 03/06/21.
//

import SwiftUI

struct PokemonTypeLabel: View {
    
    var type: PokemonTypeModel
    
    var body: some View {
        Text(type.id)
            .font(.body)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.center)
            .padding(.all, 8.0)
            .background(type.color)
            .foregroundColor(.white)
            .cornerRadius(5)
    }
}

struct PokemonTypeLabel_Previews: PreviewProvider {
    static var previews: some View {
        PokemonTypeLabel(type: PokemonTypeModel(type: .fire)).previewLayout(.fixed(width: 100, height: 100))
    }
}
