//
//  AllCarsModel.swift
//  AutoCodingChallenge
//
//  Created by  Decagon on 04/12/2021.
//


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

//import Foundation
//
//// MARK: - Welcome
//struct Welcome: Codable {
//    let result: [Scores]
//    let pagination: Page
//}
//
//// MARK: - Pagination
//struct Page: Codable {
//    let total, currentPage, pageSize: Int
//}
//
//// MARK: - Result
//struct Scores: Codable {
//    let id, title: String
//    let imageURL: String
//    let year: Int
//    let city: String
//    let state: State
//    let gradeScore: Double
//    let sellingCondition: SellingCondition
//    let hasWarranty: Bool
//    let marketplacePrice, marketplaceOldPrice: Int
//    let hasFinancing: Bool
//    let mileage: Int
//    let mileageUnit: MileageUnit
//    let installment: Int
//    let depositReceived: Bool
//    let loanValue: Double
//    let websiteURL: String
//    let stats: Stats
//    let bodyTypeID: String
//    let sold, hasThreeDImage: Bool
//
//    enum CodingKeys: String, CodingKey {
//        case id, title
//        case imageURL = "imageUrl"
//        case year, city, state, gradeScore, sellingCondition, hasWarranty, marketplacePrice, marketplaceOldPrice, hasFinancing, mileage, mileageUnit, installment, depositReceived, loanValue
//        case websiteURL = "websiteUrl"
//        case stats
//        case bodyTypeID = "bodyTypeId"
//        case sold, hasThreeDImage
//    }
//}
//
//enum MileageUnit: String, Codable {
//    case km = "km"
//    case miles = "miles"
//}
//
//enum SellingCondition: String, Codable {
//    case foreign = "foreign"
//    case local = "local"
//}
//
//enum State: String, Codable {
//    case lagos = "Lagos"
//    case portHarcourt = "Port Harcourt"
//}
//
//// MARK: - Stats
//struct Stats: Codable {
//    let webViewCount, webViewerCount, interestCount, testDriveCount: Int
//    let appViewCount, appViewerCount, processedLoanCount: Int
//}



// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let result: [Scores]
    let pagination: Page
}

// MARK: - Pagination
struct Page: Codable {
    let total, currentPage, pageSize: Int
}

// MARK: - Result
struct Scores: Codable {
    let id, title: String
    let imageURL: String
    let year: Int
    let city: String
    let state: State
    let gradeScore: Double
    let sellingCondition: SellingCondition
    let hasWarranty: Bool
    let marketplacePrice, marketplaceOldPrice: Int
    let hasFinancing: Bool
    let mileage: Int
    let mileageUnit: MileageUnit
    let installment: Int
    let depositReceived: Bool
    let loanValue: Int
    let websiteURL: String
    let stats: Stats
    let bodyTypeID: String
    let sold, hasThreeDImage: Bool
    let hasCleanTitle: Bool?

    enum CodingKeys: String, CodingKey {
        case id, title
        case imageURL = "imageUrl"
        case year, city, state, gradeScore, sellingCondition, hasWarranty, marketplacePrice, marketplaceOldPrice, hasFinancing, mileage, mileageUnit, installment, depositReceived, loanValue
        case websiteURL = "websiteUrl"
        case stats
        case bodyTypeID = "bodyTypeId"
        case sold, hasThreeDImage, hasCleanTitle
    }
}

enum MileageUnit: String, Codable {
    case km = "km"
    case miles = "miles"
}

enum SellingCondition: String, Codable {
    case foreign = "foreign"
    case local = "local"
}

enum State: String, Codable {
    case abuja = "Abuja"
    case lagos = "Lagos"
    case portHarcourt = "Port Harcourt"
}

// MARK: - Stats
struct Stats: Codable {
    let webViewCount, webViewerCount, interestCount, testDriveCount: Int
    let appViewCount, appViewerCount, processedLoanCount: Int
}


//import Foundation
//
//// MARK: - Welcome
//struct AllCars: Codable {
//    let result: [Scores]
//    let pagination: Page
//}
//
//// MARK: - Pagination
//struct Page: Codable {
//    let total, currentPage, pageSize: Int
//}
//
//// MARK: - Result
//struct Scores: Codable {
//    let id, title: String
//    let imageURL: String
//    let year: Int
//    let city: String
//    let state: State
//    let gradeScore: Double
//    let sellingCondition: String?
//    let hasWarranty: Bool
//    let marketplacePrice, marketplaceOldPrice: Int
//    let hasFinancing: Bool
//    let mileage: Int
//    let mileageUnit: String?
//    let installment: Int
//    let depositReceived: Bool
//    let loanValue: Int
//    let websiteURL: String
//    let stats: Stats
//    let bodyTypeID: String
//    let sold, hasThreeDImage: Bool
//    let hasCleanTitle: Bool?
//
//    enum CodingKeys: String, CodingKey {
//        case id, title
//        case imageURL = "imageUrl"
//        case year, city, state, gradeScore, sellingCondition, hasWarranty, marketplacePrice, marketplaceOldPrice, hasFinancing, mileage, mileageUnit, installment, depositReceived, loanValue
//        case websiteURL = "websiteUrl"
//        case stats
//        case bodyTypeID = "bodyTypeId"
//        case sold, hasThreeDImage, hasCleanTitle
//    }
//}
//
//enum MileageUnit: String, Codable {
//    case km = "km"
//    case miles = "miles"
//}
//
//enum SellingCondition: String, Codable {
//    case foreign = "foreign"
//    case local = "local"
//}
//
//enum State: String, Codable {
//    case abuja = "Abuja"
//    case lagos = "Lagos"
//}
//
//// MARK: - Stats
//struct Stats: Codable {
//    let webViewCount, webViewerCount, interestCount, testDriveCount: Int
//    let appViewCount, appViewerCount, processedLoanCount: Int
//}
//
