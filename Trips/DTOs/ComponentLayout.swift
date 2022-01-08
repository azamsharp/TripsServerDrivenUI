//
//  LayoutModel.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import Foundation

enum ComponentType: String, Decodable {
    case imageHeader 
}

struct ComponentLayout: Decodable {
    let type: String
    let data: [String: String]
}
