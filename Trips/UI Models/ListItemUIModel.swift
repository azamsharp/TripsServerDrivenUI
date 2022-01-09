//
//  ListItemUIModel.swift
//  Trips
//
//  Created by Mohammad Azam on 1/9/22.
//

import Foundation

struct ListItemUIModel: Decodable {
    let id: Int
    let title: String
    let imageUrl: URL
    var showHeart: Bool?
}
