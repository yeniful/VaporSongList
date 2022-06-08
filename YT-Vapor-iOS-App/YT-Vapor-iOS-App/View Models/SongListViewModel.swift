//
//  SongListViewModel.swift
//  YT-Vapor-iOS-App
//
//  Created by Yeni Hwang on 2022/06/08.
//

import SwiftUI

class SongListViewModel: ObservableObject {
    @Published var songs = [Song]()
    
    func fetchSong() async throws {
        let urlString = Constants.baseURL + Endpoints.songs
        
        guard let url = URL(string: urlString) else {
            throw HttpError.badURL
        }
        
        let songResponse: [Song] = try await HttpClient.shared.fetch(url: url)
        
        DispatchQueue.main.async {
            self.songs = songResponse
        }
    }
}
