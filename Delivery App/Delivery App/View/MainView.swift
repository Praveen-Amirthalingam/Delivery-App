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
                    Image("categories")
                        .renderingMode(.template)
                }
            CheckoutView()
                .tabItem {
                    Text("")
                    Image("checkout").renderingMode(.template)
                }
            Text("Profile")
                .tabItem {
                    Text("")
                    Image("payment").renderingMode(.template)
                }
        }
        .navigationBarBackButtonHidden(true)
        .tint(Constants.Design.Colors.TabbarIcon.selected)
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor(red: 248.0, green: 248.0, blue: 248.0, alpha: 0.92)
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
