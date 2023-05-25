//
//  LogInView.swift
//  GameStream
//
//  Created by Edgar Cisneros on 23/05/23.
//

import SwiftUI

struct LogInView: View{
    
    @State var email = ""
    @State var userText = ""
    @State var password = ""
    @State var checkPassword = ""
        
    let greenColor = Color(red: 132/255, green: 252/255, blue: 203/255)
    
    var body: some View {
        
       
        ScrollView{
            
            VStack(alignment: .center){
                
                Group{
                    
                    
                    Text("Elije una foto de perfil")
                        .foregroundColor(.white)
                        .font(.system(size: 18))
                    
                    Text("Puedes cambiar ahora o más adelante")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                              
                              
                    Spacer(minLength: 30)
                    
                    Button {
                        takePhoto()
                    } label: {
                        ZStack{
                            Circle()
                                .frame(width: 80, height: 80)
                                .foregroundColor(.black)
                                .overlay(Circle().stroke(Color.white))
                                .shadow(color: .white, radius: 3)
                            Image(systemName: "camera")
                                .foregroundColor(.white)
                        }
                    }

                    
                }
                
                Spacer(minLength: 30)
                
                VStack(alignment: .leading){
                    
                    Group{
                        
                        Text("Correo electrónico")
                            .foregroundColor(greenColor)
                            .font(.system(size: 20))
                        
                        
                        TextField("", text: $email)
                            .placeholder(when: email.isEmpty) {
                                Text("Ingresa tu correo electrónico").foregroundColor(.gray)
                            }
                            .foregroundColor(.white)
                        
                        Divider().frame(height: 1, alignment: .leading)
                            .background(greenColor)
                            .padding(.bottom)
                        
                        
                        Text("Contraseña")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                        
                        SecureField("", text: $password)
                            .foregroundColor(.white)
                            .placeholder(when: password.isEmpty) {
                                Text("Ingresa una contraseña").foregroundColor(.gray)
                            }
                            .foregroundColor(.white)
                        
                        Divider().frame(height: 1, alignment: .leading)
                            .background(greenColor)
                            .padding(.bottom)
                        
                        
                        Text("Confirmar contraseña")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                        
                        SecureField("", text: $checkPassword)
                            .foregroundColor(.white)
                            .placeholder(when: checkPassword.isEmpty) {
                                Text("Ingresa de nuevo la contraseña").foregroundColor(.gray)
                            }
                            .foregroundColor(.white)
                        
                        Divider().frame(height: 1, alignment: .leading)
                            .background(greenColor)
                            .padding(.bottom)
                        
                    }
                }
                Spacer(minLength: 30)
                
                
                Button(action: {
                    
                }, label: {
                    Text("REGISTRAR")
                        .foregroundColor(.white)
                        .font(.system(size: 18)).bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(EdgeInsets(top: 11, leading: 18, bottom: 11, trailing: 18))
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(greenColor, lineWidth: 3.0).shadow(color: .white, radius: 6))
                })
                
                Spacer(minLength: 60)
                
                
                SocialMediaLogInView(title: "Registrarse con redes sociales")

            }
            .padding()
            
        }
    }
}


func takePhoto() {
    
}

