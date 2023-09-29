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
            AsyncImage(
                url: URL(string: PRODUCT_API.BASE_URL + item.images[1]),
                content: { image in
                    image.resizable()
                        .resizable()
                        .scaledToFit()
                        .frame(width: 170.0)
                        .cornerRadius(10)
                },
                placeholder: {
                    ProgressView()
                        .frame(alignment: .center)
                }
            )
            VStack(spacing: 15) {
                HStack {
                    Text(item.itemName)
                        .font(Font.custom(Constants.Design.Font.sfProText, size: 22))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                    Spacer()
                }
                HStack {
                    Text(String(format: "%.2f", item.price))
                        .font(Font.custom(Constants.Design.Font.sfProText, size: 22))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                    Text("€ / \(item.unit)")
                        .font(Font.custom(Constants.Design.Font.sfProText, size: 16))
                        .foregroundColor(Constants.Design.Colors.Text.secondary)
                    Spacer()
                }
                HStack(spacing: 20) {
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
        .frame(height: 150.0)
        .overlay(content: {
            NavigationLink {
                ItemView(item: item)
            } label: {
                EmptyView()
            }.opacity(0.0)
        })
    }
}

struct ProductListCell_Previews: PreviewProvider {
    static var previews: some View {
        let thingToPreview = Product(id: 1, categoryId: 1, itemName: "", price: 12.0, unit: "", countryOfOrigin: "", history: "", images: [])
        ProductListCell(item: thingToPreview)
    }
}
