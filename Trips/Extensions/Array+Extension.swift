//
//  AnyDecodable+Extension.swift
//  Trips
//
//  Created by Mohammad Azam on 1/9/22.
//

import Foundation

extension Array where Element == AnyDecodable {
    
    func toUiModelArray<T: Decodable>() -> [T] {
        
        let items: [T] = self.compactMap {
            let dict = $0.value as! [String: Any]
            return dict.decode()
        }
        return items
    }
    
}
