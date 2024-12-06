//
//  ProfileView.swift
//  WITF
//
//  Created by ciro frattini on 12/03/24.
//

//
//  ProfileView.swift
//  WITF
//
//  Created by ciro frattini on 08/03/24.
//

import SwiftUI

struct ProfileView: View {
    
    @State var isModalShowed: Bool = false
    
    @State private var showGreeting = false
    @State private var showGreeting1 = false
    @State private var showGreeting2 = false
    @State private var showGreeting3 = false
    var myData = sharedData
    @State private var showingSheet = false

    
    var body: some View {
        NavigationStack{
            VStack{
               
                Image(myData.profile.image)
                
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding()
                Text(myData.profile.name + " " + myData.profile.surname)
                List{
                    NavigationLink(destination: MyRecipesView()){
                        Text("My recipes")
                    }
                    
                    Toggle("Vegeterian", isOn: $showGreeting)
                        .onChange(of: showGreeting) { newValue in
                            myData.profile.vegetarian = newValue
                            
                        }
                    
                    Toggle("Vegan", isOn: $showGreeting1)
                        .onChange(of: showGreeting1) { newValue in
                            myData.profile.vegan = newValue
                        }
                    
                    Toggle("Gluten Free", isOn: $showGreeting2)
                        .onChange(of: showGreeting2) { newValue in
                            myData.profile.gluten_free = newValue
                        }
                    
                    Toggle("Lactose Intollerance", isOn: $showGreeting3)
                        .onChange(of: showGreeting3) { newValue in
                            myData.profile.lact_int = newValue
                        }
                  
                }
                
            }
            .navigationTitle("My Cookbook")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        isModalShowed.toggle()
                    }){
                        Text("Edit")
                    }.sheet(isPresented: $isModalShowed ) {
                        EditProfileView()
                    }
                }
            }
        }
      
    }
    
    
    
}


#Preview {
    ProfileView()
}
