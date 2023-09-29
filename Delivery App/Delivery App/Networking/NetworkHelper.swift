//
//  NetworkHelper.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import Foundation

enum PRODUCT_API {
    static let BASE_URL = "https://sampleapi.xenovex.com"
    static let PATH = "/api/delivery/"
    
    static let sampleImage = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF2rc5fMG0GGwLz1dGplURamj_EX7bOMay2w&usqp=CAU"
    
    //Services
    static let CATEGORIES = "categories"
    static let SUB_CATEGORIES = "saleitems"

    case getAllCategories
    case getAllSubCategories(value: Int)

    var apiString: String {
        switch self {
        case .getAllCategories:
            return PRODUCT_API.BASE_URL + PRODUCT_API.PATH + PRODUCT_API.CATEGORIES
        case .getAllSubCategories(value: let value):
            return PRODUCT_API.BASE_URL + PRODUCT_API.PATH + "\(value)/" + PRODUCT_API.SUB_CATEGORIES
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
