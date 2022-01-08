//
//  UIComponent.swift
//  Trips
//
//  Created by Mohammad Azam on 1/8/22.
//

import Foundation
import SwiftUI 

protocol UIComponent {
    var uniqueId: UUID { get }
    func render() -> AnyView
}

extension UIComponent {
    var uniqueId: UUID {
        UUID()
    }
}
