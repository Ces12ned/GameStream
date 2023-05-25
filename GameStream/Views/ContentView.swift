//
//  ContentView.swift
//  GameStream
//
//  Created by Edgar Cisneros on 23/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Spacer()
                Color(red: 19/255, green: 30/255, blue: 53/255).ignoresSafeArea()
                
                VStack {
                    Image("AppLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                        .padding(.bottom, 30)
                    
                    LogSignInView()
                    
                }
                .padding()
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
