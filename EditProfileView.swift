//
//  EditProfileView.swift
//  WITF
//
//  Created by ciro frattini on 12/03/24.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @State private var avatarItem: PhotosPickerItem?
       @State private var avatarImage: Image?
    @State var myData = sharedData
    @State private var name: String = ""
    @State private var surname: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            VStack{
                  
                VStack {
                          
                    if(avatarImage == nil){
                        Image("abc")
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding()
                    }
                          avatarImage?
                              .resizable()
                              .scaledToFit()
                              .frame(width: 300, height: 300)  
                             
                              .frame(width: 200, height: 200)
                              .clipShape(Circle())
                              .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                              .padding()
                    PhotosPicker("Edit Photo", selection: $avatarItem, matching: .images)
                      }
                      .onChange(of: avatarItem) {
                          Task {
                              if let loaded = try? await avatarItem?.loadTransferable(type: Image.self) {
                                  avatarImage = loaded
                                  
                            } else {
                                  print("Failed")
                              }
                          }
                      }
                
                
                Form {
                    Section("Name") {
                        TextField("Insert a name", text: $name)
                    }
                    Section("Surname") {
                        TextField("Insert a surname", text: $surname )
                    }
                    
                    
                }//end form
            }//MARK END OF VSTACK
            
            
            
            
            
            .navigationTitle("")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        modifyProfile(name: name, surname: surname)
                        presentationMode.wrappedValue.dismiss()
                    }){
                        Text("Done")
                    }
                }
            }
        }//MARK END OF NAVSTACK
      
    }
    func modifyProfile(name: String, surname: String) {
        
        myData.profile.name = name
        myData.profile.surname = surname
        
        
    }
}

#Preview {
    EditProfileView()
}

