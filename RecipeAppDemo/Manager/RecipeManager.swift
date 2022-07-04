//
//  RecipeManager.swift
//  RecipeAppDemo
//
//  Created by Roy Aiyetin on 19/05/2022.
//

import Foundation

class RecipeManager {
    
    func getRecipe() async throws -> Response {
        let urlString = "https"
        guard let url = URL(string: urlString
                            ) else { fatalError("Missing URL")}
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(from: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data")}
        
        let decodedData = try JSONDecoder().decode(Response.self, from: data)
        
        return decodedData
    }
}

struct Response: Decodable {
    
}
