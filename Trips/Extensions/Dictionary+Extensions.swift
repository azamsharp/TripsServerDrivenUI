//
//  Dictionary+Extensions.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import Foundation

extension Dictionary {
    
    func decode<T: Decodable>() -> T? {
        
        guard let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else {
            return nil
        }
        
        return try? JSONDecoder().decode(T.self, from: data)
    }
    
}

// usage
// let user: User = ["username": "johndoe"].decode()


/*
 struct User {
    let username: String
 }
 */
