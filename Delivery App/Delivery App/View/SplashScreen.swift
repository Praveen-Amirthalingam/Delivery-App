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
            ZStack {
                Constants.Design.Images.spashBg
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .background(Constants.Design.Colors.ViewBackground.splashView)
                VStack {
                    HStack {
                        Constants.Design.Images.logo
                            .frame(width: 100.0, height: 100.0)
                            .offset(x: 20.0, y: 45.0)
                        Spacer()
                    }
                    Spacer()
                    VStack(spacing: 40, content: {
                        Spacer()
                        ImageOnCircle(image: Constants.Design.Images.box, width: 100.0, height: 100.0)
                            .frame(alignment: .topLeading)
                        
                        Text(Constants.Content.Text.NonContactDeliveries)
                            .font(Font.custom(Constants.Design.Font.sfProDisplay, size: 34))
                            .multilineTextAlignment(.center)
                        
                        Text(Constants.Content.Text.WhenPlacingOrder)
                            .font(Font.custom(Constants.Design.Font.sfProText, size: 17))
                            .multilineTextAlignment(.center)
                            .frame(width: Constants.Design.ScreenSize.width - 40)
                        
                        NavigationLink(destination: MainView()) {
                            Text(Constants.Content.ButtonText.OrderNow)
                                .foregroundColor(.white)
                                .font(Font.custom(Constants.Design.Font.sfProText, size: 17))
                        }
                        .frame(width: Constants.Design.ScreenSize.width - 40, height: 55)
                        .background(Constants.Design.Colors.Button.Background.primary)
                        .cornerRadius(8.0)
                        
                        Button {
                            
                        } label: {
                            Text(Constants.Content.ButtonText.Dismiss)
                                .foregroundColor(Constants.Design.Colors.Button.Text.secondary)
                                .font(Font.custom(Constants.Design.Font.sfProText, size: 17))
                        }
                        Spacer()
                        
                    })
                    .frame(width: Constants.Design.ScreenSize.width, height: Constants.Design.ScreenSize.height / 1.6)
                    .background(Constants.Design.Colors.ViewBackground.background)
                    .padding(.bottom)
                    .cornerRadius(20)
                }
                .padding(.vertical, -35)
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
