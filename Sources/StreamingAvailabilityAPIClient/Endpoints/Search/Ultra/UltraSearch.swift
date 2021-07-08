//
//  UltraSearch.swift
//  
//
//  Created by Brian Murphy on 06/07/2021.
//

import Foundation

public enum UltraSearchOrder: String, Codable {
    case originalTitle = "original_title"
    case year = "year"
    case imdbVoteCount = "imdb_vote_count"
    case imdbRating = "imdb_rating"
}

public enum GenreRelation: String, Codable {
    case or
    case and
}

protocol UltraSearch: RequestParameter {
    var type: ContentType { get }
    var country: CountryCode { get }
    var service: StreamingService { get }
    var orderBy: UltraSearchOrder { get }
    var yearMin: Int? { get }
    var yearMax: Int? { get }
    var page: Int? { get }
    var genres: [GenreIdentifier]? { get }
    var genresRelation: GenreRelation? { get }
    var desc: Bool? { get }
    var language: String? { get }
    var minImdbRating: Int? { get }
    var maxImdbRating: Int? { get }
    var minImdbVoteCount: Int? { get }
    var maxImdbVoteCount: Int? { get }
    var keyword: String? { get }
}

extension UltraSearch {
    func toDictionary() -> [String : Any] {
        let dictionary: [String : Any?] = [
            "type": type.rawValue,
            "country": country,
            "service": service.rawValue,
            "order_by": orderBy.rawValue,
            "year_min": yearMin,
            "year_max": yearMax,
            "page": page,
            "genres": genres?.compactMap(String.init).joined(separator: ","),
            "genres_relation": genresRelation?.rawValue,
            "desc": desc,
            "language": language,
            "min_imdb_rating": minImdbRating,
            "max_imdb_rating": maxImdbRating,
            "min_imdb_vote_count": minImdbVoteCount,
            "max_imdb_vote_count": maxImdbVoteCount,
            "keyword": keyword
        ]
        return dictionary.compactMapValues { $0 }
    }
}
