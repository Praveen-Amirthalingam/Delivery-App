//
//  NetworkManager.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import Foundation
import Combine


class NetworkManager {
        enum ManagerErrors: Error {
            case invalidResponse
            case invalidStatusCode(Int)
        }

        enum HttpMethod: String {
            case get
            case post

            var method: String { rawValue.uppercased() }
        }
    
    func request<T: Decodable>(fromURL url: URL, params: Data?, httpMethod: NetworkManager.HttpMethod, completion: @escaping (Result<T, Error>) -> Void) {
        
        let completionOnMain: (Result<T, Error>) -> Void = { result in
            DispatchQueue.main.async {
                completion(result)
            }
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = httpMethod.method
        if params != nil{
            request.httpBody = params
        }
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        let urlSession = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completionOnMain(.failure(error))
                return
            }
            
            guard let data = data else { return }
            do {
                let users = try JSONDecoder().decode(T.self, from: data)
                completionOnMain(.success(users))
            } catch {
                debugPrint("Could not translate the data to the requested type. Reason: \(error.localizedDescription)")
                completionOnMain(.failure(error))
            }
        }
        
        // Start the request
        urlSession.resume()
    }
}
