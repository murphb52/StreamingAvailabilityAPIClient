//
//  StreamingAvailabilityAPIClient.swift
//
//
//  Created by Brian Murphy on 11/04/2021.
//

import Foundation
import Combine

public protocol StreamingAvailabilityAPI {
//    func basicSearch(
//        _ parameters: BasicSearch.Parameters
//    ) -> AnyPublisher<BasicSearch.Response, Error>
}

public class StreamingAvailabilityAPIClient: StreamingAvailabilityAPI {

    private lazy var headers = [
        "x-rapidapi-host": "streaming-availability.p.rapidapi.com",
        "x-rapidapi-key": apiKey,
        "useQueryString": "true"
    ]

    private let apiKey: String

    public init(apiKey: String) {
        self.apiKey = apiKey
    }

    public func basicMovieSearchRequest(
        _ parameters: BasicMovieSearchParameters
    ) -> AnyPublisher<APIResponse<[Movie]>, Error> {
        .publisher(for: .create(path: .basicSearch,
                                queryItems: parameters.toQueryItems(),
                                headers: headers))
    }

    public func basicTVSeriesSearchRequest(
        _ parameters: BasicTVSeriesSearchParameters
    ) -> AnyPublisher<APIResponse<[TVSeries]>, Error> {
        .publisher(for: .create(path: .basicSearch,
                                queryItems: parameters.toQueryItems(),
                                headers: headers))
    }

    public func proMovieSearchRequest(
        _ parameters: ProMovieSearchParameters
    ) -> AnyPublisher<APIResponse<[Movie]>, Error> {
        .publisher(for: .create(path: .proSearch,
                                queryItems: parameters.toQueryItems(),
                                headers: headers))
    }

    public func proTVSeriesSearchRequest(
        _ parameters: ProTVSeriesSearchParameters
    ) -> AnyPublisher<APIResponse<[TVSeries]>, Error> {
        .publisher(for: .create(path: .proSearch,
                                queryItems: parameters.toQueryItems(),
                                headers: headers))
    }

    public func ultraMovieSearchRequest(
        _ parameters: UltraMovieSearchParameters
    ) -> AnyPublisher<APIResponse<[Movie]>, Error> {
        .publisher(for: .create(path: .ultraSearch,
                                queryItems: parameters.toQueryItems(),
                                headers: headers))
    }

    public func ultraTVSeriesSearchRequest(
        _ parameters: UltraTVSeriesSearchParameters
    ) -> AnyPublisher<APIResponse<[TVSeries]>, Error> {
        .publisher(for: .create(path: .ultraSearch,
                                queryItems: parameters.toQueryItems(),
                                headers: headers))
    }
}
