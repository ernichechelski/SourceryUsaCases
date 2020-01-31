//
//  playground.swift
//  SourceryUsaCases
//
//  Created by Ernest Chechelski on 31/01/2020.
//  Copyright © 2020 Ernest Chechelski. All rights reserved.
//

import Foundation

func test() {
    let stylesRequest = GetStylesRequest()

    let apiManager = APIManager(baseUrl: URL(string: "")!, apiKey: "")

    apiManager.send(request: stylesRequest) { (result) in
      switch result {
      case .failure(let error):
        print("Failed to get styles: \(error.localizedDescription)")
      case .success(let response):
        let styles = response.data // <- This type is [Style]
        print(styles)
      }
    }

    let beersRequest = GetBeersRequest()

    apiManager.send(request: beersRequest) { (result) in
      switch result {
      case .failure(let error):
        print("Failed to get styles: \(error.localizedDescription)")
      case .success(let response):
        let styles = response.data // <- This type is [Style]
        print(styles)
      }
    }
}
