//
//  FavoritesView.swift
//  RecipeAppDemo
//
//  Created by Roy Aiyetin on 12/05/2022.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("Find all your favorite recipes here")
                .navigationTitle("Favorites")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
