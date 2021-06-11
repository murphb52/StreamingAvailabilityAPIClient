//
//  ProMovieSearchParameters.swift
//  
//
//  Created by Brian Murphy on 05/06/2021.
//

import Foundation

public struct ProMovieSearchParameters: ProSearch {
    public private(set) var type: ContentType = .movie

    public let country: CountryCode
    public let service: StreamingService
    public let orderBy: SearchOrder
    public let genre: GenreIdentifier?
    public let page: Int?
    public let language: String?
    public let yearMin: Int?
    public let yearMax: Int?
    public let desc: Bool?
    public let keyword: String?

    public init(country: CountryCode,
                  service: StreamingService,
                  orderBy: SearchOrder,
                  genre: GenreIdentifier? = nil,
                  page: Int? = nil,
                  language: String? = nil,
                  yearMin: Int? = nil,
                  yearMax: Int? = nil,
                  desc: Bool? = nil,
                  keyword: String? = nil) {
        self.country = country
        self.service = service
        self.orderBy = orderBy
        self.genre = genre
        self.page = page
        self.language = language
        self.yearMin = yearMin
        self.yearMax = yearMax
        self.desc = desc
        self.keyword = keyword
    }
}
