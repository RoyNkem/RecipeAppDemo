//
//  TabBar.swift
//  RecipeAppDemo
//
//  Created by Roy Aiyetin on 12/05/2022.
//

import SwiftUI

struct TabBar: Identifiable {
    var id = UUID()
    var tab: Tab
    var title: String
    var icon: String
    var color: Color
}

var tabItems = [TabBar(tab: .home, title: "Home", icon: "house", color: .teal),
                TabBar(tab: .categories, title: "Categories", icon: "list.bullet", color: .blue),
                TabBar(tab: .new, title: "New", icon: "plus", color: .purple),
                TabBar(tab: .favorites, title: "Favorites", icon: "heart", color: .yellow),
                TabBar(tab: .settings, title: "Settings", icon: "gear", color: .red)]

enum Tab {
    case home
    case categories
    case new
    case favorites
    case settings
}
