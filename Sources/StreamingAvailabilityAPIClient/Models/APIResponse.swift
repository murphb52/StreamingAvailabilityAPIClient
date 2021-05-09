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
        case totalPages = "totalpages"
    }
}
