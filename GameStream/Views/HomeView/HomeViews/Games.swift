//
//  Games.swift
//  GameStream
//
//  Created by Edgar Cisneros on 24/05/23.
//

import SwiftUI

struct Games: View {
    
    @ObservedObject var allGames = HomeViewModel()
    
    let gridSettings = [GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        
        NavigationStack{
            
            
            ZStack{
                
                Color(red: 19/255, green: 30/255, blue: 53/255).ignoresSafeArea()
                
                VStack{
                    
                    Text("Juegos")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(EdgeInsets())
                    
                    ScrollView{
                        
                        LazyVGrid(columns: gridSettings, spacing: 6) {
                            
                            ForEach(allGames.gamesInfo, id: \.self) { game in
                                
                                
                                NavigationLink(destination: GameScreen()) {
                                    
                                    AsyncImage(url: URL(string:game.galleryImages[0])) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .clipShape(RoundedRectangle(cornerRadius: 12))
                                            .padding()
                                        
                                        Text("\(game.title)").foregroundColor(.white)
                                            .font(.footnote)
                                        
                                    }placeholder: {
                                        RoundedRectangle(cornerRadius: 2)
                                            .frame(width: 120, height: 30)
                                        
                                    }
                                }
                                
                            }
                        }
                        
                    }.padding(.top, 30)
                    
                    
                    
                }.padding(.horizontal, 6)
                
            }
        }
    }
}

struct Games_Previews: PreviewProvider {
    static var previews: some View {
        Games()
    }
}
