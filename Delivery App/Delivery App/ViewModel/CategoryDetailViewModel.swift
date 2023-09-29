//
//  CategoryDetailViewModel.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import SwiftUI

class CategoryDetailViewModel: ObservableObject {
    @Published var allProducts = CategoryDetails()
    @Published var productArray = [Product]()
    @Published var searchText = ""
    @Published var filteredResult = [Product]()
    @Published var chipsArray = [String]()
    @Published var chipArray: [ChipModel] = [ChipModel]()
    @Published var selectedChipTitle = ""
    @Published var isChipSelected: Bool = false
    
    func getAllProducts() {
        NetworkClient().getAllProducts { result in
            switch result {
            case .success(let products):
                print(products)
                self.allProducts = products
                self.productArray = self.allProducts.value ?? [Product]()
                self.filteredResult = self.productArray
                self.getChips()
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func filterData() -> [Product] {
        if searchText.isEmpty {
            return self.allProducts.value ?? [Product]()
        }else{
            return self.productArray.filter{ $0.itemName.lowercased().contains(searchText.lowercased())}
        }
    }
    
    func getChips() {
        var chips = [String]()
        let names = filteredResult.map { $0.itemName }
        for name in names {
            let count = filteredResult.filter{$0.itemName.lowercased().contains(name.lowercased())}.count
            print("Name: \(name), Count: \(count)")
            chips.append("\(name)(\(count))")
            
            chipArray.append(ChipModel(isSelected: false, image: "checkmark", title: "\(name)(\(count))"))
        }
        
    }
    
    func getFilteredDataByChip(name: String){
        self.filteredResult = self.productArray.filter{ $0.itemName.lowercased().contains(name.lowercased())}
        self.isChipSelected = true
    }
}
