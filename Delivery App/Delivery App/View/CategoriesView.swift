//
//  CategoriesView.swift
//  Delivery App
//
//  Created by apple on 25/09/23.
//

import SwiftUI

struct CategoriesView: View {
    
    @Environment(\.dismiss) private var dismiss
    @ObservedObject private var categoriesViewModel = CategoriesViewModel()
    
    var body: some View {
        NavigationView {
            GridView(items: categoriesViewModel.filteredResult)
            .background(Constants.Design.Colors.ViewBackground.background)
            .navigationBarBackButtonHidden(true)
            .navigationTitle(Constants.Content.Text.Categories)
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
            .searchable(text: $categoriesViewModel.searchText)
            {
                let array = categoriesViewModel.filterData()
                GridView(items: array)
            }
        }
        .onAppear(perform: {
            categoriesViewModel.getAllCategories()
        })
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
