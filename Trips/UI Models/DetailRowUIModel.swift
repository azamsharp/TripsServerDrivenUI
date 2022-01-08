//
//  DetailRowUIModel.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import Foundation

struct DetailListUIModel: Decodable {
    let rows: [DetailRowUIModel]
}

struct DetailRowUIModel: Decodable {
    let id: Int 
    let title: String
}
