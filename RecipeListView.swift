
//
//  RecipeListView.swift
//  WITF
//
//  Created by Gianluca Fontanella on 11/03/24.
//
//TODO : modify the view of the recipes ( make rectungalur ecc)
//TODO : add heart to add recipes to recipes_liked

import SwiftUI

struct RecipeListView: View {
   @State var myData = sharedData
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                var new_recipes = create_new(old_recipes: myData.recipes, profile: myData.profile)
                
                ForEach (Array(new_recipes))
                { index in
                    VStack{
                    
                        var bool = contain_ingredients(recipe: index, i: myData.ingredients_selected, profile: myData.profile)
                        
                        if(bool){
                            NavigationLink(destination: RecipeDetailView(recipe:index)) {
                                HStack{
                                
                                    Image(index.main_image)
                                        .resizable()
                                        .frame(width: 150, height: 98)
                                        .cornerRadius(18)
                                      
                                    VStack{Text(index.name)
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.black)
                                            
                                            
                                        //Text(index.preparation).font(.title3).foregroundColor(Color.black).multilineTextAlignment(.center)
                                        
                                    }
                                    Spacer()
                                    Button(action: {
                                                                         toggleRecipePreference(recipe: index)
                                                                     }) {
                                                                         Image(systemName: index.preference ? "heart.fill" : "heart")
                                                                             .foregroundColor(index.preference ? .red : .black)
                                                 
                                                                     }
                                    
                                    
                                }//MARK end of HSTACK
                                
                                Spacer()
                            }
                        }//MARK END OF IFSTATEMENT
                        
                    }//MARK END OF VSTACK
                    
                }//MARK END OF FOREACH
                
                
                
                
                
                .navigationTitle("Recipes")
                .navigationBarTitleDisplayMode(.inline)
            } //MARK END OF SCROLL VIEW
        }//END OF NAVIGATION STACK
    }//END OF BODY VIEW
   
}//END OF STRUCT

#Preview {
    RecipeListView()
}


//ritorna un array nuovo filtrato con pref dell utente
func create_new (old_recipes: [Recipe], profile: Profile) -> [Recipe]{
    var new_recipes : [Recipe] = []
  
    if((!profile.vegan && !profile.vegetarian && !profile.gluten_free && !profile.lact_int)){
        return old_recipes
    }
    
    //vegetariano
    if(profile.vegetarian && !profile.vegan){
        for element in old_recipes{
            if(element.r_vegetarian){
                new_recipes.append(element)
                
            }
            
        }
        
    }
    
    //vegano
    if(profile.vegan){
        for element in old_recipes{
            if(element.r_vegan){
                new_recipes.append(element)
                
            }
            
        }
        
    }
    
    //gluten free
    if(profile.gluten_free){
        for element in old_recipes{
            if(element.r_gluten_free){
                new_recipes.append(element)
               
            }
            
        }
        
    }
    
    //lactose intolerant
    if(profile.lact_int){
        for element in old_recipes{
            if(element.r_lactose_free){
                new_recipes.append(element)
                
            }
            
        }
        print(profile.lact_int)
        
    }
    
    
    return new_recipes
}


//search's algorithm for recipe
func contain_ingredients(recipe: Recipe , i: [Ingredient], profile: Profile)->Bool{
    var trovato = true
    
    if(profile.vegetarian==recipe.r_vegetarian){
        
    }
    
    
    for ind in i{
        trovato = trovato && find_element(recipe: recipe, i: ind)
   
    }
    return trovato
}


func find_element(recipe: Recipe, i: Ingredient )->Bool {
    var find = false
    
    for elem in recipe.r_ingredients{
      
        if(elem == i.name)
        {find = true
        }
        
    }
    return find
    
}

func toggleRecipePreference(recipe: Recipe) {
    if let index = sharedData.recipes.firstIndex(where: { $0.name == recipe.name }) {
        sharedData.recipes[index].preference.toggle()
    }
}
