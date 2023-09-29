//
//  ImageSlider.swift
//  Delivery App
//
//  Created by apple on 27/09/23.
//

import SwiftUI

struct ImageSlider: View {
    
    let images: [String]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                AsyncImage(
                    url: URL(string: PRODUCT_API.BASE_URL + image),
                    content: { image in
                        image.resizable()
                            .resizable()
                            .scaledToFill()
                            
                    },
                    placeholder: {
                        ProgressView()
                            .frame(alignment: .center)
                    }
                )
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct ImageSlider_Previews: PreviewProvider {
    static var previews: some View {
        ImageSlider(images: ["cali"])
    }
}
