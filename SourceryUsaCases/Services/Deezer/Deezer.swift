//
//  Deezer.swift
//  SourceryUsaCases
//
//  Created by Ernest Chechelski on 03/02/2020.
//  Copyright © 2020 Ernest Chechelski. All rights reserved.
//

import Foundation

func testDeezerAPI() {

    let apiManager = APIManager(baseUrl: URL(string: "https://api.deezer.com")!, apiKey: "")

    let playlistsRequest = GetPlaylistsRequest(userId: 27147811)

    apiManager.send(request: playlistsRequest) { (result) in
        switch result {
        case .failure(let error):
            print("Failed to get playlists: \(error.localizedDescription)")
        case .success(let response):

            for playlist in response.data {
                print(playlist.title, playlist.creator?.name ?? "")
            }
        }
    }
}
