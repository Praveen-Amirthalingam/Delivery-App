//
//  ImageOnCircle.swift
//  Delivery App
//
//  Created by apple on 25/09/23.
//

import SwiftUI

struct ImageOnCircle: View {
    
    let image: Image
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.white)
                .frame(width: width, height: height)
            image
                .resizable()
                .aspectRatio(Constraints.aspectRatio, contentMode: .fit)
                .frame(width: Constraints.width, height: Constraints.height)
        }
    }
}

extension ImageOnCircle {
    struct Constraints {
        static let aspectRatio = CGFloat(1.0)
        static let width = CGFloat(50.0)
        static let height = CGFloat(50.0)
    }
}
