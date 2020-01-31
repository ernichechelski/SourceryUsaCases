//
//  GetStyles.swift
//  SourceryUsaCases
//
//  Created by Ernest Chechelski on 31/01/2020.
//  Copyright © 2020 Ernest Chechelski. All rights reserved.
//

import Foundation

public struct GetStylesResponse: APICollectionResponse {
  public typealias Model = Style

  public let data: [Style]

  public init?(json: [String: Any]) {
    guard let status = json["status"] as? String else { return nil }
//    self.status = status

    if let dataArray = json["data"] as? [[String: Any]] {
        self.data = dataArray.flatMap { return Style(json: $0) }
    } else {
        self.data = []
    }

  }
}

public struct GetStylesRequest: APIRequest {
  public typealias Response = GetStylesResponse

  public let httpMethod = "GET"
  public let path = "styles"
  public let queryItems: [URLQueryItem] = []

  public init() {
  }
}
