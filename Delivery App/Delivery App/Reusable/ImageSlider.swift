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
            if images.count > 0 {
                ForEach(images, id: \.self) { image in
                    NetworkImage(url: PRODUCT_API.BASE_URL + image)
                        .scaledToFill()
                }
            }else{
                NetworkImage(url: PRODUCT_API.sampleImage)
                    .scaledToFill()
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
