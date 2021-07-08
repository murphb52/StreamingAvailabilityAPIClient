//
//  BasicMovieSearchParameters.swift
//  
//
//  Created by Brian Murphy on 04/06/2021.
//

import Foundation

public struct BasicMovieSearchParameters: Codable, RequestParameter {
    public private(set) var type: ContentType = .movie
    public let country: CountryCode
    public let service: StreamingService
    public let genre: GenreIdentifier?
    public let page: Int?
    public let language: String?

    public init(country: CountryCode,
                service: StreamingService,
                genre: GenreIdentifier? = nil,
                page: Int? = nil,
                language: String? = nil) {
        self.country = country
        self.service = service
        self.genre = genre
        self.page = page
        self.language = language
    }
}
