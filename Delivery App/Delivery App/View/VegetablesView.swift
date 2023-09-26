//
//  VegetablesView.swift
//  Delivery App
//
//  Created by apple on 26/09/23.
//

import SwiftUI

struct VegetablesView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var searchText = ""
    
    let names = ["Holly", "Josh", "Rhonda", "Ted"]
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(searchResults, id: \.self) { name in
                    HStack {
                        Image("cali")
                        Spacer()
                        VStack(spacing: 15) {
                            HStack {
                                Text("Boston Cabbage")
                                Spacer()
                            }
                            HStack {
                                Text("3")
                                Text("€ / piece")
                                Spacer()
                            }
                            HStack {
                                Button {
                                    
                                } label: {
                                    Constants.Design.Images.addToFavorite
                                }
                                Button {
                                    
                                } label: {
                                    Constants.Design.Images.addToCart
                                }
                            }
                        }
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationTitle(Constants.Content.Text.Vegetables)
            .navigationBarHidden(false)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Constants.Design.Images.back
                                .foregroundColor(Constants.Design.Colors.Text.primary)
                            Spacer()
                        }
                    }
                }
            }
            .searchable(text: $searchText) {
            }
        }
    }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
}

struct VegetablesView_Previews: PreviewProvider {
    static var previews: some View {
        VegetablesView()
    }
}
