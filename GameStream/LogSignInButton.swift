//
//  LogSignInButton.swift
//  GameStream
//
//  Created by Edgar Cisneros on 23/05/23.
//

import SwiftUI

struct LogSignInView: View{
    
   @State var signInButtonTapped = true
    
    var body: some View {
        
        VStack{
            HStack{
                Spacer()
                
                Button("Inicia sesión") {
                    signInButtonTapped = true
                }
                .foregroundColor(signInButtonTapped ? .white : .gray)
                .font(.system(size: 20))
                
                Spacer()
                
                Button("Regístrate") {
                    signInButtonTapped = false
                    
                }
                .foregroundColor(signInButtonTapped ? .gray : .white)
                .font(.system(size: 20))
                
                Spacer()
            }
            
            Spacer()
                       
            if signInButtonTapped{
                SignUpView()
            }else{
                LogInView()
            }
        }
    }
}
