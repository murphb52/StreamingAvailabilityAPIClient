//
//  UltraTVSeriesSearchParameters.swift
//  
//
//  Created by Brian Murphy on 06/07/2021.
//

import Foundation

public struct UltraTVSeriesSearchParameters: UltraSearch {
    public private(set) var type: ContentType = .series

    public let country: CountryCode
    public let service: StreamingService
    public let orderBy: UltraSearchOrder
    public let yearMin: Int?
    public let yearMax: Int?
    public let page: Int?
    public let genres: [GenreIdentifier]?
    public let genresRelation: GenreRelation?
    public let desc: Bool?
    public let language: String?
    public let minImdbRating: Bool?
    public let maxImdbRating: Bool?
    public let minImdbVoteCount: Bool?
    public let maxImdbVoteCount: Bool?
    public let keyword: String?

    public init(country: CountryCode,
                service: StreamingService,
                orderBy: UltraSearchOrder,
                yearMin: Int? = nil,
                yearMax: Int? = nil,
                page: Int? = nil,
                genres: [GenreIdentifier]? = nil,
                genresRelation: GenreRelation? = nil,
                desc: Bool? = nil,
                language: String? = nil,
                minImdbRating: Bool? = nil,
                maxImdbRating: Bool? = nil,
                minImdbVoteCount: Bool? = nil,
                maxImdbVoteCount: Bool? = nil,
                keyword: String? = nil) {
        self.country = country
        self.service = service
        self.orderBy = orderBy
        self.yearMin = yearMin
        self.yearMax = yearMax
        self.page = page
        self.genres = genres
        self.genresRelation = genresRelation
        self.desc = desc
        self.language = language
        self.minImdbRating = minImdbRating
        self.maxImdbRating = maxImdbRating
        self.minImdbVoteCount = minImdbVoteCount
        self.maxImdbVoteCount = maxImdbVoteCount
        self.keyword = keyword
    }

}
