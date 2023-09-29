//
//  MainView.swift
//  Delivery App
//
//  Created by apple on 25/09/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            CategoriesView()
                .tabItem {
                    Text("")
                    Constants.Design.Images.Categories
                        .renderingMode(.template)
                }
            CheckoutView()
                .tabItem {
                    Text("")
                    Constants.Design.Images.Cart
                        .renderingMode(.template)
                }
            Text("Profile")
                .tabItem {
                    Text("")
                    Constants.Design.Images.User
                        .renderingMode(.template)
                }
        }
        .navigationBarBackButtonHidden(true)
        .tint(Constants.Design.Colors.TabbarIcon.selected)
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = Constants.Design.Colors.uiColor
            UITabBar.appearance().unselectedItemTintColor = UIColor.yellow
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
