//
//  ChipModel.swift
//  Delivery App
//
//  Created by apple on 27/09/23.
//

import SwiftUI

struct ChipModel: Identifiable {
    @State var isSelected: Bool
    let id = UUID()
    let image: String
    let title: String
}
