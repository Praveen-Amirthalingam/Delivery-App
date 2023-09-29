//
//  ItemView.swift
//  Delivery App
//
//  Created by apple on 27/09/23.
//

import SwiftUI

struct ItemView: View {
    
    var item: Product
    
    var body: some View {
            ZStack {
                ImageSlider(images: item.images)
                    .frame(height: 450)
                    .position(x: Constants.Design.ScreenSize.width / 2, y: 170)

                VStack(spacing: 20) {
                    Text(item.itemName)
                        .font(Font.custom(Constants.Design.Font.sfProDisplay, size: 30))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                        .frame(width: Constants.Design.ScreenSize.width - 20, alignment: .leading)
                    HStack {
                        Text(String(format: "%.2f", item.price))
                            .font(Font.custom(Constants.Design.Font.sfProText, size: 32))
                            .foregroundColor(Constants.Design.Colors.Text.primary)
                        Text("€ / \(item.unit)")
                            .font(Font.custom(Constants.Design.Font.sfProText, size: 24))
                            .foregroundColor(Constants.Design.Colors.Text.secondary)
                        Spacer()
                    }
                    .padding(.leading, 20)
                    Text("~ 150 gr / piece")
                        .font(Font.custom(Constants.Design.Font.sfProText, size: 17))
                        .foregroundColor(Constants.Design.Colors.Button.Background.primary)
                        .frame(width: Constants.Design.ScreenSize.width - 20, alignment: .leading)
                    Text(item.countryOfOrigin)
                        .font(Font.custom(Constants.Design.Font.sfProText, size: 22))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                        .frame(width: Constants.Design.ScreenSize.width - 20, alignment: .leading)
                    Text(item.history)
                        .font(Font.custom(Constants.Design.Font.sfProText, size: 17))
                        .foregroundColor(Constants.Design.Colors.Text.secondary)
                        .padding(.leading, 10)
                        .frame(width: Constants.Design.ScreenSize.width, alignment: .leading)
                    HStack(spacing: 20) {
                        Button {
                            
                        } label: {
                            Constants.Design.Images.heartBox
                        }
                        Button {
                            
                        } label: {
                            Constants.Design.Images.addCart
                        }
                    }
                }
                .zIndex(1)
                .background(Constants.Design.Colors.ViewBackground.background)
                .frame(width: Constants.Design.ScreenSize.width + 20, height: Constants.Design.ScreenSize.height / 1.6)
                .position(x: Constants.Design.ScreenSize.width / 2, y: 500)
                .padding(.top, 100)
                .cornerRadius(20)
                
            }
        .frame(width: Constants.Design.ScreenSize.width, height: Constants.Design.ScreenSize.height)
        .background(Constants.Design.Colors.ViewBackground.background)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        let thingToPreview = Product(id: 1, categoryId: 1, itemName: "", price: 12.0, unit: "", countryOfOrigin: "", history: "", images: [])
        ItemView(item: thingToPreview)
    }
}
