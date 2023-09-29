//
//  GridColumn.swift
//  Delivery App
//
//  Created by apple on 26/09/23.
//

import SwiftUI

struct GridColumn:View {
    let item: Category
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        NavigationLink {
            VegetablesView(selectedCategory: item)
                .navigationBarBackButtonHidden(true)
        } label: {
            GridCell(item: item, width: width, height: height)
        }
    }
}

