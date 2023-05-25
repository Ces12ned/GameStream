//
//  SignUpView.swift
//  GameStream
//
//  Created by Edgar Cisneros on 23/05/23.
//

import SwiftUI

struct SignUpView: View{
    
    @State var email = ""
    @State var userText = ""
    @State var password = ""
    
    let greenColor = Color(red: 132/255, green: 252/255, blue: 203/255)
    
    var body: some View {
        
        ScrollView{
            
            
            VStack(alignment: .leading) {
                
                
                Group{
                    Text("Correo electrónico")
                        .foregroundColor(greenColor)
                        .font(.system(size: 20))
                    
                    
                    TextField("", text: $userText)
                        .placeholder(when: userText.isEmpty) {
                            Text("Ingresa tu correo electrónico").foregroundColor(.gray)
                        }
                        .foregroundColor(.white)
                    
                    Divider().frame(height: 1, alignment: .leading)
                        .background(greenColor)
                        .padding(.bottom)
                    
                    
                    Text("Contraseña")
                        .foregroundColor(greenColor)
                        .font(.system(size: 20))
                    
                    SecureField("", text: $password)
                        .foregroundColor(.white)
                        .placeholder(when: password.isEmpty) {
                            Text("ingresa tu contraseña").foregroundColor(.gray)
                        }
                        .foregroundColor(.white)
                    
                    Divider().frame(height: 1, alignment: .leading)
                        .background(greenColor)
                        .padding(.bottom)
                }
                Button(action: {
                    
                }, label: {
                    Text("¿Olvidaste tu contraseña?")
                        .foregroundColor(greenColor)
                        .font(.system(size: 12))
                        .frame(width: 350, alignment: .trailing)
                })
                
                Spacer(minLength: 30)
                
                
                
                NavigationLink(destination: HomeScreen()) {
                label: do {
                    Text("INICIAR SESIÓN")
                        .foregroundColor(.white)
                        .font(.system(size: 18)).bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(EdgeInsets(top: 11, leading: 18, bottom: 11, trailing: 18))
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(greenColor, lineWidth: 3.0).shadow(color: .white, radius: 6))
                }
                    
                    
                }
                
                Spacer(minLength: 80)
                
                SocialMediaLogInView(title: "Iniciar sesión con redes sociales")
                
            }
            .padding()
        }
    }
}
