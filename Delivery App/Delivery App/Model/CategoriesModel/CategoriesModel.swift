//
//  CategoriesModel.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import SwiftUI

struct Categories: Decodable {
    var message: String?
    var value: [Category]?
    var isSuccess: Bool?
    var isFailure: Bool?
    
    enum CodingKeys: String, CodingKey {
        case message
        case value
        case isSuccess
        case isFailure
    }
}

struct Category: Codable, Hashable, Identifiable {
    var id: Int
    var categoryName: String
    var stockAvailable: Int
    var imagePath: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case categoryName
        case stockAvailable
        case imagePath
    }
}
