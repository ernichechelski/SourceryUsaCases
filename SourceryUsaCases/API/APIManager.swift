//
//  APIManager.swift
//  SourceryUsaCases
//
//  Created by Ernest Chechelski on 31/01/2020.
//  Copyright © 2020 Ernest Chechelski. All rights reserved.
//

import Foundation

public class APIManager {
  private let session: URLSession
  private let baseUrl: URL
  private let apiKey: String
  private let keyQueryItem: URLQueryItem

  public init(baseUrl: URL, apiKey: String) {
    self.baseUrl = baseUrl
    self.apiKey = apiKey
    self.keyQueryItem = URLQueryItem(name: "key", value: apiKey)

    self.session = URLSession(configuration: .default)

    URLCache.shared = URLCache(memoryCapacity: 20 * 1024 * 1024, diskCapacity: 100 * 1024 * 1024, diskPath: nil)
  }

  public func send<R: APIRequest>(request: R, completion: @escaping (APIResult<R.Response>) -> Void) {

    var urlComponents = URLComponents()
    urlComponents.scheme = baseUrl.scheme
    urlComponents.queryItems = request.queryItems + [keyQueryItem]
    urlComponents.host = baseUrl.host
    urlComponents.path = baseUrl.path + "/" + request.path

    guard let url = urlComponents.url else {
      DispatchQueue.main.async {
        completion(.failure(APIError.invalidUrl))
      }

      return
    }

    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = request.httpMethod

    let task = session.dataTask(with: urlRequest) { (data, urlReponse, error) in
      guard let data = data else {
        if let error = error {
          DispatchQueue.main.async {
            completion(.failure(error))
          }
        } else {
          DispatchQueue.main.async {
            completion(.failure(APIError.dataMissing))
          }
        }
        return
      }

      guard let jsonAny = try? JSONSerialization.jsonObject(with: data, options: []), let json = jsonAny as? [String: Any] else {
        DispatchQueue.main.async {
          completion(.failure(APIError.invalidJsonResponse))
        }
        return
      }

      guard let response = R.Response(json: json) else {
        DispatchQueue.main.async {
          completion(.failure(APIError.responseDecodingFailed))
        }
        return
      }

      DispatchQueue.main.async {
        completion(.success(response))
      }

    }

    task.resume()
  }
}
