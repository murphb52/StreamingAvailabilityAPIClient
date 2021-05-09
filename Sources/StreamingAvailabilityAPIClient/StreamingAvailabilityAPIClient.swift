//
//  StreamingAvailabilityAPIClient.swift
//
//
//  Created by Brian Murphy on 11/04/2021.
//

import Foundation
import Combine

public protocol StreamingAvailabilityAPI {
    func basicSearch(
        _ parameters: BasicSearch.Parameters
    ) -> AnyPublisher<BasicSearch.Response, Error>
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

    public func basicSearch(
        _ parameters: BasicSearch.Parameters
    ) -> AnyPublisher<BasicSearch.Response, Error> {
        .publisher(for: .create(path: EndpointPaths.basicSearch.path,
                                queryItems: parameters.toQueryItems(),
                                headers: headers))
    }
}
