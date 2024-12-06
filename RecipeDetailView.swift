//
//  LearnerDetailView.swift
//  MyFirstProject
//
//  Created by eleonora elefante on 06/12/23.
//

import SwiftUI


    
    
    struct RecipeDetailView: View {
        var myData = sharedData
        
        var recipe: Recipe
        
        var body: some View {
            NavigationStack {
           
                   
                ScrollView{
                    VStack {
                      
                        
                        Image(recipe.main_image)
                            .resizable()
                                                       .aspectRatio(contentMode: .fill)
                                                       .padding(.vertical)
                                                       .frame(width: 370, height: 230)
                                                       .cornerRadius(20)
                                                       .shadow(radius: 5)
                        
                        VStack(alignment: .leading){
                            Text("Ingredients (for \(recipe.servings) people)")
                                .font(.title3)
                                                               .fontWeight(.bold)
                                                               .padding(.bottom)
                                                               .offset(x:-10)
                                                           
                            
                            ForEach(recipe.r_ingredients.indices, id: \.self) { index in
                                                       HStack {
                                                           Text(recipe.r_ingredients[index])
                                                       }
                                                   }
                            Text("Procedure")
                                                           .font(.title3)
                                                           .fontWeight(.bold)
                                                           .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                                                           .offset(x:-25)
                        }.offset(x:-50 , y:10) .padding(.bottom)
                        VStack {
                            let numero_immagini = recipe.steps_image.count
                            let numero_desc = (numero_immagini + 2) / 3 // Calcola il numero di righe necessarie per visualizzare tutte le immagini
                            let descrizione_divisa = stride(from: 0, to: recipe.preparation.count, by: recipe.preparation.count / numero_desc).map {
                                String(recipe.preparation.dropFirst($0).prefix(recipe.preparation.count / numero_desc))
                            }
                            
                            ForEach(0..<numero_desc) { index in
                                HStack {
                                    ForEach(0..<3) { columnIndex in
                                        let stepIndex = index * 3 + columnIndex
                                        if stepIndex < numero_immagini {
                                            Image(recipe.steps_image[stepIndex])
                                                .resizable()
                                                                                                .aspectRatio(contentMode: .fill)
                                                                                                .frame(width: 120, height: 70)
                                                                                                .cornerRadius(10)
                                                                                                .shadow(radius: 5)
                                                                                                .padding(.bottom)
                                        }
                                    }
                                }
                                if index < descrizione_divisa.count {
                                    Text(descrizione_divisa[index])
                                }
                            }
                        }
                        
                    }
                }
                .navigationTitle(recipe.name)
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                                           Button(action: {
                                           toggleRecipePreference(recipe: recipe)
                                       }) {
                                           Image(systemName: recipe.preference ? "heart.fill" : "heart")
                                               .foregroundColor(recipe.preference ? .red : .black)
                                           
                                       }
                                       }
                                   }
                   
                    
                }
            }
        }

#Preview {
    RecipeDetailView(recipe: sharedData.recipes[0])
}
