//
//  GetAlbum.swift
//  SourceryUsaCases
//
//  Created by Ernest Chechelski on 31/01/2020.
//  Copyright © 2020 Ernest Chechelski. All rights reserved.
//

import Foundation

public struct GetPlaylistsRequest: APIRequest, AutoQueryItems {
    public typealias Response = GetPlaylistsResponse
    public let httpMethod = "GET"
    public let path: String

    public init(userId: Int) {
        self.path = "user/\(userId)/playlists"
    }
}

public struct GetPlaylistsResponse: APICollectionResponse, AutoAPICollectionResponse {
    public typealias Model = Playlist

    public let data: [Playlist]

    // sourcery:begin: additionalParameters, optionalInResponse
    // sourcery: defaultValue = 0
    public let total: Int
    // sourcery:end
}

public struct Playlist: AutoJSONDecodableAPIModel, AutoModelKeyContainer {

    public let title: String
    public let creator: Creator?

    public struct Creator: AutoJSONDecodableAPIModel {
        public let name: String
    }
}
