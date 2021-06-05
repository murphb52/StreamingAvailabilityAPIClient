//
//  TVSeries.swift
//  
//
//  Created by Brian Murphy on 20/05/2021.
//

import Foundation

public struct TVSeries: Title {
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

    /// Directors for the movies, creators for the series
    public let significants: [String]

    ///First air year of a series
    public let firstAirYear: Int

    ///Last air year of a series
    public let lastAirYear: Int

    ///Status of a series. 1: Returning Series. 2: Planned. 3: In Production. 4: Ended. 5: Cancelled. 6: Pilot. 0: Unknown.
    public let status: TVSeriesStatus

    public let imdbID: String
    public let imdbRating: Int
    public let imdbVoteCount: Int
    public let originalTitle: String
    public let overview: String
    public let streamingInfo: StreamingServiceInformation
    public let tagline: String
    public let title: String
    public let tmdbID: String
    public let video: String
    public let year: Int
    public let episodeRuntimes: [Int]
    public let seasons: Int
}
