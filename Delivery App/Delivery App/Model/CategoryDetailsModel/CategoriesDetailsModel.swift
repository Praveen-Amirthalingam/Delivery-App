//
//  CategoriesDetailsModel.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import SwiftUI

struct CategoryDetails: Codable {
    var message: String?
    var value: [Product]?
    var isSuccess: Bool?
    var isFailure: Bool?
    
    enum CodingKeys: String, CodingKey {
        case message
        case value
        case isSuccess
        case isFailure
    }
}

struct Product: Codable, Identifiable, Hashable {
    var id: Int
    var categoryId: Int
    var itemName: String
    var price: Double
    var unit: String
    var countryOfOrigin: String
    var history: String
    var images: [String]
    
    enum CodingKeys: String, CodingKey {
        case id
        case categoryId
        case itemName
        case price
        case unit
        case countryOfOrigin
        case history
        case images
    }
}
