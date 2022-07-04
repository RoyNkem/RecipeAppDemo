//
//  TabView.swift
//  RecipeAppDemo
//
//  Created by Roy Aiyetin on 12/05/2022.
//

import SwiftUI

struct TabView: View {
    @State private var selectedTab: Tab = .home
    @State private var color: Color = .teal
    
    var body:  some View {
        ZStack(alignment: .bottom) {
            Group {
                switch selectedTab {
                case .home:
                    ContentView()
                case .categories:
                    DetailView()
                case .new:
                    NewRecipeView()
                case .favorites:
                    FavoritesView()
                case .settings:
                    SettingsView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            HStack {
                ForEach(tabItems) { item in
                    Button(action: {
                        selectedTab = item.tab
                        color = item.color
                    }) {
                        VStack {
                            Image(systemName: item.icon)
                                .symbolVariant(.fill)
                                .frame(width: 44, height: 30)
                            
                            Text(item.title)
                                .font(.caption2).lineLimit(1)
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .foregroundStyle(selectedTab == item.tab ? .primary : .secondary)
                }
            }
            .padding()
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
            .background(
                HStack {
                    if selectedTab == .settings { Spacer()}
                    if selectedTab == .favorites { Spacer()
                        Spacer()
                        Spacer()
                    }
                    if selectedTab == .categories { Spacer()}
                    Circle().fill(color).frame(width: 80)
                    if selectedTab == .favorites { Spacer()}
                    if selectedTab == .categories {Spacer()
                        Spacer()
                        Spacer()
                    }
                    if selectedTab == .home { Spacer()}
                }
                    .padding()
            )
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}


