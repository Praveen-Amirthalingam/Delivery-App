//
//  ProductListCell.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import SwiftUI

struct ProductListCell: View {
    
    let item: Product
    
    var body: some View {
        HStack {
            if item.images.count > 1 {
                NetworkImage(url: PRODUCT_API.BASE_URL + item.images[1])
                    .scaledToFit()
                    .frame(width: Constraints.imageFrameWidth)
                    .cornerRadius(Constraints.imageCornorRadius)
            }else{
                Constants.Design.Images.placeHolderImage
                    .scaledToFit()
                    .frame(width: Constraints.imageFrameWidth)
                    .cornerRadius(Constraints.imageCornorRadius)
            }
            VStack(spacing: Constraints.spacing_15) {
                HStack {
                    Text(item.itemName)
                        .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_22))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                    Spacer()
                }
                HStack {
                    Text(String(format: "%.2f", item.price))
                        .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_22))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                    Text("€ / \(item.unit)")
                        .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_16))
                        .foregroundColor(Constants.Design.Colors.Text.secondary)
                    Spacer()
                }
                HStack(spacing: Constraints.spacing_20) {
                    Button {
                        
                    } label: {
                        Constants.Design.Images.addToFavorite
                    }
                    Button {
                        
                    } label: {
                        Constants.Design.Images.addToCart
                    }
                }
            }
            
        }
        .frame(height: Constraints.hStackHeight)
        .overlay(content: {
            NavigationLink {
                ItemView(item: item)
            } label: {
                EmptyView()
            }.opacity(0)
        })
    }
}

extension ProductListCell {
    struct Constraints {
        static let imageFrameWidth = CGFloat(170.0)
        static let imageCornorRadius = CGFloat(10.0)
        static let spacing_15 = CGFloat(15.0)
        static let spacing_20 = CGFloat(20.0)
        static let hStackHeight = CGFloat(150.0)
    }
}

struct ProductListCell_Previews: PreviewProvider {
    static var previews: some View {
        let thingToPreview = Product(id: 1, categoryId: 1, itemName: "", price: 12.0, unit: "", countryOfOrigin: "", history: "", images: [])
        ProductListCell(item: thingToPreview)
    }
}
