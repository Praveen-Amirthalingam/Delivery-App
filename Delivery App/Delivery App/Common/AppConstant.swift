//
//  AppConstant.swift
//  Delivery App
//
//  Created by apple on 26/09/23.
//

import SwiftUI

struct Constants {
    
    struct Content {
        struct Text {
            //Navigation Titles
            static let Categories = "Categories"
            static let Vegetables = "Vegetables"
            
            static let NonContactDeliveries = "Non-Contact Deliveries"
            static let WhenPlacingOrder = "When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door."
        }
        
        struct ButtonText {
            static let OrderNow = "ORDER NOW"
            static let Dismiss = "DISMISS"
        }
    }
    
    struct Design {
        struct Colors {
            static let cardBorder = Color("cardBorder")
            
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
        }
        
        struct Font {
            static let sfProText = "SF-Pro-Text-Regular"
            static let sfProDisplay = "SFPRODISPLAYREGULAR"
            static let roboto = "Roboto"
        }
        
        struct ScreenSize {
            static let width = UIScreen.main.bounds.width
            static let height = UIScreen.main.bounds.height
        }
    }
    
}
