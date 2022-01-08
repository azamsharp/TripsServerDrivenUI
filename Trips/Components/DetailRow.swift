//
//  DetailRow.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import Foundation
import SwiftUI

struct DetailRow: UIComponent {
    
    let uiModels: [DetailRowUIModel]
    
    func render() -> AnyView {
        
        List(uiModels, id: \.id) { uiModel in
            DetailRowView(uiModel: uiModel)
        }.toAnyView()
        
        
    }
}

