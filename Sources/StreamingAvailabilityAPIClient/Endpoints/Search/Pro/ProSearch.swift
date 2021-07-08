//
//  ProSearch.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

public enum ProSearchOrder: String, Codable {
    case originalTitle = "original_title"
    case year
}

protocol ProSearch: RequestParameter {
    var type: ContentType { get }
    var country: CountryCode { get }
    var service: StreamingService { get }
    var orderBy: ProSearchOrder { get }

    var genre: GenreIdentifier? { get }
    var page: Int? { get }
    var language: String? { get }
    var yearMin: Int? { get }
    var yearMax: Int? { get }
    var desc: Bool? { get }
    var keyword: String? { get }
}

extension ProSearch {
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
        return dictionary.compactMapValues { $0 }
    }
}
