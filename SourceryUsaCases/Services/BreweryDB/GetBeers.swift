//
//  GetBeers.swift
//  SourceryUsaCases
//
//  Created by Ernest Chechelski on 31/01/2020.
//  Copyright © 2020 Ernest Chechelski. All rights reserved.
//

import Foundation

public struct GetBeersRequest: APIRequest, AutoQueryItems {
  public typealias Response = GetBeersResponse
  public let httpMethod = "GET"
  public let path = "beers"

  // sourcery:begin: queryItem
  public var styleId: Int?
  public var isOrganic: Bool?
  public var hasLabels: Bool?
  public var year: String?
  public var withBreweries: Bool?
  // sourcery:end

  public init() { }
}

public struct GetBeersResponse: APICollectionResponse, AutoAPICollectionResponse {
  public typealias Model = Beer

//  public let status: String
  public let data: [Beer]

  // sourcery:begin: additionalParameters, optionalInResponse
  // sourcery: defaultValue = 0
  public let totalResults: Int
  // sourcery: defaultValue = 1
  public let currentPage: Int
  // sourcery:end
}
