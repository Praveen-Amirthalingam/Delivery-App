//
//  AppConstant.swift
//  Delivery App
//
//  Created by apple on 26/09/23.
//

import UIKit
import SwiftUI

struct Constants {
    
    struct Content {
        
        //Title
        static let appTitle = "Delivery App"
        
        struct Text {
            //Navigation Titles
            static let Categories = "Categories"
            static let Vegetables = "Vegetables"
            static let CheckOut = "CheckOut"
            static let CreditDebitCard = "Credit / Debit card"
            
            static let NonContactDeliveries = "Non-Contact Deliveries"
            static let WhenPlacingOrder = "When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door."
            static let Username = "Username"
            static let Password = "Password"
            static let EnterValidUsername = "Enter Valid Username"
            static let EnterValidPassword = "Enter Valid Password"
        }
        
        struct ButtonText {
            static let OrderNow = "ORDER NOW"
            static let Dismiss = "DISMISS"
            static let Login = "Login"
            static let useThisCard = "USE THIS CARD"
        }
    }
    
    struct Design {
        struct Colors {
            static let cardBorder = Color("cardBorder")
            static let chipSelectBg = Color("chipSelectBg")
            static let chipSelectText = Color("chipSelectText")
            
            static let uiColor = UIColor(red: 248.0, green: 248.0, blue: 248.0, alpha: 0.92)
            
            struct ViewBackground {
                static let splashView = Color("splashBgColor")
                static let background = Color("appBgColor")
            }
            
            struct Text {
                static let primary = Color("primaryTextColor")
                static let secondary = Color("secondaryTextColor")
            }
            
            struct TabbarIcon {
                static let selected = Color("tabSelectedColor")
                static let unSelected = Color("tabUnSelectedColor")
            }
            
            struct Button {
                struct Background {
                    static let primary = Color("buttonPrimaryColor")
                }
                
                struct Text {
                    static let secondary = Color("buttonSecondaryTextColor")
                }
            }
        }
        
        struct Images {
            static let spashBg = Image("splashbg")
            static let logo = Image("logo")
            static let box = Image("box")
            static let back = Image(systemName: "chevron.backward")
            static let addToCart = Image("cart")
            static let addToFavorite = Image("favorite")
            static let heartBox = Image("heartbox")
            static let addCart = Image("addtocart")
            static let placeHolderImage = Image("sampleImage")
            static let Cardback = Image("cardback")
            static let Master = Image("mc")
            static let camera = Image("cam")
            
            //TabBar Icons
            static let Categories = Image("categories")
            static let Cart = Image("checkout")
            static let User = Image("payment")
        }
        
        struct Font {
            static let sfProText = "SF-Pro-Text-Regular"
            static let sfProDisplay = "SFPRODISPLAYREGULAR"
            static let roboto = "Roboto"
            
            struct Size {
                static let size_12 = CGFloat(12)
                static let size_14 = CGFloat(14)
                static let size_16 = CGFloat(16)
                static let size_17 = CGFloat(17)
                static let size_18 = CGFloat(18)
                static let size_20 = CGFloat(20)
                static let size_22 = CGFloat(22)
                static let size_24 = CGFloat(24)
                static let size_26 = CGFloat(26)
                static let size_30 = CGFloat(30)
                static let size_32 = CGFloat(32)
                static let size_34 = CGFloat(34)
                static let size_40 = CGFloat(40)
            }
        }
        
        struct ScreenSize {
            static let width = UIScreen.main.bounds.width
            static let height = UIScreen.main.bounds.height
        }
    }
    
}
