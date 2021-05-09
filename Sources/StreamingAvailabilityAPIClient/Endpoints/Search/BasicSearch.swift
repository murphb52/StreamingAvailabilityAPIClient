//
//  File.swift
//  
//
//  Created by Brian Murphy on 11/04/2021.
//

import Foundation

public enum BasicSearch {
    public struct Parameters: Codable, RequestParameter {
        public let country: CountryCode
        public let service: StreamingService
        public let type: ContentType
        public let genre: GenreIdentifier?
        public let page: Int?
        public let language: String?
    }

    public typealias Response = APIResponse<Title>
}
