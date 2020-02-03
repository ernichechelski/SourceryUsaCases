
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
testEnums()
dispatchMain()
