//
//  Home.swift
//  GameStream
//
//  Created by Edgar Cisneros on 24/05/23.
//

import SwiftUI
import AVKit

struct Home: View {
    
    @State var searchText = ""
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Color(red: 19/255, green: 30/255, blue: 53/255).ignoresSafeArea()
                
                VStack{
                    
                    Image("AppLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                        .padding(.bottom, 30)
                    
                    
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                        
                        TextField("", text: $searchText)
                            .placeholder(when: searchText.isEmpty) {
                                Text("Busca un video").foregroundColor(.gray)
                            }
                        
                    }.foregroundColor(.white)
                        .font(.system(size: 18)).bold()
                        .frame(maxWidth: 300, alignment: .center)
                        .padding(EdgeInsets(top: 11, leading: 24, bottom: 11, trailing: 24))
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.white, lineWidth: 3.0).shadow(color: .white, radius: 6))
                    
                    ScrollView{
                        
                        VStack(){
                            
                            Group{
                                
                                Text("POPULARES")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                
                                ZStack{
                                    
                                    NavigationLink(destination: VideoPlayer(player: AVPlayer(url: URL(string: SubModulesHome().url)!))) {
                                        
                                        ZStack{
                                            
                                            VStack(spacing: 0){
                                                Image("TheWitcher")
                                                    .resizable()
                                                    .scaledToFit()
                                                
                                                
                                                Text("The Witcher 3")
                                                    .frame(maxWidth: .infinity, alignment: .leading)
                                                    .frame(height: 35)
                                                    .font(.system(size: 16).bold())
                                                    .background(Color(red: 32/255, green: 46/255, blue: 77/255))
                                                
                                            }
                                            
                                            
                                            Image(systemName: "play.circle")
                                                .resizable()
                                                .foregroundColor(.white)
                                                .frame(width: 80, height: 80, alignment: .center)
                                            
                                        }
                                    }
                                    
                                }
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(.vertical)
                                
                            }
                            
                            
                            
                            Group{
                                
                                Text("CATEGORÍAS SUGERIDAS")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                
                                ScrollView(.horizontal, showsIndicators: true){
                                    
                                    HStack{
                                        
                                        NavigationLink(destination: EmptyView() ) {
                                            
                                            ZStack{
                                                
                                                RoundedRectangle (cornerRadius: 8)
                                                    .fill (Color(red: 32/255, green: 46/255, blue: 77/255))
                                                    .frame (width: 160, height: 90)
                                                
                                                Image("FPS")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 40, height: 40, alignment: .center)
                                                
                                                
                                            }
                                        }
                                        
                                        NavigationLink(destination: EmptyView() ) {
                                            
                                            ZStack{
                                                
                                                RoundedRectangle (cornerRadius: 8)
                                                    .fill (Color(red: 32/255, green: 46/255, blue: 77/255))
                                                    .frame (width: 160, height: 90)
                                                
                                                Image("RPG")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 40, height: 40, alignment: .center)
                                                
                                                
                                            }
                                        }
                                        
                                        NavigationLink(destination: EmptyView() ) {
                                            
                                            ZStack{
                                                
                                                RoundedRectangle (cornerRadius: 8)
                                                    .fill (Color(red: 32/255, green: 46/255, blue: 77/255))
                                                    .frame (width: 160, height: 90)
                                                
                                                Image("Open-World")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 40, height: 40, alignment: .center)
                                                
                                                
                                            }
                                        }
                                    }
                                    
                                }
                                
                            }
                            
                            
                            Spacer(minLength: 30)
                            
                            Group{
                                
                                Text("RECOMENDADOS")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                
                                ScrollView(.horizontal, showsIndicators: true){
                                    
                                    
                                    HStack{
                                        
                                        NavigationLink(destination: VideoPlayer(player: AVPlayer(url: URL(string: SubModulesHome().urlVideos[1])!))) {
                                            
                                            Image ("SpiderMan") .resizable()
                                                .scaledToFit ()
                                                .frame (width: 240,
                                                        height: 135)
                                            
                                        }
                                        
                                        NavigationLink(destination: VideoPlayer(player: AVPlayer(url: URL(string: SubModulesHome().urlVideos[2])!))) {
                                            
                                            Image ("Uncharted4") .resizable()
                                                .scaledToFit ()
                                                .frame (width: 240,
                                                        height: 135)
                                            
                                        }

                                    }

                                }

                            }
                            
                            Spacer(minLength: 30)
                            
                            Group{
                                
                                Text("VIDEOS RECOMENDADOS")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                ScrollView(.horizontal, showsIndicators: true){
                                    
                                    
                                    HStack{
                                        
                                        NavigationLink(destination: VideoPlayer(player: AVPlayer(url: URL(string: SubModulesHome().urlVideos[1])!))) {
                                            
                                            Image ("LastOfUs") .resizable()
                                                .scaledToFit ()
                                                .frame (width: 240,
                                                        height: 135)
                                            
                                        }
                                        
                                        NavigationLink(destination: VideoPlayer(player: AVPlayer(url: URL(string: SubModulesHome().urlVideos[2])!))) {
                                            
                                            Image ("Destiny") .resizable()
                                                .scaledToFit ()
                                                .frame (width: 240,
                                                        height: 135)
                                            
                                        }

                                    }

                                }
                                
                            }
                            
                        }.padding(.top, 30)
                        
                    }.padding()
                }
            }
        }
    }
    
    struct SubModulesHome {
        
        @State var url = "https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4"
        let urlVideos:[String] = ["https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256671638/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256720061/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256814567/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256801252/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256757119/movie480.mp4"]
    }
    
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}




