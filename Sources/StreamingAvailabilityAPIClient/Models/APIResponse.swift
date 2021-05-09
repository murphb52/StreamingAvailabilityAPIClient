//
//  APIResponse.swift
//  
//
//  Created by Brian Murphy on 11/04/2021.
//

import Foundation

public struct APIResponse<T: Codable>: Codable {
    let results: [T]
    let totalPages: Int

    enum CodingKeys: String, CodingKey {
        case results
        case total_pages
        case totalpages
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        results = try values.decode([T].self, forKey: .results)
        totalPages = try Self.decodeTotalPages(from: values)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(results, forKey: .results)
        try container.encode(totalPages, forKey: .total_pages)
    }
}

private extension APIResponse {
    typealias Values = KeyedDecodingContainer<APIResponse<T>.CodingKeys>

    static func decodeTotalPages(from values: Values) throws -> Int {
        /*
         *  I have seen both "total_pages" and "totalpages" returned as the key.
         *  This custom decoding tries both
         */
        let total_pages = try values.decodeIfPresent(Int.self, forKey: .total_pages)
        let totalpages = try values.decodeIfPresent(Int.self, forKey: .totalpages)
        let value = total_pages ?? totalpages
        guard let totalPages = value else {
            throw DecodingError.dataCorruptedError(forKey: CodingKeys.totalpages,
                                                   in: values,
                                                   debugDescription: "Unable to parse total pages")
        }

        return totalPages
    }
}
