//
//  GridView.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import SwiftUI

struct GridView: View {
    
    var items: [Category]
    let gridItems = [GridItem(.flexible()),
                     GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: gridItems, spacing: 20) {
                ForEach(items, id: \.self) { category in
                    GridColumn(item: category, width: (Constants.Design.ScreenSize.width / 2) - 20, height: 210.0)
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(items: [Category]())
    }
}
