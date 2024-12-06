//
//  Recipes.swift
//  WITF
//
//  Created by Gabriele Landri on 07/03/24.
//

import SwiftUI

//Hello Foundation

struct Recipe: Identifiable{
    
    var id = UUID()
    var name: String
    var main_image: String
    var preparation: String
    var r_ingredients: [String]
    var steps_image: [String]
    var preference: Bool = false
    var servings: Int
    var r_vegetarian: Bool = false
    var r_vegan: Bool = false
    var r_lactose_free:Bool = false
    var r_gluten_free:Bool = false
    
    mutating func togglePreference() {
           self.preference.toggle()
       }
}

extension Recipe: Hashable {
    static func == (lhs: Recipe, rhs: Recipe) -> Bool {
        return lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
