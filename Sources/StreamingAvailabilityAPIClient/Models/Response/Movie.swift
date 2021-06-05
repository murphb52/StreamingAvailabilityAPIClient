//
//  Movie.swift
//  
//
//  Created by Brian Murphy on 20/05/2021.
//

import Foundation

public struct Movie: Title {
    /// Advised minimum age for a series. -1 Means unknown. Otherwise between 0 and 18
    public let age: Int

    /// TMDb image path. See https://developers.themoviedb.org/3/getting-started/images
    public let backdropPath: String

    /// Map of backdrop URLs. Keys are widths in pixel or 'original', Values are urls to image files. Might return an empty object if a backdrop is not available
    public let backdropURLs: [String: String]

    /// Array of notable cast member names
    public let cast: [String]

    /// Array of country codes where this title is available
    public let countries: [CountryCode]

    /// Array of genre identifiers for the title
    public let genres: [GenreIdentifier]

    /// TMDb image path. See https://developers.themoviedb.org/3/getting-started/images
    public let posterPath: String

    /// Map of poster URLs. Keys are widths in pixel or 'original', Values are urls to image files. Might return an empty object if a poster is not available
    public let posterURLs: [String: String]

    /// Runtime in minutes
    public let runtime: Int

    /// Directors for the movies, creators for the series
    public let significants: [String]

    public var imdbID: String
    public var imdbRating: Int
    public var imdbVoteCount: Int
    public var originalTitle: String
    public var overview: String
    public var streamingInfo: StreamingServiceInformation
    public var tagline: String
    public var title: String
    public var tmdbID: String
    public var video: String
    public var year: Int

}
