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
        HStack {
            
            
            AsyncImage(url: uiModel.imageUrl) { phase in
                if let image = phase.image {
                    image.resizable()
                        .frame(maxWidth: 100, maxHeight: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                } else if phase.error != nil {
                    Text("Unable to load image!")
                } else {
                    ProgressView("Loading...")
                }
            }.padding()
            
            VStack(alignment: .leading, spacing: 10) {
                Text(uiModel.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(uiModel.body)
                    .font(.caption)
            }
            
           
            
            
        }//.padding(.leading, 20)
    }
}

struct DetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRowView(uiModel: DetailRowUIModel(id: 1, title: "Denver", body: "Welcome to Denver",  imageUrl: URL(string: "https://media.istockphoto.com/photos/denver-colorado-skyscrapers-snowy-longs-peak-rocky-mountains-summer-picture-id537215344?b=1&k=20&m=537215344&s=170667a&w=0&h=XWs_6QpXP7FOqYkm0LYAUtGGphgC2RAhd3LqKbatR4w=")!))
    }
}
