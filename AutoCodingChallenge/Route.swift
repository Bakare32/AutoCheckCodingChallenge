//
//  Route.swift
//  AutoCodingChallenge
//
//  Created by  Decagon on 03/12/2021.
//

import Foundation



enum Route {
    static let baseUrl = "https://api"
    
    case popular
    case allCars
    
    var description: String {
        switch self {
        case .popular:
            return ".staging.myautochek.com/v1/inventory/make?popular=true"
        case .allCars:
            return "-prod.autochek.africa/v1/inventory/car/search"
        }
    }
}


