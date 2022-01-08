//
//  LayoutModel.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import Foundation

enum ComponentType: String, Decodable {
    case imageHeader
    case detailRow 
}

struct ComponentLayout: Decodable {
    
    let type: ComponentType
    var data: [String: Any]
    
    private enum CodingKeys: CodingKey {
        case type
        case data
    }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(ComponentType.self, forKey: .type)
        
        let value = try container.decode(AnyDecodable.self, forKey: .data).value
        print(value.self)
        
       
        
        self.data = value as! [String: Any]
        
        //self.data = try container.decode(AnyDecodable.self, forKey: .data).value as! [String: Any]
    }
}
