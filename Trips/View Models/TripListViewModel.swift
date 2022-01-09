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
                switch component.type {
                    case .imageHeader:
                        guard let uiModel: HeaderImageUIModel = component.data.decode() else { return }
                        components.append(HeaderImage(uiModel: uiModel))
                    case .list:
                        guard let uiModel: ListUIModel = component.data.decode() else { return }
                        components.append(FlatList(uiModel: uiModel))
                   
                }
            }
            
        } catch {
            print(error)
        }
    }
    
}
