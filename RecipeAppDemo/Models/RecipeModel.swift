//
//  RecipeModel.swift
//  RecipeAppDemo
//
//  Created by Roy Aiyetin on 14/05/2022.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let direction: String
    let ingredients: String
    let category: Category.RawValue // Raw value means read the string and not the case itself
    let dataPublished: String
    let url: String
}

enum Category: String {
    case rice = "Rice"
    case soupAndStew = "Soup and Stew"
    case bean = "Bean"
    case meat = "Meat"
    case yam = "Yam"
    case cassava = "Cassava"
    case snack = "Snack"
    case beverage = "Beverage"
    case other = "Other"
}



// create static variable to store all the recipe data

