//
//  SourceryProtocols.swift
//  SourceryUsaCases
//
//  Created by Ernest Chechelski on 31/01/2020.
//  Copyright © 2020 Ernest Chechelski. All rights reserved.
//
//  Run following commands to make usage of Sourcery
//
//  brew install sourcery
//
//  sourcery --sources SourceryUsaCases --templates SourceryUsaCases/Sourcery/Templates --output SourceryUsaCases/Sourcery/Generated --watch
//

import Foundation

protocol AutoJSONDecodableAPIModel {}

protocol AutoAPICollectionResponse {}

protocol AutoQueryItems {}

protocol AutoModelKeyContainer {}

protocol AutoDecodable: Decodable {}

protocol AutoEncodable: Encodable {}

protocol AutoCodable: AutoDecodable, AutoEncodable {}

protocol AutoCaseIterable {}

protocol AutoEnumProperties {}
