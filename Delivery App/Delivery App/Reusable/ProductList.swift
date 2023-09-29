//
//  ProductList.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import SwiftUI

struct ProductList: View {
    
    var items: [Product]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ProductListCell(item: item)
            }
            .listRowBackground(Constants.Design.Colors.ViewBackground.background)
        }
        .listStyle(.inset)
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductList(items: [])
    }
}
