//
//  CodableDictionary.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

public struct CodableDictionary<Key : Hashable, Value : Codable> : Codable where Key : CodingKey {

    public let dictionary: [Key: Value]

    init(_ dictionary: [Key: Value]) {
        self.dictionary = dictionary
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Key.self)

        dictionary = Dictionary(uniqueKeysWithValues:
            try container.allKeys.lazy.map {
                (key: $0, value: try container.decode(Value.self, forKey: $0))
            }
        )
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        for (key, value) in dictionary {
            try container.encode(value, forKey: key)
        }
    }

    public subscript(key: Key) -> Value? {
        dictionary[key]
    }
}
