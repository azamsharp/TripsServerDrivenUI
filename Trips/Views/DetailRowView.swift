//
//  DetailRowView.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import SwiftUI

struct DetailRowView: View {
    
    let uiModel: DetailRowUIModel
    
    var body: some View {
        Text(uiModel.title)
    }
}

struct DetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRowView(uiModel: DetailRowUIModel(id: 1, title: "Denver"))
    }
}
