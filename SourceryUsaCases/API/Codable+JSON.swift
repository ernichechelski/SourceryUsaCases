//
//  Codable+JSON.swift
//  SourceryUsaCases
//
//  Created by Ernest Chechelski on 31/01/2020.
//  Copyright © 2020 Ernest Chechelski. All rights reserved.
//

import Foundation

extension Encodable {
    var asJSON: String? {
        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(self) else { return nil }
        return String(data: data, encoding: .utf8)
    }

    var asData: Data? {
        asJSON?.data(using: .utf8)
    }
}

extension Decodable {

    static func from(jsonString: String?) -> Self? {
        guard let json = jsonString else { return nil }
        let decoder = JSONDecoder()
        return try? decoder.decode(Self.self, from: json.data(using: .utf8)!)
    }

    static func from(data: Data?) -> Self? {
        guard let data = data else { return nil }
        if let string = String(data: data, encoding: .utf8) {
            return Self.from(jsonString: string)
        } else {
            return nil
        }
    }


}
