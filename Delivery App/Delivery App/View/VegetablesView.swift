//
//  VegetablesView.swift
//  Delivery App
//
//  Created by apple on 26/09/23.
//

import SwiftUI

struct VegetablesView: View {
    @Environment(\.dismiss) private var dismiss
    let selectedCategory: Category
    @ObservedObject var productsViewModel = CategoryDetailViewModel()
    
    var body: some View {
        NavigationView {
            
                VStack {
                    HStack {
                        ChipContainerView(viewModel: productsViewModel)
                            .padding(.leading, Constraints.padding_20)
                    }
                    .frame(width: Constraints.chipViewWidth, height: Constraints.chipViewHeight)
                    Spacer()
                    if productsViewModel.filteredResult.count > 0{
                        if productsViewModel.isRefresh {
                            ProductList(items: productsViewModel.filteredResult)
                        }
                    }else{
                        Text("No Data Found")
                            .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_40))
                            .foregroundColor(Constants.Design.Colors.Text.primary)
                            .frame(height: Constants.Design.ScreenSize.height, alignment: .center)
                    }
                }
                .background(Constants.Design.Colors.ViewBackground.background)
                .navigationBarBackButtonHidden(true)
                .navigationTitle(selectedCategory.categoryName)
                .navigationBarHidden(false)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            HStack {
                                Constants.Design.Images.back
                                    .foregroundColor(Constants.Design.Colors.Text.primary)
                                Spacer()
                            }
                        }
                    }
                }
                .searchable(text: $productsViewModel.searchText) {
                    let filteredData = productsViewModel.filterData()
                    ProductList(items: filteredData)
                        .frame(height: Constraints.listViewHeight)
                }
        }
        .onAppear(perform: {
            productsViewModel.getAllProducts(id: selectedCategory.id)
        })
    }
}

extension VegetablesView {
    struct Constraints {
        static let padding_20 = CGFloat(20.0)
        static let chipViewWidth = CGFloat(Constants.Design.ScreenSize.width)
        static let chipViewHeight = CGFloat(70.0)
        static let listViewHeight = CGFloat(Constants.Design.ScreenSize.height)
    }
}

struct VegetablesView_Previews: PreviewProvider {
    static var previews: some View {
        VegetablesView(selectedCategory: Category(id: 1, categoryName: "", stockAvailable: 23, imagePath: ""))
    }
}
