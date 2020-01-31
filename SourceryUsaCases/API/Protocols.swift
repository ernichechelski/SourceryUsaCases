import Foundation

public protocol JSONDecodable {
  init?(json: [String: Any])
}

public protocol JSONEncodable {
  var json: [String: Any] { get }
}

public protocol APIModel { }

public protocol JSONDecodableAPIModel: APIModel, JSONDecodable {}

public protocol APIRequest {
  associatedtype Response: APIResponse
  var httpMethod: String { get }
  var path: String { get }
  var queryItems: [URLQueryItem] { get }
}

public protocol APIResponse {
  associatedtype Model: JSONDecodableAPIModel
  init?(json: [String: Any])
//  var status: String { get }
}

public protocol APIEntityResponse: APIResponse {
  var data: Model { get }
}

public protocol APICollectionResponse: APIResponse {
  var data: [Model] { get }
}

public enum APIResult<Response> {
  case success(Response)
  case failure(Error)
}

public enum APIError: Error {
  case invalidUrl
  case dataMissing
  case invalidJsonResponse
  case responseDecodingFailed
  case invalidImageData
} 

protocol ModelKeyContainer {
    var modelKey: String { get }
}
