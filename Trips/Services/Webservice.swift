//
//  Webservice.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import Foundation

enum LayoutError: Error {
    case missing
    case invalid
}

class Webservice {
    
    func getTripListLayout() async throws -> ScreenLayout {
        
        guard let path = Bundle.main.path(forResource: "trip-list-screen", ofType: "json") else {
            throw LayoutError.missing
        }
        
        guard let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
            throw LayoutError.invalid
        }
        
        return try JSONDecoder().decode(ScreenLayout.self, from: data)
    }
    
}
