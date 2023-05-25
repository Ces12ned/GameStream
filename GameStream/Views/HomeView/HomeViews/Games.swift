//
//  Games.swift
//  GameStream
//
//  Created by Edgar Cisneros on 24/05/23.
//

import SwiftUI

struct Games: View {
    var body: some View {
        ZStack{
            
            Color(red: 19/255, green: 30/255, blue: 53/255).ignoresSafeArea()

            
            VStack{
                
                
                
                
            }
        }.toolbar(.hidden)
            .onAppear {
                print("Hello")
            }
    }
}

struct Games_Previews: PreviewProvider {
    static var previews: some View {
        Games()
    }
}
