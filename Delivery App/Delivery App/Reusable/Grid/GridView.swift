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
            LazyVGrid(columns: gridItems, spacing: Constraints.spacing) {
                ForEach(items, id: \.self) { category in
                    GridColumn(item: category, width: Constraints.gridColumnWidth, height: Constraints.gridColumnHeight)
                }
            }
        }
    }
}

extension GridView {
    struct Constraints {
        static let spacing = CGFloat(20.0)
        static let gridColumnWidth = CGFloat((Constants.Design.ScreenSize.width / 2) - 20)
        static let gridColumnHeight = CGFloat(210.0)
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(items: [Category]())
    }
}
