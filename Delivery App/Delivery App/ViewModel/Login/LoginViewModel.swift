//
//  LoginViewModel.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var username: String = "kminchelle"
    @Published var password: String = "0lelplR"
    @Published var isValidUsername: Bool = true
    @Published var isValidPassword: Bool = true
    @Published var isAuthenticated: Bool = false
    
    func validateCredentials() {
        self.isValidUsername = username.isEmpty ? false: true
        self.isValidPassword = password.isEmpty ? false: true
        if !username.isEmpty && !password.isEmpty {
            login()
        }
    }
    
    func login() {
        let param = ["username": username, "password": password]
        if let data = try? JSONSerialization.data(withJSONObject: param) {
            NetworkClient().userLogin(requestData: data) { result in
                switch result {
                case .success(let user):
                    print(user)
                    self.isAuthenticated = true
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
