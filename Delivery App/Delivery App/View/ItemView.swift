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
                    .frame(height: Constraints.imageSliderHeight)
                    .position(x: Constraints.dropViewPositionX, y: Constraints.imageSliderPositionY)

                VStack(spacing: 20) {
                    Text(item.itemName)
                        .font(Font.custom(Constants.Design.Font.sfProDisplay, size: Constants.Design.Font.Size.size_30))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                        .frame(width: Constraints.textWidth, alignment: .leading)
                    HStack {
                        Text(String(format: "%.2f", item.price))
                            .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_32))
                            .foregroundColor(Constants.Design.Colors.Text.primary)
                        Text("€ / \(item.unit)")
                            .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_24))
                            .foregroundColor(Constants.Design.Colors.Text.secondary)
                        Spacer()
                    }
                    .padding(.leading, Constraints.padding_20)
                    Text("~ 150 gr / \(item.unit)")
                        .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_17))
                        .foregroundColor(Constants.Design.Colors.Button.Background.primary)
                        .frame(width: Constraints.textWidth, alignment: .leading)
                    Text(item.countryOfOrigin)
                        .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_22))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                        .frame(width: Constraints.textWidth, alignment: .leading)
                    Text(item.history)
                        .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_17))
                        .foregroundColor(Constants.Design.Colors.Text.secondary)
                        .padding(.leading, 10)
                        .frame(width: Constraints.historyTextWidth, alignment: .leading)
                    HStack(spacing: Constraints.spacing_20) {
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
                .frame(width: Constraints.dropViewWidth, height: Constraints.dropViewHeight)
                .position(x: Constraints.dropViewPositionX, y: Constraints.dropViewPositionY)
                .padding(.top, Constraints.padding_100)
                .cornerRadius(Constraints.cornorRadius_20)
                
            }
        .frame(width: Constraints.zStackWidth, height: Constraints.zStackHeight)
        .background(Constants.Design.Colors.ViewBackground.background)
    }
}

extension ItemView {
    struct Constraints {
        static let imageSliderHeight = CGFloat(450.0)
        static let imageSliderPositionX = CGFloat(Constants.Design.ScreenSize.width / 2)
        static let imageSliderPositionY = CGFloat(170.0)
        static let textWidth = CGFloat(Constants.Design.ScreenSize.width - 20)
        static let historyTextWidth = CGFloat(Constants.Design.ScreenSize.width)
        static let padding_20 = CGFloat(20.0)
        static let padding_100 = CGFloat(100.0)
        static let padding_10 = CGFloat(10.0)
        static let spacing_20 = CGFloat(20.0)
        static let cornorRadius_20 = CGFloat(20.0)
        static let dropViewWidth = CGFloat(Constants.Design.ScreenSize.width + 20)
        static let dropViewHeight = CGFloat(Constants.Design.ScreenSize.height / 1.6)
        static let dropViewPositionX = CGFloat(Constants.Design.ScreenSize.width / 2)
        static let dropViewPositionY = CGFloat(500.0)
        static let zStackWidth = CGFloat(Constants.Design.ScreenSize.width)
        static let zStackHeight = CGFloat(Constants.Design.ScreenSize.height)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        let thingToPreview = Product(id: 1, categoryId: 1, itemName: "", price: 12.0, unit: "", countryOfOrigin: "", history: "", images: [])
        ItemView(item: thingToPreview)
    }
}
