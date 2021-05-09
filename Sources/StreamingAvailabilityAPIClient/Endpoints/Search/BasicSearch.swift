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
        public let genre: GenreCode?
        public let page: Int?
        public let language: String?
    }

    public typealias Response = APIResponse<BasicSearch.Title>

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
