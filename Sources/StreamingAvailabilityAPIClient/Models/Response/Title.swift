//
//  Title.swift
//  
//
//  Created by Brian Murphy on 09/05/2021.
//

import Foundation

public protocol Title: Codable {
    /// Advised minimum age for a series. -1 Means unknown. Otherwise between 0 and 18
    var age: Int { get }

    /// TMDb image path. See https://developers.themoviedb.org/3/getting-started/images
    var backdropPath: String { get }

    /// Map of backdrop URLs. Keys are widths in pixel or 'original', Values are urls to image files. Might return an empty object if a backdrop is not available
    var backdropURLs: [String: String] { get }

    /// Array of notable cast member names
    var cast: [String] { get }

    /// Array of country codes where this title is available
    var countries: [CountryCode] { get }

    /// Array of genre identifiers for the title
    var genres: [GenreIdentifier] { get }

    var imdbID: String { get }
    var imdbRating: Int { get }
    var imdbVoteCount: Int { get }
    var originalTitle: String { get }
    var overview: String { get }

    /// TMDb image path. See https://developers.themoviedb.org/3/getting-started/images
    var posterPath: String { get }

    /// Map of poster URLs. Keys are widths in pixel or 'original', Values are urls to image files. Might return an empty object if a poster is not available
    var posterURLs: [String: String] { get }

    /// Directors for the movies, creators for the series
    var significants: [String] { get }

    var streamingInfo: StreamingServiceInformation { get }
    var tagline: String { get }
    var title: String { get }
    var tmdbID: String { get }
    var video: String { get }
    var year: Int { get }

}
