//
//  ChipView.swift
//  Delivery App
//
//  Created by apple on 27/09/23.
//

import SwiftUI

struct ChipView: View {
    @StateObject var viewModel = CategoryDetailViewModel()
    let systemImage: String
    let titleKey: String
    @State var isSelected: Bool
    
    var body: some View {
        HStack(spacing: Constraints.spacing) {
            if isSelected {
                Image.init(systemName: systemImage).font(.body)
            }
            Text(titleKey).font(.body).lineLimit(Constraints.lineLimit)
        }
        .padding(.vertical, Constraints.padding_4)
        .padding(.leading, Constraints.padding_4)
        .padding(.trailing, Constraints.padding_10)
        .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_22))
        .foregroundColor(isSelected ? Constants.Design.Colors.chipSelectText : Constants.Design.Colors.Text.secondary)
        .background(isSelected ? Constants.Design.Colors.chipSelectBg : Color.white)
        .cornerRadius(Constraints.cornorRadius_20)
        .overlay(
            RoundedRectangle(cornerRadius: Constraints.cornorRadius_20)
                .stroke(Color.clear, lineWidth: Constraints.linewidth)
            
        ).onTapGesture {
            isSelected.toggle()
            if isSelected {
                viewModel.selectedChipTitle = titleKey
                viewModel.getFilteredDataByChip(name: titleKey)
            }else{
                viewModel.isChipSelected = false
                viewModel.selectedChipTitle = ""
                viewModel.getFilteredDataByChip(name: "")
            }
            
        }
    }
}

extension ChipView {
    struct Constraints {
        static let spacing = CGFloat(4.0)
        static let lineLimit = Int(1)
        static let padding_4 = CGFloat(4.0)
        static let padding_10 = CGFloat(10.0)
        static let cornorRadius_20 = CGFloat(20.0)
        static let linewidth = CGFloat(1.5)
    }
}
