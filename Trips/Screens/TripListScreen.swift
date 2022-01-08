//
//  TripListScreen.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import SwiftUI

struct TripListScreen: View {
    
    @StateObject private var tripListVM = TripListViewModel()
    
    var body: some View {
        VStack {
            ForEach(tripListVM.components, id: \.uniqueId) { component in
                component.render()
            }
        }.task {
            await tripListVM.loadPage()
        }
    }
}

struct TripListScreen_Previews: PreviewProvider {
    static var previews: some View {
        TripListScreen()
    }
}
