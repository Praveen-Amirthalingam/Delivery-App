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
                            .frame(width:  Constraints.logoImageWidth, height:  Constraints.logoImageHeight)
                            .offset(x:  Constraints.logoImageOffsetX, y:  Constraints.logoImageOffsetY)
                        Spacer()
                    }
                    Spacer()
                    VStack(spacing: Constraints.spacing_40, content: {
                        Spacer()
                        ImageOnCircle(image: Constants.Design.Images.box, width:  Constraints.dropBoxImageWidth, height:  Constraints.dropBoxImageHeight)
                            .frame(alignment: .topLeading)
                        
                        Text(Constants.Content.Text.NonContactDeliveries)
                            .font(Font.custom(Constants.Design.Font.sfProDisplay, size: Constants.Design.Font.Size.size_34))
                            .multilineTextAlignment(.center)
                        
                        Text(Constants.Content.Text.WhenPlacingOrder)
                            .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_17))
                            .multilineTextAlignment(.center)
                            .frame(width:  Constraints.textWidth)
                        
                        NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true)) {
                            Text(Constants.Content.ButtonText.OrderNow)
                                .foregroundColor(.white)
                                .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_17))
                        }
                        .frame(width:  Constraints.OrderNowButtonWidth, height:  Constraints.OrderNowButtonHeight)
                        .background(Constants.Design.Colors.Button.Background.primary)
                        .cornerRadius( Constraints.cornorRadius_8)
                        
                        Button {
                            
                        } label: {
                            Text(Constants.Content.ButtonText.Dismiss)
                                .foregroundColor(Constants.Design.Colors.Button.Text.secondary)
                                .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_17))
                        }
                        Spacer()
                        
                    })
                    .frame(width:  Constraints.vStackWidth, height:  Constraints.vStackHeight)
                    .background(Constants.Design.Colors.ViewBackground.background)
                    .padding(.bottom)
                    .cornerRadius( Constraints.cornorRadius_20)
                }
                .padding(.vertical,  Constraints.padding_35)
            }
        }
    }
}

extension SplashScreen {
    struct Constraints {
        static let spacing_40 = CGFloat(40.0)
        static let logoImageWidth = CGFloat(100.0)
        static let logoImageHeight = CGFloat(100.0)
        static let logoImageOffsetX = CGFloat(20.0)
        static let logoImageOffsetY = CGFloat(45.0)
        static let dropBoxImageWidth = CGFloat(100.0)
        static let dropBoxImageHeight = CGFloat(100.0)
        static let textWidth = CGFloat(Constants.Design.ScreenSize.width - 40.0)
        static let OrderNowButtonWidth = CGFloat(Constants.Design.ScreenSize.width - 40.0)
        static let OrderNowButtonHeight = CGFloat(55.0)
        static let cornorRadius_8 = CGFloat(8.0)
        static let vStackWidth = CGFloat(Constants.Design.ScreenSize.width)
        static let vStackHeight = CGFloat(Constants.Design.ScreenSize.height / 1.6)
        static let cornorRadius_20 = CGFloat(20.0)
        static let padding_35 = CGFloat(-35.0)
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
