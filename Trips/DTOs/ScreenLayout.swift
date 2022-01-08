//
//  Layout.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import Foundation

struct ScreenLayout: Decodable {
    let title: String
    let components: [ComponentLayout]
}
