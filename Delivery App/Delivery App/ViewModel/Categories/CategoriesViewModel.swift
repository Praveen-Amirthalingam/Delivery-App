//
//  CategoriesViewModel.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import SwiftUI

class CategoriesViewModel: ObservableObject {
    @Published var allCategories = Categories()
    @Published var categoryArray = [Category]()
    @Published var searchText = ""
    @Published var filteredResult = [Category]()
    
    func getAllCategories() {
        NetworkClient().getAllCategories { result in
            switch result {
            case .success(let categories):
                self.allCategories = categories
                self.categoryArray = self.allCategories.value ?? [Category]()
                self.filteredResult = self.categoryArray
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func filterData() -> [Category] {
        if searchText.isEmpty {
            return self.allCategories.value ?? [Category]()
        }else{
            return self.categoryArray.filter{ $0.categoryName.lowercased().contains(searchText.lowercased())}
        }
    }
}
