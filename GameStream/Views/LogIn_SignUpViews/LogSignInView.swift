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
                
                VStack{
                    Button("Inicia sesión") {
                        signInButtonTapped = true
                    }
                    .foregroundColor(signInButtonTapped ? .white : .gray)
                    .font(.system(size: 20))
                    
                    Divider().frame(width: 120 ,height: 1, alignment: .leading)
                        .background(signInButtonTapped ? .white : .clear)
                        .padding(.bottom)
                    
                }
                Spacer()
                
                VStack{
                    
                    Button("Regístrate") {
                        signInButtonTapped = false
                        
                    }
                    .foregroundColor(signInButtonTapped ? .gray : .white)
                    .font(.system(size: 20))
                    
                    
                    Divider().frame(width: 120, height: 1, alignment: .leading)
                        .background(signInButtonTapped ? .clear : .white)
                        .padding(.bottom)
                    
                    
                }
                
                Spacer()
            }.padding(.bottom, 40)
            
           
            if signInButtonTapped{
                SignUpView()
            }else{
                LogInView()
            }
        }
    }
}
