//
//  DetailRow.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import Foundation
import SwiftUI

struct DetailRow: UIComponent {
    
    let uiModel: DetailRowUIModel
    
    func render() -> AnyView {
        DetailRowView(uiModel: uiModel).toAnyView()
    }
}

