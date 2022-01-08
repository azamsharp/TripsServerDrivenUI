//
//  HeaderImageView.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import SwiftUI

struct HeaderImageView: View {
    
    let uiModel: HeaderImageUIModel
    
    var body: some View {
        AsyncImage(url: uiModel.imageUrl) { phase in
            if let image = phase.image {
                image
            } else if phase.error != nil {
                Text("Unable to load image")
            } else {
                ProgressView("Loading...")
            }
        }
    }
}

struct HeaderImageView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderImageView(uiModel: HeaderImageUIModel(imageUrl: URL(string: "")!))
    }
}
