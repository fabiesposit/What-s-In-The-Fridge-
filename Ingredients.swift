//
//  Ingredients.swift
//  WITF
//
//  Created by Gabriele Landri on 07/03/24.
//

import SwiftUI

struct Ingredient: Identifiable{
    
    var id = UUID()
    var name: String
    var image: String = "noImage"
    var icon: String = "birthday.cake.fill"
    var quantity: Float = 0.0
    var quantity1: Int = 0
    var mu: String
    var max: Int = 10
    var type: Bool = false
}
