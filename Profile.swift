//
//  Cookbook.swift
//  WITF
//
//  Created by Gabriele Landri on 07/03/24.
//

import SwiftUI

struct Profile: Identifiable{
    
    var id = UUID()
    var name: String
    var surname: String
    var image: String = "abc"
    var vegetarian: Bool = false
    var vegan: Bool = false
    var gluten_free: Bool = false
    var lact_int: Bool = false
    //var my_recipes: [Recipe]
    
}
