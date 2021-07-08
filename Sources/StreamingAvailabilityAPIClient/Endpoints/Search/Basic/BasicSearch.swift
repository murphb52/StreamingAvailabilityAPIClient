//
//  BasicSearch.swift
//  
//
//  Created by Brian Murphy on 04/06/2021.
//

import Foundation

protocol BasicSearch {
    var type: ContentType { get }
    var country: CountryCode { get }
    var service: StreamingService { get }
    var genre: GenreIdentifier? { get }
    var page: Int? { get }
    var language: String? { get }
}
