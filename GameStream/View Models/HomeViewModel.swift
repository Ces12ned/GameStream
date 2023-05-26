//
//  HomeViewModel.swift
//  GameStream
//
//  Created by Edgar Cisneros on 25/05/23.
//

import Foundation

class HomeViewModel: ObservableObject{
    
    @Published var gamesInfo = [Game]()
    
    let stringUrl = "https://gamestreamapi.herokuapp.com/api/games"
    
    init(){
        loadData()
    }
}


//MARK: - HTTPS Usinng Async/Await

extension HomeViewModel{
    
    @MainActor
    func fetchGamesAsync() async throws {
        
        guard let url = URL(string: stringUrl) else {
            print("Invalid URL")
            return
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {return}
        guard let gamesInfo = try? JSONDecoder().decode([Game].self, from: data) else {return}
        self.gamesInfo = gamesInfo
        
    }

    
    
    func loadData(){
        Task(priority: .medium) {
            try await fetchGamesAsync()
        }
    }

}
