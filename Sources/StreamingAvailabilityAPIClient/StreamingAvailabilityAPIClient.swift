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

//    public func proSearch(
//        _ parameters: ProSearch.Parameters
//    ) -> AnyPublisher<ProSearch.Response, Error> {
//        .publisher(for: .create(path: EndpointPaths.proSearch.path,
//                                queryItems: parameters.toQueryItems(),
//                                headers: headers))
//    }
//
//    public func basicMovieSearch(_ request: BasicMovieSearchRequest) -> AnyPublisher<APIResponse<Movie>, Error> {
//        execute(request)
//    }
//
//    func execute<T: Request>(_ request: T) -> AnyPublisher<APIResponse<T.Response>, Error> {
//        .publisher(for: .create(path: request.path,
//                                queryItems: request.queryItems,
//                                headers: headers))
//    }
}
