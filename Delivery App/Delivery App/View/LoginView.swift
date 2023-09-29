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
                VStack(spacing: 28) {
                    Text(Constants.Content.appTitle)
                        .font(Font.custom(Constants.Design.Font.sfProDisplay, size: 34))
                        .padding(.top, 44)
                    Constants.Design.Images.logo
                        .resizable()
                        .frame(width: 150.0, height: 150.0)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text(Constants.Content.Text.Username)
                            .font(Font.custom(Constants.Design.Font.sfProText, size: 18))
                            .foregroundColor(Constants.Design.Colors.Text.primary)
                            .frame(height: 15, alignment: .leading)
                        
                        TextField("", text: $loginViewModel.username, onEditingChanged: { isChanged in
                            if isChanged {
                                
                            }else{
                                
                            }
                        })
                        .font(.system(size: 17, weight: .thin))
                        .foregroundColor(.primary)
                        .frame(height: 44)
                        .padding(.horizontal, 12)
                        .background(Color.white)
                        .cornerRadius(4.0)
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        
                        if !loginViewModel.isValidUsername {
                            Text(Constants.Content.Text.EnterValidUsername)
                                .font(Font.custom(Constants.Design.Font.sfProText, size: 12))
                                .foregroundColor(.red)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text(Constants.Content.Text.Password)
                            .font(Font.custom(Constants.Design.Font.sfProText, size: 18))
                            .foregroundColor(Constants.Design.Colors.Text.primary)
                            .frame(height: 15, alignment: .leading)
                        
                        SecureField("", text: $loginViewModel.password)
                            .font(.system(size: 17, weight: .thin))
                            .foregroundColor(.primary)
                            .frame(height: 44)
                            .padding(.horizontal, 12)
                            .background(Color.white)
                            .cornerRadius(4.0)
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                        
                        if !loginViewModel.isValidPassword {
                            Text(Constants.Content.Text.EnterValidPassword)
                                .font(Font.custom(Constants.Design.Font.sfProText, size: 12))
                                .foregroundColor(.red)
                        }
                    }
                    
                    Button {
                        loginViewModel.validateCredentials()
                    } label: {
                        Text(Constants.Content.ButtonText.Login)
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                            .frame(width: Constants.Design.ScreenSize.width - 40, height: 55)
                        
                    }
                    .background(Constants.Design.Colors.Button.Background.primary)
                    .cornerRadius(10.0)
                    
                    
                    Spacer()
                }
                .padding()
                .background(Constants.Design.Colors.ViewBackground.background)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
