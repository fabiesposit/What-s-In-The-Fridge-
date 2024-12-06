//
//  RecipeListView.swift
//  WITF
//
//  Created by Gianluca Fontanella on 11/03/24.
//
//TODO : modify the view of the recipes ( make rectungalur ecc)
//TODO : add heart to add recipes to recipes_liked

import SwiftUI
/*
struct MyRecipesView: View {
   @State var myData = sharedData
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                
                ForEach (Array(myData.recipes))
                { index in
                    VStack{
                        
                        var bool = find_element2(recipe: index)
                        if(bool){
                            NavigationLink(destination: RecipeDetailView(recipe:index)) {
                                HStack{
                                
                                    Image(index.main_image).resizable()
                                        .frame(width: 150, height: 98)
                                        .cornerRadius(18)
                                    VStack{Text(index.name)
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.black)
                                            
                                        //Text(index.preparation).font(.title3).foregroundColor(Color.black).multilineTextAlignment(.center)
                                        
                                    }
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

*/




struct MyRecipesView: View {
    @Environment(\.presentationMode) var presentationMode // Per accedere alla modalità di presentazione
    var myData = sharedData
    var body: some View {
        let favoriteRecipes = myData.recipes.filter { $0.preference }
        let pairsOfFavorites = favoriteRecipes.chunks(of: 2)
        
        NavigationView {
            ScrollView{
            VStack {
                ForEach(pairsOfFavorites, id: \.self) { pair in
                    HStack(spacing: 20) {
                        ForEach(pair, id: \.self) { recipe in
                            NavigationLink(destination: RecipeDetailView(recipe:recipe)) {
                                VStack {
                                    Image(recipe.main_image)
                                        .resizable()
                                        .frame(width: 150, height: 98)
                                        .cornerRadius(10)
                                        .padding(.trailing)
                                    
                                    Text(recipe.name)
                                        .font(.headline)
                                        .foregroundColor(Color.black)
                                        .multilineTextAlignment(.center)
                                        .padding(.top, 5)
                                    
                                }
                            }
                            
                        }
                    }
                }
            }
            .navigationBarTitle("My Recipes")
            .navigationBarTitleDisplayMode(.inline)// Imposta il titolo della barra di navigazione
        }//MARK END OF SCROLLS VIEW
        }//MARK : end of nav view
    }
}

struct MyRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        MyRecipesView()
    }
}

extension Array {
    func chunks(of size: Int) -> [[Element]] {
        stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}
 

#Preview {
    MyRecipesView()
}






func find_element2(recipe: Recipe)->Bool {
    
    
    if(recipe.preference){
        return true
    }
    else {
        return false
    }
}

