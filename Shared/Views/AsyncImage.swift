//
//  AsyncImageView.swift
//  PokedexMVC
//
//  Created by Will Xavier on 03/06/21.
//

import SwiftUI

struct AsyncImage: View {
    @StateObject private var loader: ImageLoader


    init(url: URL) {
        _loader = StateObject(wrappedValue: ImageLoader(url: url))
    }

    var body: some View {
        content
            .onAppear(perform: loader.load)
    }

    private var content: some View {
        Group {
            if loader.image != nil {
                Image(uiImage: loader.image!)
                    .resizable()
            } else {
//                Text("Loading...")
                HStack(alignment: .center) {
                    Spacer()
                    ProgressView()
                    Spacer()
                }
            }
        }
    }
}
