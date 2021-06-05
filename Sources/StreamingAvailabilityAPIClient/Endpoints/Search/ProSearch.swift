//
//  ProSearch.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

//public enum ProSearch {
//    public struct Parameters: Codable, RequestParameter {
//        public let country: CountryCode
//        public let service: StreamingService
//        public let type: ContentType
//        public let orderBy: SearchOrder
//        public let yearMin: Int?
//        public let yearMax: Int?
//        public let genre: GenreIdentifier?
//        public let page: Int?
//        public let desc: Bool?
//        public let language: String?
//        public let keyword: String?
//
//        func toDictionary() -> [String : Any] {
//            let dictionary: [String : Any?] = [
//                "country":      country,
//                "service":      service.rawValue,
//                "type":         type.rawValue,
//                "order_by":     orderBy.rawValue,
//                "year_min":     yearMin,
//                "year_max":     yearMax,
//                "genre":        genre,
//                "page":         page,
//                "desc":         desc,
//                "language":     language,
//                "keyword":      keyword,
//            ]
//            return dictionary.compactMapValues({ $0 })
//        }
//    }
//
////    public typealias Response = APIResponse<Title>
//}
