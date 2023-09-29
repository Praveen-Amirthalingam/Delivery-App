//
//  NetworkImage.swift
//  Delivery App
//
//  Created by apple on 29/09/23.
//

import SwiftUI

struct NetworkImage: View {
    
    let url: String
    
    var body: some View {
        AsyncImage(
            url: URL(string: url),
            content: { image in
                image
                    .resizable()
            },
            placeholder: {
                Constants.Design.Images.placeHolderImage
            }
        )
    }
}

struct NetworkImage_Previews: PreviewProvider {
    static var previews: some View {
        NetworkImage(url: PRODUCT_API.sampleImage)
    }
}
