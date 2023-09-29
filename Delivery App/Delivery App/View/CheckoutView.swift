//
//  CheckoutView.swift
//  Delivery App
//
//  Created by apple on 25/09/23.
//

import SwiftUI

struct CheckoutView: View {
    @State var username: String = ""
    @State var cardNumber: String = ""
    @State var expiryDate: String = ""
    @State var CVC: String = ""
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .center, spacing: 20) {
                ZStack {
                    Constants.Design.Images.Cardback
                        .frame(height: 450)
                        .position(x: Constants.Design.ScreenSize.width / 2.2, y: 170)
                    Constants.Design.Images.Master
                        .frame(width: 65.0, height: 40.0)
                        .offset(x: Constants.Design.ScreenSize.width / 3.5, y: -50)
                    
                    Spacer()
                    VStack {
                        HStack {
                            Text(cardNumber)
                                .frame(width: Constants.Design.ScreenSize.width - 80 ,alignment: .leading)
                                .font(Font.custom(Constants.Design.Font.sfProDisplay, size: Constants.Design.Font.Size.size_26))
                                .foregroundColor(Color.white)
                        }

                        HStack(alignment: .top, spacing: 10) {
                            Text(username.uppercased())
                                .frame(width: Constants.Design.ScreenSize.width / 2 ,alignment: .leading)
                                .font(Font.custom(Constants.Design.Font.sfProDisplay, size: Constants.Design.Font.Size.size_20))
                                .foregroundColor(Color.white)
                            Text(expiryDate)
                                .frame(width: Constants.Design.ScreenSize.width / 2 ,alignment: .leading)
                                .font(Font.custom(Constants.Design.Font.sfProDisplay, size: Constants.Design.Font.Size.size_20))
                                .foregroundColor(Color.white)
                        }
                        .frame(width: Constants.Design.ScreenSize.width / 1.4 ,alignment: .leading)
                        .padding(.top)
                        .padding(.leading, -30)
                    }
                    .position(x: Constants.Design.ScreenSize.width / 2, y: 200)
                }
                Constants.Design.Images.camera
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35.0, height: 30.0)
                Spacer()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Name")
                        .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                        .frame(height: 15, alignment: .leading)
                    
                    TextField("", text: $username)
                        .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                        .frame(height: 44.0)
                        .padding(.horizontal, 12.0)
                        .background(Color.white)
                        .cornerRadius(4.0)
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Card Number")
                        .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                        .frame(height: 15, alignment: .leading)
                    
                    TextField("", text: $cardNumber)
                        .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                        .frame(height: 44.0)
                        .padding(.horizontal, 12.0)
                        .background(Color.white)
                        .cornerRadius(4.0)
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                }
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Expiry Date")
                            .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                            .foregroundColor(Constants.Design.Colors.Text.primary)
                            .frame(height: 15, alignment: .leading)
                        
                        TextField("", text: $expiryDate)
                            .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                            .foregroundColor(Constants.Design.Colors.Text.primary)
                            .frame(height: 44.0)
                            .padding(.horizontal, 12.0)
                            .background(Color.white)
                            .cornerRadius(4.0)
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    }
                    
//                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("CVC")
                            .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                            .foregroundColor(Constants.Design.Colors.Text.primary)
                            .frame(height: 15, alignment: .leading)
                        
                        TextField("", text: $CVC)
                            .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                            .foregroundColor(Constants.Design.Colors.Text.primary)
                            .frame(height: 44.0)
                            .padding(.horizontal, 12.0)
                            .background(Color.white)
                            .cornerRadius(4.0)
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    }
                }
                
                Button {
                    
                } label: {
                    Text(Constants.Content.ButtonText.Login)
                        .font(Font.custom(Constants.Design.Font.sfProText, size: Constants.Design.Font.Size.size_18))
                        .foregroundColor(.white)
                        .frame(width: Constants.Design.ScreenSize.width - 20, height: 55)
                    
                }
                .background(Constants.Design.Colors.Button.Background.primary)
                .cornerRadius(10.0)
                

            }
            .padding()
                .navigationBarBackButtonHidden(true)
                .navigationTitle(Constants.Content.Text.CreditDebitCard)
                .navigationBarHidden(false)
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
