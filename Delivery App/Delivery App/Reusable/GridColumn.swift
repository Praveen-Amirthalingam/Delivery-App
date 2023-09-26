//
//  GridColumn.swift
//  Delivery App
//
//  Created by apple on 26/09/23.
//

import SwiftUI

struct GridColumn:View {
    let item: Person
    
    var body: some View {
        
        NavigationLink {
            VegetablesView()
                .navigationBarBackButtonHidden(true)
        } label: {
            VStack {
                Image("cali")
                    .resizable()
                    .scaledToFit()
                Spacer()
                HStack {
                    Text(item.firstName)
                        .font(Font.custom(Constants.Design.Font.roboto, size: 18))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                        .padding(.horizontal, 10)
                        Spacer()
                }
                HStack {
                    Text(item.lastName)
                        .font(Font.custom(Constants.Design.Font.roboto, size: 12))
                        .foregroundColor(Constants.Design.Colors.Text.secondary)
                        .padding(.horizontal, 10)
                    Spacer()
                }
                    .tag(item)
                Spacer()
            }
            .overlay(RoundedRectangle(cornerRadius: 5)
                .stroke(Constants.Design.Colors.cardBorder, lineWidth: 2))
        }

        
        /*Button(action: {
            NavigationLink {
                VegetablesView()
            } label: {
                Text("")
            }

        }, label: {
            VStack {
                Image("cali")
                    .resizable()
                    .scaledToFit()
                Spacer()
                HStack {
                    Text(item.firstName)
                        .font(Font.custom(Constants.Design.Font.roboto, size: 18))
                        .foregroundColor(Constants.Design.Colors.Text.primary)
                        .padding(.horizontal, 10)
                        Spacer()
                }
                HStack {
                    Text(item.lastName)
                        .font(Font.custom(Constants.Design.Font.roboto, size: 12))
                        .foregroundColor(Constants.Design.Colors.Text.secondary)
                        .padding(.horizontal, 10)
                    Spacer()
                }
                
                    .tag(item)
            }
            .overlay(RoundedRectangle(cornerRadius: 5)
                .stroke(Constants.Design.Colors.cardBorder, lineWidth: 2))
        })*/
        .frame(width: Constants.Design.ScreenSize.width / 2 - 20, height: 200)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

