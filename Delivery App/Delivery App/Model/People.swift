//
//  People.swift
//  Delivery App
//
//  Created by apple on 26/09/23.
//

import SwiftUI

struct Person: Codable, Identifiable, Hashable {
    var id: Int
    var firstName: String
    var lastName: String
    var imageName: String
}
