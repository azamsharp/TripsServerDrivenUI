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
                    case .detailRow:
                        guard let uiModels: DetailListUIModel = component.data.decode() else { return }
                        components.append(DetailRow(uiModels: uiModels.rows))
                }
            }
            
        } catch {
            print(error)
        }
    }
    
}
