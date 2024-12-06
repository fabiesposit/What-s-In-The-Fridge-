//
//  ContainerView.swift
//  MyFirstProject
//
//  Created by Gabriele Landri on 06/03/24.
//

import SwiftUI

struct TabBarView: View {
    @State private var selection = 1
    var body: some View {
       
        TabView(selection: $selection) {
            MyFridge().tabItem {Label("My Fridge", systemImage: "refrigerator") }.tag(1).frame(maxWidth:.infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.bottom)
           ProfileView().tabItem { Label("My Cookbook", systemImage: "text.book.closed") }.tag(2)
        }
    }
}

#Preview {
    TabBarView()
}
