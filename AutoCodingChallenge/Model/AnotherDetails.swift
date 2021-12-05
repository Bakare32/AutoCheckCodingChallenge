//
//  AnotherDetails.swift
//  AutoCodingChallenge
//
//  Created by  Decagon on 05/12/2021.
//

import Foundation

struct AnotherDetails: Codable {
    
    let id: String
    let year: Int
    let insured: Bool
    let mileage: Int
    let vin: String
    let marketplacePrice: Int
    let marketplaceVisible: Bool
    let marketplaceVisibleDate: String
    let isFeatured: Bool
    let inspectorDetails: InspectorDetails
    let model: Model
}


struct Model: Codable {

    let id: Int
    let name, imageURL, wheelType: String

    let popular: Bool

    enum CodingKeys: String, CodingKey {
        case id, name
        case imageURL = "imageUrl"
        case wheelType, popular
    }
}

struct InspectorDetails: Codable {
    let inspectorFullName: String
    let totalInspection: Int
}

