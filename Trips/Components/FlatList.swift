//
//  List.swift
//  Trips
//
//  Created by Mohammad Azam on 1/9/22.
//

import Foundation
import SwiftUI

struct FlatList: UIComponent {
    
    let uiModel: ListUIModel
    
    func render() -> AnyView {
        
        switch uiModel.itemType {
            case .detailRow:
                let items: [DetailRowUIModel] = uiModel.items.toUiModelArray()
                return List(items, id: \.id) { item in
                    DetailRowView(uiModel: item)
                }.listStyle(.plain).toAnyView()
            case .artworkRow:
                let items: [ArtworkRowUIModel] = uiModel.items.toUiModelArray()
                return List(items, id: \.id) { item in
                    ArtworkRowView(uiModel: item)
                }.listStyle(.plain).toAnyView()
        }
    }
}
