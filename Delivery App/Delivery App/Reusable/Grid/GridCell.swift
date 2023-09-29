//
//  GridCell.swift
//  Delivery App
//
//  Created by apple on 27/09/23.
//

import SwiftUI

struct GridCell: View {
    let item: Category
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: Constraints.spacing) {
                NetworkImage(url: PRODUCT_API.BASE_URL + item.imagePath)
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.67)
                    .padding(.top, Constraints.padding_0)
                    .scaledToFit()
                HStack {
                    Text(item.categoryName)
                        .font(Font.custom(Constants.Design.Font.roboto, size: Constants.Design.Font.Size.size_18))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                        .frame(width: geometry.size.width, alignment: .leading)
                        .padding(.horizontal, 5)
                }
                
                HStack {
                    Text("(\(item.stockAvailable))")
                        .font(Font.custom(Constants.Design.Font.roboto, size: Constants.Design.Font.Size.size_12))
                        .foregroundColor(Constants.Design.Colors.Text.secondary)
                        .frame(width: geometry.size.width, alignment: .leading)
                        .padding(.horizontal, Constraints.padding_5)
                }
            }
        }
        .background(Color.white)
        .frame(width: width, height: height)
        .overlay(
            RoundedRectangle(cornerRadius: Constraints.cornorRadius_10)
                    .stroke(Constants.Design.Colors.cardBorder, lineWidth: Constraints.lineWidth)
            )
    }
}

extension GridCell {
    struct Constraints {
        static let padding_0 = CGFloat(0)
        static let padding_5 = CGFloat(5.0)
        static let spacing = CGFloat(10.0)
        static let cornorRadius_10 = CGFloat(10.0)
        static let lineWidth = CGFloat(2.0)
    }
}
