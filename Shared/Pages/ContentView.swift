//
//  ContentView.swift
//  Shared
//
//  Created by Will Xavier on 02/06/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
           TabView {
               AllPokemonsPage()
                   .tabItem {
                       Label("All", systemImage: "list.dash")
                   }

               FavoritePokemonsPage()
                   .tabItem {
                       Label("Favorites", systemImage: "star.fill")
                   }
           }
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
