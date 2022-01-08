//
//  HeaderImage.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import Foundation
import SwiftUI 

struct HeaderImage: UIComponent {
    
    let uiModel: HeaderImageUIModel
    
    func render() -> AnyView {
        AsyncImage(url: uiModel.imageUrl).toAnyView()
    }
}
