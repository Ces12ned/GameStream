//
//  LogInView.swift
//  GameStream
//
//  Created by Edgar Cisneros on 23/05/23.
//

import SwiftUI

struct LogInView: View{
    var body: some View {
        
        ScrollView{
            VStack(alignment: .center) {
                
                Text("Elije una foto de perfil")
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                
                Text("Puedes cambiar ahora o más adelante")
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
                    
                    
            }
            .padding()
            
        }
    }
}
