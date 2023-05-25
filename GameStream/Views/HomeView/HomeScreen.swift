//
//  HomeScreen.swift
//  GameStream
//
//  Created by Edgar Cisneros on 24/05/23.
//

import SwiftUI

struct HomeScreen: View {
    
    
    @State private var tabViewSelection = 2
       
    init(){
        UITabBar.appearance().backgroundColor = .lightGray.withAlphaComponent(0.5)
        UITabBar.appearance().isTranslucent = true
    }
    
    var body: some View {
        
        TabView(selection: $tabViewSelection){
            
            Profile()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
            Games()
                .tabItem {
                    Label("Juegos", systemImage: "cube.transparent")
                }
            
            Home()
                .tabItem {
                    Label("Inicio", systemImage: "house")
                }
                .tag(2)
            Favorites()
                .tabItem {
                    Label("Favoritos", systemImage: "heart")
                }
            
        }
        
        .tint(.white)
        .navigationBarBackButtonHidden(true)
        
        
    }
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
