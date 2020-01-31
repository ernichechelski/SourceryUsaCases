
import Foundation

func testDeezer() {
    let apiManager = APIManager(baseUrl: URL(string: "https://api.deezer.com")!, apiKey: "")

    let playlistsRequest = GetPlaylistsRequest(userId: 27147811)
    apiManager.send(request: playlistsRequest) { (result) in
        switch result {
        case .failure(let error):
            print("Failed to get playlists: \(error.localizedDescription)")
        case .success(let response):

            let playlists = response.data
            print(playlists)

            for item in playlists {
                print(item.title, item.creator?.name ?? "")
            }
        }
    }
}

testDeezer()
dispatchMain()
