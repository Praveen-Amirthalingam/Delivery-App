//
//  LoginModel.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import SwiftUI

struct LoginRequestModel: Codable {
    var username: String
    var password: String
    
    enum CodingKeys: String, CodingKey {
        case username
        case password
    }
}

struct LoginResponseModel: Codable {
    var id: Int
    var token: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case token
    }
}
