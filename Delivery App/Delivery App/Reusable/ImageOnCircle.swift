//
//  ImageOnCircle.swift
//  Delivery App
//
//  Created by apple on 25/09/23.
//

import SwiftUI

struct ImageOnCircle: View {
    
    let image: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.white)
                .frame(width: width, height: height)
            Image(image)
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
        }
    }
}
