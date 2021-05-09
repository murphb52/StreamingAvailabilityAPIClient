//
//  ProSearch.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

public enum SearchOrder: String, Codable {
    case originalTitle = "original_title"
    case year
}

public enum ProSearch {
    public struct Parameters: Codable, RequestParameter {
        public let country: CountryCode
        public let service: StreamingService
        public let type: ContentType
        public let orderBy: SearchOrder
        public let yearMin: Int?
        public let yearMax: Int?
        public let genre: GenreCode?
        public let page: Int?
        public let desc: Bool?
        public let language: String?
        public let keyword: String?

        func toDictionary() -> [String : Any] {
            let dictionary: [String : Any?] = [
                "country":      country,
                "service":      service.rawValue,
                "type":         type.rawValue,
                "order_by":     orderBy.rawValue,
                "year_min":     yearMin,
                "year_max":     yearMax,
                "genre":        genre,
                "page":         page,
                "desc":         desc,
                "language":     language,
                "keyword":      keyword,
            ]
            return dictionary.compactMapValues({ $0 })
        }
    }

    public typealias Response = APIResponse<Title>

    public struct Title: Codable {
        public let age: Int
        public let backdropPath: String
        public let backdropURLs: [String: String]
        public let cast: [String]
        public let countries: [CountryCode]
        public let genres: [GenreCode]
        public let imdbID: String
        public let imdbRating: Int
        public let imdbVoteCount: Int
        public let originalTitle: String
        public let overview: String
        public let posterPath: String
        public let posterURLs: [String: String]
        public let runtime: Int
        public let significants: [String]
        public let streamingInfo: StreamingServiceInformation
        public let tagline: String
        public let title: String
        public let tmdbID: String
        public let video: String
        public let year: Int
    }
}
