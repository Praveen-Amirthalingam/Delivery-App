//
//  LoginView.swift
//  Delivery App
//
//  Created by apple on 28/09/23.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject private var loginViewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            if loginViewModel.isAuthenticated {
                MainView()
                    .navigationBarBackButtonHidden(true)
            }else{
                VStack(spacing: Constraints.spacing_28) {
                    Text(Constants.Content.appTitle)
                        .font(Font.custom(Constants.Design.Font.sfProDisplay, size: Constants.Design.Font.Size.size_34))
                        .padding(.top, Constraints.padding_44)
                    Constants.Design.Images.logo
                        .resizable()
                        .frame(width: Constraints.logoWidth, height: Constraints.logoHeight)
                    
                    VStack(alignment: .leading, spacing: Constraints.spacing_10) {
                        Text(Constants.Content.Text.Username)
                            .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                            .foregroundColor(Constants.Design.Colors.Text.primary)
                            .frame(height: Constraints.height_15, alignment: .leading)
                        
                        TextField("", text: $loginViewModel.username)
                            .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                            .foregroundColor(Constants.Design.Colors.Text.primary)
                            .frame(height: Constraints.height_44)
                            .padding(.horizontal, Constraints.padding_12)
                            .background(Color.white)
                            .cornerRadius(Constraints.cornorRadius_4)
                            .overlay(RoundedRectangle(cornerRadius: Constraints.cornorRadius_10).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: Constraints.lineWidth_1)))
                        
                        if !loginViewModel.isValidUsername {
                            Text(Constants.Content.Text.EnterValidUsername)
                                .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_12))
                                .foregroundColor(.red)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: Constraints.spacing_10) {
                        Text(Constants.Content.Text.Password)
                            .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                            .foregroundColor(Constants.Design.Colors.Text.primary)
                            .frame(height: Constraints.height_15, alignment: .leading)
                        
                        SecureField("", text: $loginViewModel.password)
                            .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                            .foregroundColor(Constants.Design.Colors.Text.primary)
                            .frame(height: Constraints.height_44)
                            .padding(.horizontal, Constraints.padding_12)
                            .background(Color.white)
                            .cornerRadius(Constraints.cornorRadius_4)
                            .overlay(RoundedRectangle(cornerRadius: Constraints.cornorRadius_10).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: Constraints.lineWidth_1)))
                        
                        if !loginViewModel.isValidPassword {
                            Text(Constants.Content.Text.EnterValidPassword)
                                .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_12))
                                .foregroundColor(.red)
                        }
                    }
                    
                    Button {
                        loginViewModel.validateCredentials()
                    } label: {
                        Text(Constants.Content.ButtonText.Login)
                            .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                            .foregroundColor(.white)
                            .frame(width: Constraints.buttonWidth, height: Constraints.buttonHeight)
                        
                    }
                    .background(Constants.Design.Colors.Button.Background.primary)
                    .cornerRadius(Constraints.cornorRadius_10)
                    
                    Spacer()
                }
                .padding()
                .background(Constants.Design.Colors.ViewBackground.background)
            }
        }
    }
}

extension LoginView {
    struct Constraints {
        static let spacing_28 = CGFloat(28.0)
        static let spacing_10 = CGFloat(10.0)
        static let padding_44 = CGFloat(44.0)
        static let padding_12 = CGFloat(12.0)
        static let logoWidth = CGFloat(150.0)
        static let logoHeight = CGFloat(150.0)
        static let height_15 = CGFloat(15.0)
        static let height_44 = CGFloat(44.0)
        static let cornorRadius_4 = CGFloat(4.0)
        static let cornorRadius_10 = CGFloat(10.0)
        static let lineWidth_1 = CGFloat(1.0)
        static let buttonWidth = CGFloat(Constants.Design.ScreenSize.width - 40)
        static let buttonHeight = CGFloat(55.0)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
