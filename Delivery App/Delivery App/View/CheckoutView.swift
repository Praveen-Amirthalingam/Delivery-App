//
//  CheckoutView.swift
//  Delivery App
//
//  Created by apple on 25/09/23.
//

import SwiftUI

struct CheckoutView: View {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.shadowColor = .clear
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        NavigationView {
            Text("Checkout")
                .navigationBarBackButtonHidden(true)
                .navigationTitle(Constants.Content.Text.CheckOut)
                .navigationBarHidden(false)
                .navigationBarTitleDisplayMode(.inline)
                .navigationViewStyle(.automatic)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            
                        } label: {
                            HStack {
                                Constants.Design.Images.back
                                    .foregroundColor(Constants.Design.Colors.Text.primary)
                                Spacer()
                            }
                        }
                    }
                }
        }
//        .onAppear{
//            let shadowImage = UIColor(named: "#000000")
//                        .image(CGSize(width: 1, height: 1 / UIScreen.main.scale))
//
//            let coloredAppearance = UINavigationBarAppearance()
//            coloredAppearance.shadowImage = shadowImage
//
//            UINavigationBar.appearance().standardAppearance = coloredAppearance
//            UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
//        }
         
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}
