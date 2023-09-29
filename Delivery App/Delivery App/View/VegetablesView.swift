//
//  VegetablesView.swift
//  Delivery App
//
//  Created by apple on 26/09/23.
//

import SwiftUI

struct VegetablesView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var productsViewModel = CategoryDetailViewModel()
    
    var body: some View {
        NavigationView {
                VStack {
                    HStack {
                        ChipContainerView(viewModel: productsViewModel)
                            .padding(.leading, 20)
                    }
                    .frame(width: Constants.Design.ScreenSize.width, height: 70)
                    Spacer()
                    ProductList(items: productsViewModel.filteredResult)
                }
                .background(Constants.Design.Colors.ViewBackground.background)
            .navigationBarBackButtonHidden(true)
            .navigationTitle(Constants.Content.Text.Vegetables)
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
                    .frame(height: Constants.Design.ScreenSize.height)
            }
        }
        .onAppear(perform: {
            productsViewModel.getAllProducts()
        })
    }
}

struct VegetablesView_Previews: PreviewProvider {
    static var previews: some View {
        VegetablesView()
    }
}
