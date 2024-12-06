//
//  MyFridge.swift
//  WITF
//
//  Created by Gabriele Landri on 07/03/24.
//TODO:
//-implement the correct way for slider
//-searchbar through elements of the data

import SwiftUI


struct MyFridge: View {
    //variable for slider
    @State var sliderValue: Float = 0.0
    
    //variable for slider
    @State var sliderValue1: Int = 0
    //var for searchbar
    @State private var searchText = ""
    @State private var showingSheet = false
    @State var myData = sharedData
    //var for suggested ingredients
    @State var suggested_ingredient_index = [0, 1, 2, 3,4,5,6,7]
    //var for the button
    @State private var showWelcomeView = false
    
    
  
    var body: some View {
        ZStack{
            
            NavigationStack{
                //searchbar
                
                ForEach(Array(myData.ingredients_selected.enumerated()), id: \.1.id) { index, ingredient in
                    
                    HStack {
                    
                        Image(systemName:ingredient.icon).padding(.leading)
                        Text(ingredient.name + " ")
                        if (myData.ingredients_selected.indices.contains(index)){
                            if(!ingredient.type){
                                
                                Text("\(myData.ingredients_selected[index].quantity, specifier: "%.2f") \(ingredient.mu)")
                                //sliderValue = myData.ingredients_selected[index].quantity
                                Slider(value: $myData.ingredients_selected[index].quantity, in: 0...Float(ingredient.max))
                                    .padding()
                                    .onChange(of: myData.ingredients_selected[index].quantity) { value in
                                        // Aggiorna la quantità dell'ingrediente quando cambia lo slider
                                        
                                        myData.ingredients_selected[index].quantity = value
                                        
                                        
                                    }
                            }
                            else {
                                
                                Text("\(Int(myData.ingredients_selected[index].quantity)) \(ingredient.mu)")
                                //sliderValue = myData.ingredients_selected[index].quantity
                                

                                Slider(value: $myData.ingredients_selected[index].quantity, in: 0...Float(ingredient.max))
                                    .padding()
                                    .onChange(of: myData.ingredients_selected[index].quantity) { value in
                                        // Aggiorna la quantità dell'ingrediente quando cambia lo slider
                                        
                                        myData.ingredients_selected[index].quantity = value
                                    }
                                
                            }
                            
                        } //MARK : end of if statement
                        
                        Button(action: {
                            // Rimuovi l'elemento corrispondente dall'array myData.ingredients_selected
                            
                            myData.ingredients_selected.remove(at: index)
                            //sliderValue.remove(at: index)
                            
                        }) {
                            Image(systemName: "trash.fill")
                                .foregroundColor(Color.red)
                                .padding()
                        }
                        
                    }//MARK: end of HSTACk
                }//MARK: end of ForEach_statement
                
                // }//MARK : end of List
                
                //SUGGESTED INGREDIENT'S SECTION
                ScrollView{
                    VStack{
                        HStack{
                            Text("Suggested Ingredients")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                .padding(.leading)
                            
                            Spacer()
                            
                            
                        }
                        
                        ForEach(suggested_ingredient_index, id: \.self) { index in
                            
                            
                            if(index%2 == 0){
                                HStack{
                                    VStack{
                                        ZStack{ Image(myData.ingredients[index].image)
                                                .resizable()
                                                .frame(width: 150, height: 98)
                                                .cornerRadius(10)
                                                .shadow(radius: 5)
                                                
                                                .padding(.trailing)
                                            
                                            Button(action: {
                                                Add_to_selected_ingredients(myData:myData,i:myData.ingredients[index])
                                            }){
                                                if(!myData.ingredients_selected.contains { $0.id == myData.ingredients[index].id })
                                                {
                                                    Image(systemName: "plus.circle.fill")
                                                        .foregroundColor(Color.gray)
                                                }
                                                else {
                                                    Image(systemName: "checkmark.circle.fill")
                                                        .foregroundColor(Color.green)
                                                }
                                                
                                            }.padding(EdgeInsets(top: -50, leading: 100, bottom: 0, trailing: -30))
                                            
                                            
                                        }
                                        Text(myData.ingredients[index].name)
                                            .fontWeight(.semibold)
                                            
                                        
                                        
                                        
                                        
                                    }//MARK end of VSTACK
                                    
                                    VStack{
                                        ZStack{
                                            Image(myData.ingredients[index+1].image)
                                                .resizable()
                                                .frame(width: 150, height: 98)
                                                .cornerRadius(10)
                                                .padding(.leading)
                                            
                                            Button(action: {
                                                Add_to_selected_ingredients(myData:myData,i:myData.ingredients[index+1])
                                            }){
                                                if(!myData.ingredients_selected.contains { $0.id == myData.ingredients[index+1].id })
                                                {
                                                    Image(systemName: "plus.circle.fill")
                                                        .foregroundColor(Color.gray)
                                                }
                                                else {
                                                    Image(systemName: "checkmark.circle.fill")
                                                        .foregroundColor(Color.green)
                                                }
                                            }
                                            .padding(EdgeInsets(top: -50, leading: 100, bottom: 0, trailing: -60))
                                            
                                            
                                        }
                                        Text(myData.ingredients[index+1].name)
                                            .fontWeight(.semibold)
                                        
                                    }//MARK end of VSTACK
                                    
                                    
                                }//MARK END OF HSTACK
                            }//MARK END OF IF SUGGESTED INGREDIENTs
                        }
                    }//MARK: END OF SUGGESTED INGREDIENT'S SECTIONS
                   
                }//END OF SCROLLSVIEW
             
                
                
                
                .navigationTitle("What's in the fridge?")
                
            
            NavigationLink(destination: RecipeListView()){
                
                    ZStack{
                        
                        Image("Button")
                        HStack{
                            Image(systemName: "fork.knife")
                                .foregroundColor(Color.white)
                            Text("Go to Recipes")
                                .foregroundColor(Color.white)
                        }
                    }
            }.offset(x: 110, y: -70)
                
            }//end of nav stack
            //SEARCHBAR
            .searchable(text: $searchText, prompt: "Search..."){
                
                ForEach (searchResults){
                    ingredient in
                    HStack{
                        Image(systemName: ingredient.icon)
                        Text(ingredient.name)
                        Spacer()
                        
                        Button(action: {
                            Add_to_selected_ingredients(myData:myData,i:ingredient)
                            
                        }){
                            if(!myData.ingredients_selected.contains { $0.id == ingredient.id })
                            {
                                Image(systemName: "plus.circle")
                            }
                            else {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(Color.green)
                            }
                        }
                        
                    }//end of HStack
                }//end of ForEach myData.ingredients
            }//end of searchbar
            .submitLabel(.done)
            
            
            
        } //MARK END OF ZSTACK
       
        }//end of  body
    
    
    
    
    var searchResults:[Ingredient]  {
           if searchText.isEmpty {
               return myData.ingredients
           } else{
               return myData.ingredients.filter { $0.name.contains(searchText) }
           }
       }

        
    }//end of struct


#Preview {
    MyFridge()
}




//FUNCTION THAT NOT ADD DUPLICATE INGREDIENTS
func Add_to_selected_ingredients(myData: SharedData, i: Ingredient) {
    if !myData.ingredients_selected.contains(where: { $0.id == i.id }) {
        myData.ingredients_selected.append(i)
    } else {
        if let index = myData.ingredients_selected.firstIndex(where: { $0.id == i.id }) {
            myData.ingredients_selected.remove(at: index)
        }
    }
}



