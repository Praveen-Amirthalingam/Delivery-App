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
            VStack(alignment: .leading, spacing: 10) {
                AsyncImage(
                    url: URL(string: PRODUCT_API.BASE_URL + item.imagePath),
                    content: { image in
                        image.resizable()
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width, height: geometry.size.height * 0.67)
                            .padding(.top, 0)
                    },
                    placeholder: {
                        ProgressView()
                            .frame(alignment: .center)
                    }
                )
                HStack {
                    Text(item.categoryName)
                        .font(Font.custom(Constants.Design.Font.roboto, size: 18))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                        .frame(width: geometry.size.width, alignment: .leading)
                        .padding(.horizontal, 5)
                }
                
                HStack {
                    Text("(\(item.stockAvailable))")
                        .font(Font.custom(Constants.Design.Font.roboto, size: 12))
                        .foregroundColor(Constants.Design.Colors.Text.secondary)
                        .frame(width: geometry.size.width, alignment: .leading)
                        .padding(.horizontal, 5)
                }
            }
        }
        .background(Color.white)
        .frame(width: width, height: height)
        .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Constants.Design.Colors.cardBorder, lineWidth: 2.0)
            )
    }
}
