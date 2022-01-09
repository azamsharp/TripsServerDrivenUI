//
//  ArtworkRowView.swift
//  Trips
//
//  Created by Mohammad Azam on 1/9/22.
//

import SwiftUI

struct ArtworkRowView: View {
    
    let uiModel: ArtworkRowUIModel
    
    var body: some View {
        HStack {
            AsyncImage(url: uiModel.imageUrl) { phase in
                if let image = phase.image {
                    image.resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                } else if phase.error != nil {
                    Text("Unable to load image!")
                } else {
                    ProgressView("Loading...")
                }
            }.padding()
        }.frame(maxWidth: .infinity)
    }
}

struct ArtworkRowView_Previews: PreviewProvider {
    static var previews: some View {
        ArtworkRowView(uiModel: ArtworkRowUIModel(id: 1, imageUrl: URL(string: "https://media.istockphoto.com/photos/denver-colorado-usa-downtown-skyline-drone-aerial-picture-id1292266863?b=1&k=20&m=1292266863&s=170667a&w=0&h=LN--HcrF9NVido1aJm6UVUAPJ6GBNRfUeQM24XBGBQs=")!))
    }
}
