//
//  NetworkHelper.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import Foundation

enum PRODUCT_API {
    static let BASE_URL = "https://sampleapi.xenovex.com"
    
    //Services
    static let CATEGORIES = "/api/delivery/categories"
    static let SUB_CATEGORIES = "/api/delivery/2/saleitems"

    case getAllCategories
    case getAllSubCategories

    var apiString: String {
        switch self {
        case .getAllCategories:
            return PRODUCT_API.BASE_URL + PRODUCT_API.CATEGORIES
        case .getAllSubCategories:
            return PRODUCT_API.BASE_URL + PRODUCT_API.SUB_CATEGORIES
        }
    }
}

enum LOGIN_API {
    static let BASE_URL = "https://dummyjson.com"
    
    case userLogin
    
    var apiString: String {
        switch self {
        case .userLogin:
            return LOGIN_API.BASE_URL + "/auth/login"
        }
    }
}
