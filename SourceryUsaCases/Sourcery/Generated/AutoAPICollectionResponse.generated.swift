// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension GetBeersResponse {

  public init?(json: [String: Any]) {


    if let dataArray = json["data"] as? [[String: Any]] {
        self.data = dataArray.flatMap { return Beer(json: $0) }
    } else {
        self.data = []
    }

          self.totalResults = json["totalResults"] as? Int ?? 0
          self.currentPage = json["currentPage"] as? Int ?? 1
  }
}

extension GetPlaylistsResponse {

  public init?(json: [String: Any]) {


    if let dataArray = json["data"] as? [[String: Any]] {
        self.data = dataArray.flatMap { return Playlist(json: $0) }
    } else {
        self.data = []
    }

          self.total = json["total"] as? Int ?? 0
  }
}

