//
//  ChipView.swift
//  Delivery App
//
//  Created by apple on 27/09/23.
//

import SwiftUI

struct ChipView: View {
    @ObservedObject var viewModel = CategoryDetailViewModel()
    let systemImage: String
    let titleKey: String
    @State var isSelected: Bool
    
    var body: some View {
        HStack(spacing: 4) {
            if isSelected {
                Image.init(systemName: systemImage).font(.body)
            }
            Text(titleKey).font(.body).lineLimit(1)
        }
        .padding(.vertical, 4)
        .padding(.leading, 4)
        .padding(.trailing, 10)
        .font(Font.custom(Constants.Design.Font.sfProText, size: 22))
        .foregroundColor(isSelected ? Constants.Design.Colors.chipSelectText : Constants.Design.Colors.Text.secondary)
        .background(isSelected ? Constants.Design.Colors.chipSelectBg : Color.white)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.clear, lineWidth: 1.5)
            
        ).onTapGesture {
            isSelected.toggle()
            if isSelected {
                viewModel.selectedChipTitle = titleKey
                viewModel.getFilteredDataByChip(name: titleKey)
            }else{
                viewModel.isChipSelected = false
            }
            
        }
    }
}
