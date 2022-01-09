//
//  ListUIModel.swift
//  Trips
//
//  Created by Mohammad Azam on 1/9/22.
//

import Foundation

protocol ListItem {
    var id: UUID { get }
}

extension ListItem {
    var id: UUID {
        UUID()
    }
}

enum ListItemType: String, Decodable {
    case detailRow
    case artworkRow 
}

struct ListUIModel: Decodable {
    
    let items: [AnyDecodable]
    let itemType: ListItemType
    
    private enum CodingKeys: CodingKey {
        case itemType
        case items
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemType = try container.decode(ListItemType.self, forKey: .itemType)
        self.items = try container.decode([AnyDecodable].self, forKey: .items)
    }
}
