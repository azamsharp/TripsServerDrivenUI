//
//  DetailRowUIModel.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import Foundation

struct DetailRowUIModel: Decodable {
    let id: Int
    let title: String
    let body: String
    let imageUrl: URL
}
