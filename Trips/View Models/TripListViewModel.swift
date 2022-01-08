//
//  TripListViewModel.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import Foundation

class TripListViewModel: ObservableObject {
    
    @Published var components: [UIComponent] = []
    
    func loadPage() async {
        
        do {
            let layout = try await Webservice().getTripListLayout()
            for component in layout.components {
                
            }
            
        } catch {
            print(error)
        }
        
    }
    
}
