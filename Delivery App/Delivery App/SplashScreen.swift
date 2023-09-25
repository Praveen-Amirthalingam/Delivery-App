//
//  SplashScreen.swift
//  Delivery App
//
//  Created by apple on 25/09/23.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Image("splashbg")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .background(CustomColor.splashBgColor)
                    VStack(alignment: .leading, content: {
                        HStack {
                            Image("logo")
                                .frame(width: 100.0, height: 100.0)
                                .offset(x: 20.0, y: 45.0)
                            Spacer()
                        }
                        Spacer()
                        VStack(spacing: 40, content: {
                            Spacer()
                            ImageOnCircle(image: "box", width: 100.0, height: 100.0)
                                .frame(alignment: .topLeading)
                            
                            Text("Non-Contact Deliveries")
                                .font(Font.custom(CustomFonts.sfProDisplayFont, size: 34))
                                .multilineTextAlignment(.center)
                            
                            Text("When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.")
                                .font(Font.custom(CustomFonts.sfProTextFont, size: 17))
                                .multilineTextAlignment(.center)
                                .frame(width: UIScreen.main.bounds.width - 40)
                            
                            NavigationLink(destination: MainView()) {
                                Text("ORDER NOW")
                                    .foregroundColor(.white)
                                    .font(Font.custom(CustomFonts.sfProTextFont, size: 17))
                            }
                            .frame(width: UIScreen.main.bounds.width - 40, height: 55)
                            .background(CustomColor.primaryButtonColor)
                            .cornerRadius(8.0)
                            
                            Button {
                                
                            } label: {
                                Text("DISMISS")
                                    .foregroundColor(CustomColor.secondaryButtonColor)
                                    .font(Font.custom(CustomFonts.sfProTextFont, size: 17))
                            }
                            Spacer()
                            
                        })
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.6)
                        .background(CustomColor.appBgColor)
                        .padding(.bottom)
                        .cornerRadius(20)
                    })
                }
                .ignoresSafeArea()
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
