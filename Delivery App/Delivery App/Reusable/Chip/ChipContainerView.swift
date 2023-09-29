//
//  ChipContainerView.swift
//  Delivery App
//
//  Created by apple on 27/09/23.
//

import SwiftUI

struct ChipContainerView: View {
    @ObservedObject var viewModel = CategoryDetailViewModel()
    @State var object = ""
    
    var body: some View {
        var width = CGFloat.zero
        var height = CGFloat.zero
        return GeometryReader { geo in
            ZStack(alignment: .topLeading, content: {
                ForEach(viewModel.chipArray) { data in
                    ChipView(viewModel: viewModel, systemImage: data.image,
                             titleKey: data.title,
                             isSelected: data.isSelected)
                    .padding(.all, Constraints.padding_5)
                        .alignmentGuide(.leading) { dimension in
                            if (abs(width - dimension.width) > geo.size.width) {
                                width = Constraints.zero
                                height -= dimension.height
                            }
                            let result = width
                            if data.id == viewModel.chipArray.last!.id {
                                width = Constraints.zero
                            } else {
                                width -= dimension.width
                            }
                            return result
                        }
                        .alignmentGuide(.top) { dimension in
                            let result = height
                            if data.id == viewModel.chipArray.last!.id {
                                height = Constraints.zero
                            }
                            return result
                        }
                }
            })
        }
    }
}

extension ChipContainerView {
    struct Constraints {
        static let padding_5 = CGFloat(5.0)
        static let zero = CGFloat(0.0)
    }
}





