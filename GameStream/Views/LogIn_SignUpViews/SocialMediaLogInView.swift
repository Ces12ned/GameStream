//
//  SocialMediaLogInView.swift
//  GameStream
//
//  Created by Edgar Cisneros on 24/05/23.
//

import SwiftUI

struct SocialMediaLogInView: View {
    
    
    let title: String

    var body: some View {
        
        VStack(){
            
            Text(title)
                .font(.system(size: 20))
                .foregroundColor(.white)
            
            Spacer(minLength: 20)
            
            HStack{
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Google")
                        .foregroundColor(.white)
                        .font(.system(size: 16)).bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(EdgeInsets(top: 11, leading: 18, bottom: 11, trailing: 18))
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(LinearGradient(colors: [Color(red: 66/255, green: 133/255, blue: 244/255), Color(red: 219/255, green: 68/255, blue: 55/255), Color(red: 244/255, green: 180/255, blue: 0), Color(red: 15/255, green: 157/255, blue: 88/255)], startPoint: .leading, endPoint: .trailing), lineWidth: 2.0))
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Facebook")
                        .foregroundColor(.white)
                        .font(.system(size: 16)).bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(EdgeInsets(top: 11, leading: 18, bottom: 11, trailing: 18))
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color(red: 66/255, green: 103/255, blue: 178/255), lineWidth: 2.0))
                }
                
                Spacer()
                
            }
        }
    }
}
