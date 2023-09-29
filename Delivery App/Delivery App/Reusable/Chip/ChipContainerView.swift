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
                    ChipView(systemImage: data.image,
                             titleKey: data.title,
                             isSelected: data.isSelected)
                        .padding(.all, 5)
                        .alignmentGuide(.leading) { dimension in
                            if (abs(width - dimension.width) > geo.size.width) {
                                width = 0
                                height -= dimension.height
                            }
                            let result = width
                            if data.id == viewModel.chipArray.last!.id {
                                width = 0
                            } else {
                                width -= dimension.width
                            }
                            return result
                        }
                        .alignmentGuide(.top) { dimension in
                            let result = height
                            if data.id == viewModel.chipArray.last!.id {
                                height = 0
                            }
                            return result
                        }
                }
            })
        }
    }
}

//struct ChipContainerView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChipContainerView(selected: .constant("title"))
//    }
//}





