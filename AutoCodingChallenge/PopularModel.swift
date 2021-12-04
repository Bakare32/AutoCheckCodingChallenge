//
//  PopularModel.swift
//  AutoCodingChallenge
//
//  Created by  Decagon on 03/12/2021.
//

import Foundation


struct Popular: Codable {
    let makeList: [MakeList]
    let pagination: Pagination
}

// MARK: - MakeList
struct MakeList: Codable {
    let id: Int
    let name: String
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case imageURL = "imageUrl"
    }
}

// MARK: - Pagination
struct Pagination: Codable {
    let total, currentPage, pageSize: Int
}
