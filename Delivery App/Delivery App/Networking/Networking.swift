//
//  Networking.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import Foundation
import Combine

struct NetworkClient {
    func userLogin(requestData: Data, completion: @escaping (Result<LoginResponseModel, Error>) -> Void) {
        let urlStr = LOGIN_API.userLogin.apiString
        guard let url = URL(string: urlStr) else { fatalError("Invalid URL") }

        NetworkManager().request(fromURL: url, params: requestData, httpMethod: .post) { (result: Result<LoginResponseModel, Error>) in
            completion(result)
        }
    }
    
    func getAllCategories(completion: @escaping (Result<Categories, Error>) -> Void) {
        let urlStr = PRODUCT_API.getAllCategories.apiString
        guard let url = URL(string: urlStr) else { fatalError("Invalid URL") }
        
        NetworkManager().request(fromURL: url, params: nil, httpMethod: .get) { (result: Result<Categories, Error>) in
            completion(result)
        }
    }
    
    func getAllProducts(completion: @escaping (Result<CategoryDetails, Error>) -> Void) {
        let urlStr = PRODUCT_API.getAllSubCategories.apiString
        guard let url = URL(string: urlStr) else { fatalError("Invalid URL") }
        
        NetworkManager().request(fromURL: url, params: nil, httpMethod: .get) { (result: Result<CategoryDetails, Error>) in
            completion(result)
        }
    }
}
